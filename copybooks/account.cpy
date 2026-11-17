        01 ACCOUNT-RECORD.
            05 ACC-NUMBER       PIC 9(10).
            05 ACC-CUSTOMER-ID  PIC 9(08).
            05 ACC-TYPE         PIC X(02).
                88 ACC-TYPE-SAVINGS        VALUE 'SV'.
                88 ACC-TYPE-CHECKING       VALUE 'CK'.
                88 ACC-TYPE-BUSINESS       VALUE 'BS'.
                88 ACC-TYPE-STUDENT        VALUE 'ST'.
                88 ACC-TYPE-JOINT          VALUE 'JT'.
            05 ACC-CURRENCY     PIC X(03).
            05 ACC-OPEN-DATE    PIC X(10).
            05 ACC-BALANCE      PIC S9(11)V99 COMP-3.
            05 ACC-STATUS       PIC X(02).
                88 ACC-STATUS-ACTIVE       VALUE 'AC'.
                88 ACC-STATUS-INACTIVE     VALUE 'IN'. 
                88 ACC-STATUS-DORMANT      VALUE 'DR'.
                88 ACC-STATUS-CLOSED       VALUE 'CL'.
                88 ACC-STATUS-SUSPENDED    VALUE 'SU'.
                88 ACC-STATUS-PENDING      VALUE 'PE'.
                88 ACC-STATUS-OVERDRAWN    VALUE 'OD'.
                88 ACC-STATUS-FROZEN       VALUE 'FR'.
                88 ACC-STATUS-RESTRICTED   VALUE 'RS'.
                88 ACC-STATUS-VERIFIED     VALUE 'VF'.
                88 ACC-STATUS-UNVERIFIED   VALUE 'UF'.

