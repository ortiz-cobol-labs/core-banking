# core-banking

A foundational banking engine implementation in **COBOL**, built within the **[ortiz-cobol-labs](https://github.com/ortiz-cobol-labs)** organization.

This repository simulates a core banking system handling real-time transactional domain rules and critical end-of-day batch processing workflows (e.g., interest accrual, ledger reconciliation, and cash closing).

---

## 🎯 Core Banking Capabilities & Modules

### 💳 Transactional & Online Operations
- **Account Management (`account-creation`):** Account provisioning, status control, and ledger binding.
- **Deposit (`deposit`):** Funds credit processing with transactional ledger entries.
- **Withdrawal (`withdrawal`):** Funds debit validation, balance check, and transaction record logging.
- **Transfer (`transfer`):** Account-to-account funds transfer enforcing strict atomicity.
- **Statement Generation (`statement`):** Historical statement generation from movement ledgers.
- **Loans & Credit (`loans`):** Loan contract initialization, installment calculation, and principal tracking.
- **Movements Ledger (`movements`):** Comprehensive audit trail logging for all financial entries.

### ⚙️ Batch Processing & End-of-Day (EOD) Jobs
- **Interest & Charges Calculation (`interest-job`):** Daily interest accrual and fee calculation.
- **Cash Closing (`cash-closing-job`):** Daily teller balance verification and register closure.
- **General Ledger Reconciliation (`reconciliation-job`):** Balancing debits, credits, and systemic accounts.
- **Day-End Closing (`eod-closing-job`):** Ledger roll-forward, account state snapshotting, and batch sequence completion.

---

## 🏗️ Repository Architecture

```text
.
├── src/          # COBOL source files (.cbl) for online & batch modules
├── copybooks/    # Shared record definitions (Account, Transaction, Ledger structs)
├── batch/        # Orchestration scripts for EOD pipelines and job execution
├── data/         # Sample datasets, master files, and movement ledgers (.dat)
├── docs/         # Business domain specifications and financial logic
└── Makefile      # Unified build, test, and execution orchestration

```

---

## 🚀 Getting Started

### Prerequisites

* **GNUCobol** (`cobc`) for COBOL compilation.
* **Make** for workflow automation.

```bash
# Ubuntu / Debian
sudo apt update
sudo apt install open-cobol build-essential

```

### Build & Run

1. **Clone the repository:**
```bash
git clone [https://github.com/ortiz-cobol-labs/core-banking.git](https://github.com/ortiz-cobol-labs/core-banking.git)
cd core-banking

```


2. **Compile all modules and copybooks:**
```bash
make build

```


3. **Run online transactions simulation:**
```bash
make run-online

```


4. **Execute End-of-Day (EOD) batch pipeline:**
```bash
make run-batch

```


5. **Clean build artifacts:**
```bash
make clean

```



---

## 👨‍💻 Maintainer

**Ortiz David**

*Senior Software Engineer & Systems Architect*

[GitHub Profile](https://www.google.com/search?q=https://github.com/ortizdavid) • [Portfolio](https://www.google.com/search?q=https://ortizdavid.github.io)
