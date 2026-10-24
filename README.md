# LegalMetriCheck 🛡️
### Intelligent Packaged Commodity Compliance System
*Software System to check compliance of Packaged Commodities under Legal Metrology (Packaged Commodities) Rules, 2011 by scanning products, images and labels.*

---

## ⚡ Quick Start (How to Run Anytime)

### Method 1: Desktop 1-Click Launcher (Easiest)
Just double-click the file on your Windows Desktop:
📁 **`Start-LegalMetriCheck.bat`**  
*(It starts the application server and opens http://localhost:3000 in your browser automatically!)*

---

### Method 2: From Terminal (PowerShell / Command Prompt)
```powershell
cd legalmetricheck
npm run dev
```
Then open your browser to **http://localhost:3000**.

---

## 🔑 Login Credentials

| Role | Email | Password | Quick Access |
|---|---|---|---|
| **Senior Inspector** | `officer@legalmetri.demo` | `Demo@123` | **1-Click "👮 Inspector Demo" button** |
| **Compliance Auditor** | `auditor@legalmetri.demo` | `Demo@123` | **1-Click "📊 Auditor Demo" button** |

---

## ⚖️ Implemented Legal Metrology Rules (12 Clauses)

| Rule ID | Rule Name | Act / Clause Reference | Severity | Description |
|---|---|---|---|---|
| **LM-001** | MRP Declaration | Rule 6(1)(d) | **HIGH** | Maximum Retail Price declared on package |
| **LM-002** | Net Quantity Declaration | Rule 6(1)(b) | **HIGH** | Net quantity in metric weight, volume, or count |
| **LM-003** | Manufacturer / Packer Name | Rule 6(1)(a) | **HIGH** | Identity of manufacturer, packer, or importer |
| **LM-004** | Manufacturer / Packer Address | Rule 6(1)(a) | **HIGH** | Complete registered or factory address |
| **LM-005** | Date of Manufacture / Pre-Packing | Rule 6(1)(e) | **HIGH** | Month and Year of manufacture or packing |
| **LM-006** | Consumer Care Helpline & Grievance | Rule 6(2) | **MEDIUM** | Helpline number, email, or contact address |
| **LM-007** | MRP Currency Format Validation | Guidelines | **MEDIUM** | Currency symbols (`₹` or `Rs.`) with valid format |
| **LM-008** | Net Quantity Metric Unit Validation | Guidelines | **MEDIUM** | Standard metric units (`g, kg, ml, L, units`) |
| **LM-009** | Unit Sale Price (USP) Declaration | Rule 6(1)(da) | **HIGH** | Mandatory USP per g/ml/kg/L *(2021/2022 Amendment)* |
| **LM-010** | Country of Origin Declaration | Rule 6(1)(aa) | **HIGH** | Mandatory declaration of country of origin |
| **LM-011** | Best Before / Expiry Period | Rule 6(1)(f) | **MEDIUM** | Expiry or best before date for consumables |
| **LM-012** | Tax Inclusion Clause on MRP | Rule 6(3) | **LOW** | MRP explicitly declares "inclusive of all taxes" |

---

## 📁 Key Routes & Pages

- **`/`**: Government portal landing page with compliance overview & statistics.
- **`/login`**: 1-click authentication for Inspectors and Auditors.
- **`/components`**: **Tailgrids React UI Component Library & Interactive Playground** — Complete documentation, live prop customizer, generated JSX/TSX copy, and dedicated showcases for Button, Card, Input, Modal, Table, and Admin Dashboard.
- **`/dashboard`**: Real-time compliance health score (67%), KPI cards, monthly trends.
- **`/dashboard/inspect`**: Image upload, OCR extraction, interactive review, and live rule evaluation with 4 preset demonstration packages.
- **`/dashboard/inspection/[id]`**: Detailed inspection notice breakdown with PDF download and print notice options.
- **`/dashboard/history`**: Searchable and filterable audit history table.
- **`/dashboard/tee`**: **Trusted Execution Environment (TEE) Security & Attestation Center** — Real-time enclave diagnostics, MRENCLAVE measurement fingerprint, Ed25519 signing key, and interactive cryptographic verifier.
- **`/dashboard/rules`**: Full Legal Metrology clauses directory.
- **`/dashboard/reports`**: Recharts visual analytics, distribution charts, and CSV export.
- **`/dashboard/settings`**: Profile settings, notification preferences, and advisory disclaimers.

---

## 🛡️ Trusted Execution Environment (TEE) & Confidential Computing
LegalMetriCheck protects the integrity of all regulatory compliance audits by executing evaluations inside an isolated **TEE Hardware Enclave** (supporting **Intel SGX**, **AWS Nitro Enclaves**, **AMD SEV-SNP**, and **Local Emulated Mode**):
- **Confidential Memory**: Packaging artwork and proprietary declarations are decrypted exclusively inside hardware-shielded memory.
- **Code Measurement (MRENCLAVE)**: Guarantees the statutory evaluation code cannot be modified, hooked, or forged.
- **Remote Attestation & Ed25519 Signatures**: Every Form VI Statutory Notice is cryptographically signed and independently verifiable via `/api/tee/verify` or the interactive dashboard verifier.
- **Full Guide**: See [`TEE.md`](file:///c:/Users/dell/.gemini/antigravity-ide/scratch/legalmetricheck/TEE.md) for architecture, APIs, and production deployment scripts.

---

## 🎨 Tailgrids-Inspired React UI Component Library (`/components`)

Includes 40+ reusable, accessible, typed components:
- **Basic Components**: `Button`, `ButtonGroup`, `Badge`, `Avatar`, `AvatarGroup`, `Card`, `Alert`, `Separator`, `Tooltip`, `Spinner`, `Skeleton`
- **Form Components**: `Input`, `SearchInput`, `NumberInput`, `Textarea`, `Select`, `Checkbox`, `Radio`, `RadioGroup`, `Switch`, `DatePicker`, `FormField`, `Label`
- **Layout Components**: `Navbar`, `Sidebar`, `Header`, `Footer`, `Container`, `Grid`, `Stack`, `Breadcrumb`, `Tabs`, `Accordion`
- **Advanced Components**: `Modal`, `Drawer`, `DropdownMenu`, `Popover`, `Toast`, `Pagination`, `DataTable`, `ProgressBar`, `Calendar`, `Carousel`, `CommandMenu`
- **Interactive Playground**: Real-time property tweaking (variant, size, color, loading, disabled, full-width, text), live canvas preview, light/dark canvas toggling, and 1-click JSX code copy.
- **Showcase Pages**: Dedicated full views for Button, Card, Input, Modal, Table, and complete Admin Dashboard.

---

## 🚀 Production Deployment

LegalMetriCheck is production-ready and fully containerized with Next.js 16 standalone output:

### Option A: Docker Compose (Full Stack with MongoDB)
```bash
docker compose up -d --build
```

### Option B: Local Production Server
```bash
npm run build
npm run start
```
*Or double-click `start-production.bat` on Windows.*

### Option C: Cloud & Serverless (Vercel, Cloud Run, AWS)
- **Vercel**: Import the repository, set `MONGODB_URI` and `SESSION_SECRET` in settings, and click Deploy.
- **Google Cloud Run / AWS ECS**: Build with the provided multi-stage `Dockerfile`.
- **Full Guide**: See [`DEPLOYMENT.md`](file:///c:/Users/dell/.gemini/antigravity-ide/scratch/legalmetricheck/DEPLOYMENT.md) for detailed instructions for all hosting platforms.

---

## 🛑 How to Stop the Application
When you are done:
In the black terminal window, press `Ctrl + C` and type `Y`, or simply close the terminal window.
