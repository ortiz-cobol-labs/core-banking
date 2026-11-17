        01 CUSTOMER-RECORD.
            05 CUS-ID          PIC 9(8).
            05 CUS-TYPE        PIC X(01).
                88 CUS-TYPE-INDIVIDUAL  VALUE 'P'.
                88 CUS-TYPE-CORPORATE   VALUE 'E'.
                88 CUS-TYPE-GOVERNMENT  VALUE 'G'.
                88 CUS-TYPE-FINANCIAL   VALUE 'F'.
                88 CUS-TYPE-NONPROFIT   VALUE 'N'.
            05 CUS-TAX-ID      PIC X(14).
            05 CUS-NAME        PIC X(45).
            05 CUS-BIRTH-DATE  PIC X(10).
            05 CUS-PHONE       PIC X(15).
            05 CUS-STATUS      PIC X(01).
                88 CUS-STATUS-ACTIVE    VALUE 'A'.
                88 CUS-STATUS-INACTIVE  VALUE 'I'.
                88 CUS-STATUS-BLOCKED   VALUE 'B'.
