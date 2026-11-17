        IDENTIFICATION DIVISION.
        PROGRAM-ID. COREBANK.
        AUTHOR. ORTIZ DAVID.
        DATE-WRITTEN. 2026.

        ENVIRONMENT DIVISION.
        INPUT-OUTPUT SECTION.
        FILE-CONTROL.
            SELECT CUSTOMER-FILE ASSIGN TO "data/customer.dat"
                ORGANIZATION IS INDEXED
                ACCESS MODE IS DYNAMIC
                RECORD KEY IS CUS-ID
                FILE STATUS IS WS-CUS-STATUS.

           SELECT ACCOUNT-FILE ASSIGN TO "data/account.dat"
               ORGANIZATION IS INDEXED
               ACCESS MODE IS DYNAMIC
               RECORD KEY IS ACC-NUMBER
               FILE STATUS IS WS-ACC-STATUS.

           SELECT TRANSACTION-FILE ASSIGN TO "data/transaction.dat"
               ORGANIZATION IS SEQUENTIAL
               ACCESS MODE IS SEQUENTIAL
               FILE STATUS IS WS-TRX-STATUS.

        DATA DIVISION.
        FILE SECTION.
        FD CUSTOMER-FILE.
        COPY "customer.cpy".

        FD ACCOUNT-FILE.
        COPY "account.cpy".

        FD TRANSACTION-FILE.
        COPY "transaction.cpy".


        WORKING-STORAGE SECTION.
        01 WS-FILE-STATUS.
            05 WS-CUS-STATUS     PIC XX.
            05 WS-ACC-STATUS     PIC XX.
            05 WS-TRX-STATUS     PIC XX.
       
        01 WS-CHOICE             PIC X(2).
            88 WS-CHOICE-CREATE-ACC  VALUE '1'.
            88 WS-CHOICE-EXIT        VALUE '9', '99'. 

       
        PROCEDURE DIVISION.
        MAIN-PROCEDURE.
            PERFORM 000-INITIALIZE-SYSTEM
            PERFORM 100-MAIN-LOOP UNTIL WS-CHOICE-EXIT
            PERFORM 900-SHUTDOWN-SYSTEM
            STOP RUN.

        000-INITIALIZE-SYSTEM.
            OPEN I-O CUSTOMER-FILE
            OPEN I-O ACCOUNT-FILE
            OPEN EXTEND TRANSACTION-FILE

            IF WS-ACC-STATUS NOT = "00" AND WS-ACC-STATUS NOT = "35"
                DISPLAY "ERROR: Failed to open ACCOUNT-FILE. Status: "
                    WS-ACC-STATUS
                STOP RUN
            END-IF
            
            DISPLAY "CORE-BANKING ENGINE v1.0 Initialized."
            .

        100-MAIN-LOOP.
            DISPLAY " "
            DISPLAY "--- MAIN MENU ---"
            DISPLAY "1. Create New Account"
            DISPLAY "9. EXIT"
            DISPLAY "Option: " WITH NO ADVANCING
            ACCEPT WS-CHOICE

            IF WS-CHOICE-CREATE-ACC 
               PERFORM 200-CREATE-ACCOUNT
            ELSE IF WS-CHOICE-EXIT
               DISPLAY "Stopping System..."
            ELSE
               DISPLAY "Invalid option. Try again."
            END-IF
            .

        200-CREATE-ACCOUNT.
            DISPLAY "--- ACCOUNT CREATION ---"
            DISPLAY "Account number(10 digits): " WITH NO ADVANCING
            ACCEPT ACC-NUMBER
            DISPLAY "Customer ID(8 digits): " WITH NO ADVANCING
            ACCEPT ACC-CUSTOMER-ID

            MOVE 'CK'           TO ACC-TYPE
            MOVE 'AOA'          TO ACC-CURRENCY
            MOVE '2026-11-17'   TO ACC-OPEN-DATE
            MOVE 0.0            TO ACC-BALANCE
            MOVE 'AC'           TO ACC-STATUS

            WRITE ACCOUNT-RECORD
                INVALID KEY
                    DISPLAY "ERROR: Account already exists. Status"
                        WS-ACC-STATUS
                NOT INVALID KEY
                    DISPLAY "SUCCESS: Account created with audit!"
            END-WRITE
            .

        900-SHUTDOWN-SYSTEM.
            CLOSE CUSTOMER-FILE
            CLOSE ACCOUNT-FILE
            CLOSE TRANSACTION-FILE

            DISPLAY "CORE-BANKING ENGINE: Secure shutdown"
            .
            
