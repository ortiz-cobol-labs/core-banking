        01 TRANSACTION-RECORD.
            05 TRX-ID                 PIC 9(12).
            05 TRX-ACC-NUMBER         PIC 9(10).
            05 TRX-TARGET-ACCOUNT     PIC 9(10).
            05 TRX-TYPE               PIC x(01).
                88 TRX-TYPE-DEPOSIT       VALUE 'D'.
                88 TRX-TYPE-WITHDRAW      VALUE 'W'.
                88 TRX-TYPE-TRANSFER      VALUE 'T'.
            05 TRX-AMOUNT             PIC S9(11)V99 COMP-3.
            05 TRX-BALANCE-AFTER      PIC S9(11)V99 COMP-3.
            05 TRX-DATE               PIC X(10).
            05 TRX-TIME               PIC X(08).
