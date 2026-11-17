        01 ACCOUNT-RECORD.
            05 ACC-NUMBER       PIC 9(10).
            05 ACC-CUSTOMER-ID  PIC 9(08).
            05 ACC-TYPE         PIC X(01).
                88 ACC-TYPE-CHECKING   VALUE 'C'.
                88 ACC-TYPE-SAVINGS    VALUE 'S'.
                88 ACC-TYPE-TERM       VALUE 'T'.
            05 ACC-CURRENCY     PIC X(03).
            05 ACC-OPEN-DATE    PIC X(10).
            05 ACC-BALANCE      PIC S9(11)V99 COMP-3.
            05 ACC-STATUS       PIC X(01).
                88 ACC-STATUS-ACTIVE   VALUE 'A'.
                88 ACC-STATUS-BLOCKED  VALUE 'B'.
                88 ACC-STATUS-CLOSE    VALUE 'C'.

