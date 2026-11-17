        01 TRANSACTION-RECORD.
            05 TRX-ID                 PIC 9(12).
            05 TRX-ACC-NUMBER         PIC 9(10).
            05 TRX-TARGET-ACCOUNT     PIC 9(10).
            05 TRX-TYPE               PIC x(02).
                88 TRX-TYPE-DEPOSIT       VALUE 'DP'.
                88 TRX-TYPE-WITHDRAW      VALUE 'WD'.
                88 TRX-TYPE-TRANSFER      VALUE 'TR'.
                88 TRX-TYPE-PAYMENTS      VALUE 'PY'.
                88 TRX-TYPE-PURCHASE      VALUE 'PR'.
                88 TRX-TYPE-EXPENSE       VALUE 'EX'.
                88 TRX-TYPE-LOAN          VALUE 'LN'.
                88 TRX-TYPE-INTEREST      VALUE 'IN'.
            05 TRX-AMOUNT             PIC S9(11)V99 COMP-3.
            05 TRX-BALANCE-BEFORE     PIC S9(11)V99 COMP-3.
            05 TRX-BALANCE-AFTER      PIC S9(11)V99 COMP-3.
            05 TRX-CURRENCY           PIC X(03).
            05 TRX-DESCRIPTION        PIC X(50).
            05 TRX-STATUS             PIC X(02).
                88 TRX-STATUS-PENDING     VALUE 'PE'.
                88 TRX-STATUS-COMPLETED   VALUE 'CP'.
                88 TRX-STATUS-APROVED     VALUE 'AP'.
                88 TRX-STATUS-FAILED      VALUE 'FL'.
                88 TRX-PENDING-APROVAL    VALUE 'PA'.
                88 TRX-STATUS-ON-HOLD     VALUE 'OH'.
                88 TRX-STATUS-EXPIRED     VALUE 'EX'.
                88 TRX-STATUS-CANCELLED   VALUE 'CN'.
                88 TRX-STATUS-REFUNDED    VALUE 'RF'.
            05 TRX-DATE               PIC X(10).
            05 TRX-TIME               PIC X(08).
