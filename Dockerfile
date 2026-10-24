# ============================================================
# LegalMetriCheck — Production Multi-Stage Dockerfile
# Optimized for Next.js 16 Standalone Output & TEE Attestation
# ============================================================

# --- Stage 1: Dependency Installation ---
FROM node:20-alpine AS deps
RUN apk add --no-cache libc6-compat
WORKDIR /app

# Install dependencies based on preferred package manager
COPY package.json package-lock.json* ./
RUN npm ci

# --- Stage 2: Production Build ---
FROM node:20-alpine AS builder
WORKDIR /app
COPY --from=deps /app/node_modules ./node_modules
COPY . .

# Disable Next.js telemetry during build
ENV NEXT_TELEMETRY_DISABLED=1
ENV NODE_ENV=production
ENV NEXT_STANDALONE=true

# Compile production bundle with standalone target
RUN npm run build

# --- Stage 3: Production Runner ---
FROM node:20-alpine AS runner
WORKDIR /app

ENV NODE_ENV=production
ENV NEXT_TELEMETRY_DISABLED=1
ENV PORT=3000
ENV HOSTNAME="0.0.0.0"

# Create unprivileged system group and user
RUN addgroup --system --gid 1001 nodejs && \
    adduser --system --uid 1001 nextjs

# Copy static assets and standalone server output
COPY --from=builder /app/public ./public

# Set correct permissions for Next.js cache and standalone output
RUN mkdir .next && chown nextjs:nodejs .next

COPY --from=builder --chown=nextjs:nodejs /app/.next/standalone ./
COPY --from=builder --chown=nextjs:nodejs /app/.next/static ./.next/static

USER nextjs

EXPOSE 3000

# Run lightweight standalone HTTP server
CMD ["node", "server.js"]
