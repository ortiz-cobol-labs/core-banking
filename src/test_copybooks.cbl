       IDENTIFICATION DIVISION.
       PROGRAM-ID. TEST-COPYBOOKS.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.

       COPY "account.cpy".
       COPY "customer.cpy".
       COPY "transaction.cpy".

       PROCEDURE DIVISION.
           DISPLAY "[OK] Copybook account.cpy loaded successfully."
           STOP RUN.
           