:C: BATCH AND SPOOL INTRO


                        BATCH AND SPOOL REQUESTS
                        ------------------------

INTRODUCTION
------------

        (THESE PROCEDURES ARE SIMILAR ON THE PDP10'S).  THE PUR-
POSE OF THIS DOCUMENT IS:  FIRST, EXPLAIN WHAT OPERATIONS CAN DO
WITH A BATCH REQUEST; SECOND, DEFINE VARIOUS PROCEDURES AND TERMS
USED BY OPERATIONS WHEN PROCESSING A REQUEST; THIRD, SHOW GUIDE-
LINES WHICH IF USED WILL EXPEDITE A REQUEST; AND FOURTH, ANSWER
SOME OF THE QUESTIONS MOST OFTEN ASKED ABOUT OPERATIONS' PROCE-
DURES.

        A PERIPHERAL PROCESSING REQUEST (PPR) IS A BATCH REQUEST
GENERATED BY A TYMSHARE PROGRAM ON THE 940 WHICH ALLOWS A USER
TO REQUEST OPERATIONS TO PERFORM A JOB INVOLVING THE USE OF
PERIPHERALS (MAG TAPE, LINE PRINTER, ETC).  THE TERM 'BATCH
REQUEST' AND 'PPR' ARE INTERCHANGEABLE.  PPRS WHICH ARE ENTERED
ON ALL HOST COMPUTERS ARE CLEARED BY A LEAD OPERATOR OR BATCH
CONTROLLER.  SOME OF THE FUNCTIONS OF A LEAD OPERATOR OR BATCH
CONTROLLER ARE TO RECORD IN A LOG EACH BATCH REQUEST FROM EVERY
SYSTEM AS IT IS CLEARED AND TO INTERPERT THE REQUEST, ASSIGN A
PRIORITY TO IT, AND FINALLY GIVE IT TO THE RESPECTIVE SYSTEM
OPERATOR TO PERFORM.  AS FAR AS OPERATIONS IS CONCERNED, ALL
BATCH REQUESTS ARE 'RUSH' JOBS.  IF A CUSTOMER ACCIDENTIALLY
DELETES A FILE HE NEEDS TO RUN A PROGRAM, AND HE IS ALL SET TO
RUN IT, THEN OBVIOUSLY HE WOULD LIKE THE FILE RESTORED WITHIN A
SHORT A TIME AS POSSIBLE.  THE FOLLOWING PROCEDURES HAVE BEEN
ESTABLISHED AT WCO FOR HANDLING OF BATCH REQUESTS:

        DAY SHIFT
        ---------

        1.  RESTORES 
        2.  DEFERRED RESTORES
        3.  STORES
        4.  LISTINGS

        SWING SHIFT
        -----------

        1.  RESTORES AND LISTINGS (SPOOL JOBS)
        2.  STORES
        3.  DEFERRED RESTORES

        GRAVE SHIFT
        -----------

        1.  CARD JOBS
        2.  LISTINGS
        3.  RESTORES
        4.  DEFERRED RESTORES
        5.  STORES

        WITH THESE PRIORITIES, WE CAN USUALLY PROVIDE RESTORES
WITHIN TWO HOURS ON DAYS AND FOUR HOURS ON THE OTHER TWO SHIFTS
WHILE STILL GIVING ADEQUATE SERVICE ON LISTINGS AND CARDS.

        CUSTOMERS REQUIRING AN OCCASIONAL HIGH PRIORITY SERVICE
WILL STILL BE ABLE TO REQUEST EXPEDITING THROUGH CUSTOMER
SERVICES,

        WITHIN THE CATEGORIES, SERVICE WILL BE:  FIRST IN,
FIRST OUT.

        WHEN BATCH REQUESTS ARE NOT DONE BY THE REQUESTED TIME,
FOR WHATEVER REASON, MAIL SHOULD BE SENT INFORMING THE REQUESTOR
THAT THE REQUEST WAS DELAYED AND WHEN IT WILL BE DONE.  THIS IS
PARTICULARLY ESSENTIAL WHEN THE REQUEST IS DELAYED FOR A DAY IN
THE CASE OF CARD JOBS.  THE CUSTOMER IS FAR HAPPIER LEARNING OF A
DELAY BY MAIL RATHER THAN BY HAVING TO CALL IN.

        ANY REQUEST WHICH AN OPERATOR CANNOT DO BECAUSE IT IS
'AWAITING' SOMETHING IS STILL TO BE 'QA'D' BY THE LEAD OPERATOR/
BATCH CONTROLLER TO VERIFY INABILITY TO COMPLETE THE REQUEST AND
SATISFACTORY NOTIFICATION TO THE USER.  THE LEAD OPERATOR/BATCH
CONTROLLER SHOULD INITIAL THE REQUEST AS 'MAIL QA'D'.  OPERATORS
SHOULD NOT PLACE UN-'QA'D' REQUESTS IN THE 'AWAITING MAIL' FOLDERS.


REQUEST DESCRIPTION
-------------------

        THERE ARE SEVEN JOB TYPES THAT OPERATORS CAN PERFORM VIA
A PPR.

       *1-----PAGES-----PARTS TO LISTING-----LISTING DECOLLATED

       JOB TYPE 2 AND 3:  CARD WORK; READING WITH PIP; PUNCHING
ON 940'S.
       *2-----CARDS TO DISC    *3-----DISC TO CARDS

       TYPE 4: RESTORES; TITO, FAILSA, 1STORE, MAGCON, VARREC,
OR VARIAN.
       *4-----FILES TAPE TO DISC

       TYPE 5: STORES; TITO, 1STORE, MAGCON, VARIAN AND VARREC;
USER MAY NEED TO BUY A TAPE FOR $40.00.
       *5-----FILES DISC TO TAPE-----TAPE CHARGE

       TYPE 6:  MAGNETIC TAPE CONVERSIONS; MAGCON, VARREC AND
VARIAN; CHARGE IS $30.00 PER JOB.
        6-----OTHER CHARGE     *7-----TAPE CONVERSION

       TYPE 7:  EUROPEAN STORES OR RESTORES; THESE CAUSE A CURRENCY
CONVERSION AND OTHER ACCOUNTING DIFFERENCES WITH BCHARGE.
       *8-----EUROPEAN STORE OR RESTORE

(* = JOB TYPES)

                        JOB TYPE 1
                        ----------

        LISTINGS.  SPOOL SHOULD BE USED FOR LISTINGS INSTEAD OF
BATCH REQUESTS; IF A BATCH REQUEST IS USED USE THIS JOB TYPE TO
ENTER THE JOB INTO ACCOUNTING.

                        JOB TYPES 2 AND 3
                        -----------------

        THESE JOB TYPES ARE COMPLETELY DOCUMENTED IN ANOTHER
SECTION OF THIS MANUAL.

                        JOB TYPE 4
                        ----------

        THIS TYPE FALLS INTO TWO CATEGORIES; RESTORING A FILE(S)
FROM A CUSTOMER TAPE AND RECOVERING A FILE(S) FROM AN ALL FILES
OR BACKUP TAPE.  WHEN A REQUEST IS MADE TO RESTORE A FILE FROM A
CUSTOMER TAPE THE USER SHOULD BE SURE TO INCLUDE THE TRP NUMBER AND
THE TID NUMBER ON THE REQUEST.  THIS WAY OPERATIONS KNOWS 
EXACTLY WHICH TAPE, UNLESS THE USER SPECIFIES DIFFERENTLY, THE 
FILE(S) WILL BE RESTORED TO THE DIRECTORY OF THE USER WHO ENTERED
THE PPR.  IF THE FILE IS STORED ON THE CUSTOMER'S TAPE MORE THAN
ONCE, OPERATIONS WILL ALWAYS GET THE LATEST VERSION OF THE FILE,
UNLESS THE PPR SPECIFIES DIFFERENTLY.

        RECOVERING A FILE FROM A BACKUP OR ALL FILES TAPE IS A
SLIGHTLY DIFFERENT MATTER THAN JUST A SIMPLE RESTORE.  THE USER
SHOULD BE ABLE TO SAY AT LEAST APPROXIMATELY WHEN THE FILE WAS
LAST UPDATED.  SOME USERS KEEP TRACK AND THEREFORE CAN SAY THE
EXACT DATE OF AN UPDATE FOR A PARTICULAR FILE.  AT ANY RATE, THERE
ARE MANY BACKUP TAPES AND ALL FILES TAPES TO LOOK THROUGH, AND IF
THE USER INCLUDES THE UPDATE/CREATION DATE OF A FILE, IT CAN BE
RECOVERED MUCH MORE QUICKLY THAN LOOKING THROUGH TWO WEEKS OF BACKUP
TAPES.  IF A FILE WHICH A CUSTOMER WANTS RECOVERED HAS NOT BEEN UP-
DATED IN A LONG TIME, (I. E. AN IML DESCRIPTION FILE), THEN THE USER
SHOULD SAY SO ON THE PPR AND TELL THE OPERATOR THAT THE FILE CAN
BE RECOVERED FROM ANY ALL FILES TAPE.  RESTORES AND RECOVERIES
ARE DONE AS SOON AS POSSIBLE.  ALMOST ALL SUCH JOBS SHOULD
BE DONE WITHIN TWO TO FOUR HOURS.  THE LENGTH OF TIME IS DIRECTLY
RELATED TO SYSTEM LOAD, AND THE NUMBER OF REQUESTS PENDING FOR
THAT PARTICULAR SYSTEM.  USERS SHOULD ENTER REQUESTS SEVERAL HOURS
BEFORE THEY ACTUALLY NEED THE FILE(S).  STORE JOBS MAY TAKE UP 
TO EIGHT HOURS TO COMPLETE.

                        JOB TYPE 5
                        -----------

        STORING ON TAPE IS EASILY DONE AS LONG AS THE TRP NUMBER
AND TID NUMBER FOR THE PROPER TAPE IS SUBMITTED.  IT HELPS TOO
IF THE FILE DIRECTORY WHICH CONTAINS THE FILE IS GIVEN.
IF WHILE STORING FILES ON TAPE THE CUSTOMER'S TAPE BECOMES FULL,
THEN CONTINUE WITH A NEW TAPE, ASSIGN A TRP AND TID NUMBER TO IT
AND ADVISE THE CUSTOMER THAT A NEW TAPE WAS ASSIGNED.  THE CUSTOMER
CAN OF COURSE SUPPLY HIS OWN TAPE IF HE SO DESIRES.  THE TAPE
LIBRARY SYSTEM ALLOWS A CUSTOMER THE OPTION TO PURCHASE A TAPE
FOR HIS OWN USE AND HAVE OPERATIONS TAKE CARE OF THE TAPE. A
TAPE CAN BE REQUESTED BY A USER JUST BY ENTERING A BATCH REQUEST
SAYING THAT HE WOULD LIKE A TAPE SET UP FOR HIS USE.  OPERA-
TIONS WILL THEN ASSIGN A TAPE, PERFORM THE WORK ON THE 
REQUEST AND INFORM THE USER BY SYSTEM MAIL OF HIS TRP AND TID
NUMBER.  A FEATURE WORTH NOTING HERE IS THAT A TAPE DIRECTORY
OF ANY TAPE CAN BE MADE TO A FILE AND PLACED IN A DIRECTORY
SO THE USER CAN SEE WHAT IS ON A TAPE OR TAPES WHICH BELONG 
TO HIM.  FILES ARE ALWAYS STORED TWICE ON TAPE AS AN ADDED
SECURITY MEASURE.

                        JOB TYPE 6
                        ----------

        SOME TIMES USERS WILL ENTER A BATCH REQUEST TO CHECK ON
THE STATUS OF A JOB, OR TO ASK SOME OTHER QUESTION.  THESE ARE
NOT PROPER JOB TYPES AND THEREFORE THE BATCH PROGRAM SHOULD
NOT BE USED FOR SUCH PURPOSES.  IF A USER USES A BATCH REQUEST
IN THIS WAY, THE REQUEST SHOULD BE VOIDED AND THE USER SHOULD BE 
ENCOURAGED TO SEND MAIL TO OPER.

        OTHER DO'S AND DONT'S FOR JOB TYPE 6.

        DO NOT CHARGE FOR A REQUEST THAT IS REALY MAIL; I. E., A
REQUEST THAT DOES NOT ASK YOU TO ACTUALLY TRANSFER DATA.  SIMPLY
VOID SUCH A REQUEST.

        IF A CUSTOMER ASKS FOR A REQUEST TO BE VOIDED AND IT HAS
NOT YET BEEN DONE, DO NOT CHARGE FOR THE REQUEST.  VOID IT.

        IF A CUSTOMER ASKS THAT AN ALREADY COMPLETED REQUEST BE
VOIDED, HE IS TO BE CHARGED REGARDLESS.  SEND HIM MAIL THAT YOU
HAVE ALREADY COMPLETED THE REQUEST AND CANNOT VOID IT.

        IGNORE ALL STATEMENTS IN BATCH REQUESTS THAT SAY "DO NOT
CHARGE".

        REQUESTS ENTERED BY IN-HOUSE PERSONNEL THAT INVOLVE CUSTOMER
FILES ARE TO BE CHARGED TO THE IN-HOUSE NAME, NOT THE CUSTOMER.  
HOWEVER, A COPY OF THE REQUEST IS TO BE MADE AND GIVEN TO THE SHIFT
MANAGER.  DO NOT VOID THE REQUEST; SIMPLY CHARGE IT TO THE IN-
HOUSE USER.

                        JOB TYPE 7
                        ----------

        TAPE CONVERSIONS ARE USUALLY THE MOST DIFFICULT TO
PERFORM OF ALL JOB TYPES.  IN ORDER TO CONVERT A TAPE MUCH
INFORMATION IS NEEDED SO IT CAN BE DONE THE FIRST TIME.  FRE-
QUENTLY, ERRONEOUS INFORMATION IS GIVEN, OR NOT ENOUGH INFORMATION
IS GIVEN TO CONVERT A TAPE AND WHEN THIS OCCURS THE PPR IS SENT
TO CUSTOMER SERVICES WHO MUST CALL THE USER TO FIND OUT THE NECES-
SARY INFORMATION.  THIS RESULTS IN A DELAY IN PROCESSING.  THE
INFORMATION NEEDED TO EASILY AND CORRECTLY CONVERT A TAPE IS:

        DENSITY (6250,1600,800,556,200) (6250/1600 NOT AVAILA-
                                         BLE ON THE 940)
        TRACKS (7 OR 9)                 (9 TRACK NOT AVAILA-
                                         BLE ON THE 940)
        PARITY (ODD OR EVEN)
        CODE (BCD,ASCII,ETC)
        NUMBER OF CHARACTERS PER RECORD
        BLOCKING FACTOR
        HEADER INFORMATION
        NUMBER OF TAPE FILES

(SEE MAGCON ((TAPE CONV)) PART OF THIS MANUAL FOR FURTHER
 INFORMATION ON TAPE CONVERSIONS)

        ALL TAPES SENT TO WCO BY CUSTOMERS TO BE READ INTO THE
COMPUTERS SHOULD BE HELD FOR ONE WEEK TO PERMIT US TO REDO THE
JOB SHOULD THE CUSTOMER DISCOVER A PROBLEM IN THAT TIME.

        TAPES SHOULD NOT BE RETURNED TO THE CUSTOMER UNTIL THE
WEEK HAS ELAPSED.  THEY SHOULD BE HELD IN THE MAIL ROOM MARKED
'DELAY BEFORE MAILING'.  A COPY OF THE BATCH REQUEST SHOULD
INDICATE MAILING DATE.



                        JOB TYPE 8 - FOREIGN BATCH
                        --------------------------

        THERE ARE CURRENTLY FOREIGN DISTRICTS IN THE UNITED KINGDOM
(ENGLAND), FRANCE, BELGUIM AND GERMANY. THE 1BCHARGE SYSTEM
WILL NOT ACCEPT ANY JOB TYPE INPUT FOR ANY OF THESE DISTRICTS EXCEPT
JOB TYPE 8. IF ANOTHER JOB TYPE IS ENTERED, THE PROGRAM
WILL GIVE AN ERROR RETURN WITH A PROMPT TO USE JOB TYPE 8. 

        JOBS OF THIS TYPE ARE ACCOUNTED FOR IN TERMS OF NUMBER
OF CHARACTERS RATHER THAN NUMBER OF FILES PROCESSED. THUS FOR
STORES AND RESTORES, YOU SHOULD HAVE A CHARACTER TOTAL
FROM THE 'TOTALS' AND 'TYPE TOTALS' COMMANDS. 

        1BCHARGE WILL AUTOMATICALLY SUPPLY THE VARIOUS FOREIGN
RATES PER THOUSAND CHARACTERS.

        ONE NOTEWORHTY ITEM: FOR FRENCH BATCH REQUESTS
THE OPERATORS AT PCO TRANSLATE FRENCH REQUESTS INTO ENGLISH WHEN
THEY REENTER THEM. THEREFORE YOU SHOULD ALWAYS SEND COMPLETION
MAIL TO USER FBATCH SO THAT THE MAIL CAN BE TRANSLATED AND CONVEYED
TO THE APPROPRIATE FRENCH USERS.

                        BATCH COMPLETION
                        ----------------

        AFTER A BATCH REQUEST HAS BEEN COMPLETED THE OPERATOR SIGNS
AND DATES THE REQUEST.  NEXT THE BCHARGE PROGRAM SHOULD BE RUN.  
THIS PROGRAM ACCEPTS INPUTS CONCERNING THE WORK THAT WAS JUST COM-
PLETED AND IS INDEXED BY THE PPR (PERIPHERAL PROCESSING REQUEST) NUM-
BER.  THE FILE (*1BATCH)PARCHG.DAT IS SEARCHED FOR THE REQUEST NUMBER
AND, ONCE THE BCHARGE RUN HAS BEEN COMPLETED, THE FINISHED ACCOUNTING
INFORMATION IS OUTPUT TO (*1BATCH)BATONN.MON WHERE NN IS THE SYSTEM
NUMBER AND MON IS THE ABBREVIATED MONTH.

        IF THE REQUEST HAS NOT BEEN ENTERED INTO ACCOUNTING, IT
SHOULD BE 'QA'D' BY THE LEAD OPERATOR/BATCH CONTROLLER AND THE QA SPACE
INITIALED. IT IS THEN FILED IN THE SYSTEM FOLDER FOR 'BCHARGE DUE' REQUESTS.
IF IT HAS BEEN ENTERED INTO ACCOUNTING IT CAN BE FILED IN THE SYSTEM
FOLDER FOR COMPLETED REQUESTS.

        IF POSTAGE OR TRANSPORTATION CHARGES ARE DUE, TWO COPIES
OF THE REQUEST ARE MADE AND CLIPPED TO THE JOB.  THE ORIGINAL
REQUEST AND THE JOB HARDCOPY ARE FILED.  WHEN THE JOB IS MAILED,
A COPY OF THE REQUEST SHOULD BE SENT WITH THE JOB AND THE OTHER
COPY IS MARKED WITH THE CHARGES AND PLACED IN THE APPROPRIATE
FOLDER.

        WHEN THE LEAD OPERATOR/BATCH CONTROLLER, PICKS UP THESE
COPIES, THEY ARE DISTRIBUTED TO THE OPERATOR OF THE PARTICULAR
SYSTEM INVOLVED, SO THAT POSTAGE CAN BE ENTERED USING THE 'POST-
AGE' COMMAND.  THE MINIMUM CHARGE ALLOWED IS $00.13.  AFTER
BCHARGE IS RUN, THE TTY OUTPUTS SHOULD BE ATTACHED TO THE
REQUEST AND RETURNED TO BATCH CONTROL.

        IT IS THE RESPONSIBILITY OF LEAD OPERATORS OR BATCH 
CONTROLLERS, TO ENSURE THAT ALL BATCH REQUESTS ARE PROPERLY
ENTERED INTO ACCOUNTING.

        THE SPOOL PROGRAM PRINTS OUT A HARDCOPY TO THE SUPCHECK TTY,
ALLOWING THE LEAD OPERATOR/BATCH CONTROLLER TO QUEUE REQUESTS BY
PAPER TYPE.  IN THIS WAY, IT SHOULD BE POSSIBLE TO MINIMIZE SET-UP
TIME BY PRINTING ALL REQUESTS OF A CERTAIN PAPER TYPE AT ONE SESSION
USING THE 'TAPE' COMMAND FOR FILES FROM ANOTHER SYSTEM.  THE LEAD
OPERATOR/BATCH CONTROLLER SHOULD PAY CLOSE ATTENTION TO ALL RELEVENT
SPOOL INFORMATION BEFORE PRINTING IS STARTED FOR CASES WHERE SPECIAL
DELIVERY INSTRUCTIONS SHOULD BE USED FOR ASSIGNING PRIORITY (I. E.
AIR MAIL, SPECIAL DELIVERY JOBS MIGHT BE DONE IMMEDIATELY RATHER THAN
HELD FOR OTHER SPOOL REQUESTS OF THE SAME PAPER TYPE).

        THE SPOOL REQUESTS SHOULD BE ANALYZED, LOGGED IN AND THEN
GIVEN TO THE SYSTEM OPERATOR TO BE PRINTED.  AFTER THE PRINTING IS
COMPLETED, A COPY OF THE REQUEST WILL BE PRINTED OUT TO THE OPERATOR'S
TTY.  AT THE END OF THE REQUEST THERE WILL BE A STATEMENT INDICATING
WHETHER OR NOT THE REQUEST SHOULD BE ENTERED INTO ACCOUNTING.

        UPON COMPLETION OF A SPOOL JOB, THE SPOOL REQUEST IS
INITIALED BY THE OPERATOR AND RETURNED TO BATCH CONTROL AREA
WITH THE JOB.

        AFTER IT IS CHECKED FOR ACCURACY, QUALITY OF PRINT, AND
COMPLETENESS, IT WILL BE PLACED IN THE MAIL ROOM ON THE SHELF
DESIGNATED FOR MAILING.

        EXCEPTIONS TO THIS ARE THOSE JOBS THAT NEED IMMEDIATE ATTEN-
TION.  THE LEAD OPERATOR/BATCH CONTROLLER SHOULD PERFORM THE TASK OF
GETTING THE REQUEST READY FOR PICKUP AND DELIVERY; COMPLETING THE
NECESSARY PAPERWORK, AND CALLING THE DELIVERY COMPANY.  THE HARDCOPY
SHOULD THEN BE FILED.

        WHEN THE MAILING OF SPOOL REQUESTS HAS BEEN COMPLETED, A
COPY SHOULD BE PLACED IN THE FOLDER DESIGNATED FOR PICKUP.  THE
OPERATOR SHOULD RUN BCHARGE USING THE COMMAND 'CHARGE' TO ENTER IT
INTO ACCOUNTING, OR THE COMMAND 'POSTAGE' IF THE REQUEST HAS BEEN
ENTERED AND IS AWAITING 'DELIVERY' CHARGES.  THE TTY OUTPUT SHOULD
BE ATTACHED TO THE REQUEST AND RETURNED TO BATCH CONTROL.

         
         
SAMPLE RUN
----------

         SUPCHECK SAMPLES
         ----------------

         THE SUPCHECK PROGRAM CAN BE RUN ON ANY 940.  LOG INTO
         'OPER' AND THEN TYPE:
         
         -(UTIL)SUPCHECK
         
         SUPCHECK - VERSION 14
         
         NAME: DANIELS (CR)
         
         PASSWORD: 
         THANK YOU!
         INPUT BUILDING A, C, OR B (BOTH): A
         
         CURRENT SYSTEMS ARE: 
         1 2 5 7 9 10 11 13 15 18 19 26 27 
         OKAY? Y
         
         CLEARING BUILDING A  05-25-76  03:50




         -(UTIL)SUPCHECK
         
         SUPCHECK - VERSION 14
         
         NAME: DANIELS (CR)
         
         PASSWORD: 
         THANK YOU!
         INPUT BUILDING A, C, OR B (BOTH): A
         
         CURRENT SYSTEMS ARE: 
         1 2 5 7 9 10 11 13 15 18 19 26 27 
         OKAY? N
         
         REMOVE SYSTEM (Y OR N)? Y
         
         ENTER SYSTEM NUMBER (OMIT LETTER): 5
         
         ADD SYSTEM (Y OR N)? Y
         
         ENTER SYSTEM NUMBER (OMIT LETTER): 5
         
         CURRENT SYSTEMS ARE: 
         1 2 5 7 9 10 11 13 15 18 19 26 27 
         OKAY? Y
         
         ARE CHANGES PERMANENT? Y
         
         SUPCHECK UPDATED

         CLEARING BUILDING A  05/25/76  03:51




         -(UTIL)SUPCHECK
         
         SUPCHECK - VERSION 14
         
         NAME: DANIELS (LF)
         
         PASSWORD: 
         THANK YOU!
         INPUT BUILDING A, C, OR B (BOTH): A
         
         CURRENT SYSTEMS ARE: 
         1 2 5 7 9 10 11 13 15 18 19 26 27 
         OKAY? Y
         
         ENTER RESTART INTERVAL (MINUTES): (5 TO 15 MINUTES ONLY)
         
         CLEARING BUILDING A  05/25/76  03:53

         

         /@BAHOLD&C&X/SAMPLE
         -------------------

         THERE ARE TIMES WHEN A PPR IS MISPLACED, OR LOST, AND A
         DUPLICATED COPY IS NEEDED.  TO OBTAIN A DUPLICATE COPY
         OF A PPR, THE OPERATOR MUST LOG INTO 'EDITOR' AND DO
         THE FOLLOWING:

         -EDITOR
         R (OPER)/@BAHOLD (CONTROL V, C, V, X)/
         19674 CHARS
         *F '2805'=
         PRINT?N
         986
         1
         *$=1065
         *1,985D
         *9,$D
         */
         02805
         05/24  13:28
         PRITZBILL
         N
         BILL PRITZ  312/368-4545
         PLEASE COPY THE FILES  @AUG75 AND @OMNIBUS'DIC'  TO
         USERNAME  DISTRICT119 ON C17. THANKS.
         NONE
         *Q
         FILE NOT WRITTEN,OK?Y


         
         BCHARGE SAMPLE
         --------------

         SEE BATCH ACCOUNTING PROGRAM FOR ENTERING A REQUEST 
         INTO BCHARGE.

         SENDING MAIL SAMPLE
         -------------------

         SEE 1LETTER DOCUMENT FOR HOW TO SEND MAIL TO THE USER
         AFTER COMPLETING A REQUEST.

ERROR MESSAGES
--------------

         ANY ERRORS ENCOUNTERED WHILE RUNNING THE BATCH ACCOUNT-
         ING PROGRAM SHOULD BE BROUGHT TO THE ATTENTION OF THE LEAD
         OPERATOR/BATCH CONTROLLEyv?yv?yv?yv?yv?