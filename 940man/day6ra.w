:T: LINE 16, CTR 72:  T H E   T Y M C O M - I X
:T: LINE 18, CTR 72: S H U T D O W N,  AND  B R I N G U P
:T: LINE 20, CTR 72: M A N U A L
:T: LINE 24, CTR 72: 27 OCTOBER 1976
:T: LINE 30, CTR 72: BOB MARTINEZ
:T: LINE 31, CTR 72: WCO TRAINING
:T: LINE 32, CTR 72: 408 446-4654
:C: SHUTDOWN PROCEDURE


                        SHUTDOWN PROCEDURES
                        -------------------
INTRODUCTION
------------

        EACH TYCOM-IX HAS A SCHEDULE SHUTDOWN TIME: THE TIME WHEN
THE SCHEDULED TIMESHARING (CODE 10) FOR THE DAY CEASES.  THIS 
ESTABLISHES THE TIME WHEN THE SYSTEM WILL BE 'SHUT' (NEW LOGINS DIS-
ABLED).  AT SOME TIME AFTER THE SHUTDOWN TIME USERS MUST BE REMOVED
FROM THE SYSTEM SO THAT PART OF THE ACCOUNTING CAN BE RUN.  THEN THE
SYSTEM IS TAKEN DOWN FOR MAINTENANCE, PACKCOPY, ETC.  EVERY TYCOM-IX
MUST BE TAKEN DOWN DAILY.

OPERATION AND SAMPLE OUTPUT
---------------------------

        ONE AND ONE-HALF HOUR BEFORE THE SCHEDULED SHUTDOWN TIME THE
OPERATOR LOGS OUT OF THE USERNAME 'OPER1' AND INTO THE USERNAME
'BACKUP'.  THIS INSURES THAT ALL NEW FILES CREATED UNDER THE USERNAME
'OPER' WILL BE PICKED UP ON THE BACKUP.  UPON LOGGING INTO THE USER-
NAME 'BACKUP' AN INITIALIZED FILE WILL OUTPUT A SHUTDOWN ANNOUNCEMENT
LETTER TO ALL USERS WHO ARE LOGGED INTO THE SYSTEM.

        NEXT THE 'PSP' AND ERROR ENTRIES FOR THE DAY ARE OUTPUT.
IF THERE ARE ANY ERRORS, THEY SHOULD BE ENTERED INTO THE SYSTEM LOG-
BOOK AND BROUGHT TO THE ATTENTION OF YOUR SUPERVISOR.  IF THE SYSTEM
SHOWS ANY DISC, RAD, OR PARITY ERRORS, THE OPERATOR SHOULD TAKE A
'PSP' AGAIN AND DO A '1COUNT'  (NOTE:  THE OPERATOR CAN 'ALTMODE'
AFTER THE 'INFIL' OR 'OUTFIL' ENTRY IN 1COUNT HAS TYPED OUT).
THE TTY OUTPUT SHOULD BE GIVEN A DATE/TIME AND SYSTEM NUMBER SIGNA-
TURE BY USING THE EXEC 'DATE' AND 'SYS' COMMANDS.

        IT IS A GOOD IDEA TO CLEAN THE TAPE DRIVES BEFORE STARTING
THE DAILY BACKUP.  DOING THIS NOW MAY PREVENT TROUBLE LATER.  DON'T
USE A TAPE DRIVE THAT IS ERROR PRONE.

        NOW YOU SHOULD BEGIN THE FIRST RUN OF THE EVENING BACKUP
BY CALLING THE '1STORE' PROGRAM.  YOU SHOULD INITIALIZE THE TAPE AS
A 'NEW' TAPE AND USE THE 'BACKUP' OPTION.  THIS PICKS UP ALL FILES
ON THE ENTIRE DISC CHANGED OR NEWLY CREATED SINCE THE LAST TIME
THE '1STORE' PROGRAM WAS RUN USING THE 'BACKUP' OPTION.

        IF A TAPE STARTS GETTING ERRORS RIGHT AT THE BEGINNING, RE-
CLEAN THE TAPE DRIVES.  IF IT CONTINUES, REPLACE THE TAPE WITH A GOOD
USED ONE OR A NEW TAPE.  THE JOB SHOULD BE REDONE ANYTIME THERE ARE
MORE THAN THREE ERRORS - LESS THAN THIS, THE FILES INVOLVED SHOULD
BE STORED AT THE END OF THE TAPE.  SUMBIT A MAR TO MAINTENANCE ON
THE BAD TAPE DRIVE.

        AT THE EFFECTIVE SHUTDOWN TIME, A 'SHUT' IS PLACED IN THE
SYSTEM ALLOWING NO NEW USERS TO ENTER THE SYSTEM.  AFTER THE SYSTEM
IS SHUT, TYPE 'WHO' TO DETERMINE WHO IS STILL LOGGED ON.
IF THERE ARE CUSTOMERS LOGGED ON (THOSE WITHOUT '+' AFTER THE NAME
FIELD) RUN '1LCHECK' TO SEE IF THESE USERS RECEIVED THE SHUTDOWN
LETTER.  IF THE USER HAS NOT RECEIVED THE LETTER, CALL THE '1OPER'
PROGRAM AND SET THE EMERGENCY MESSAGE SWITCH.  (OPTIONAL: ENTER
'1LETTER' PROGRAM AND ISSUE THE 'AGAIN' COMMAND).  WAIT APPROXIMATELY
5-10 MINUTES AND DO ANOTHER 'WHO'.  (A VARIABLE AMOUNT OF FLEXIBILITY
IS POSSIBLE DEPENDING ON THE WORK TO BE DONE).  IF USERS REFUSE TO
ACKNOWLEDGE THE SHUTDOWN LETTER, IT WILL EVENTUALLY BE NECESSARY TO
'HANG' THEM OFF THE SYSTEM.

        AT THIS TIME, THE BATCH FILE SHOULD BE CLEARED OUT TO MAKE
SURE THAT A REQUEST WILL NOT REMAIN DORMANT OVERNIGHT.  USE '1CLEAR'
PROGRAM FOR THIS.  ANY BATCH REQUESTS RECEIVED SHOULD BE GIVEN TO THE
LEAD OPERATOR OR BATCH CONTROLLER TO LOG IN.

        AFTER DOING THE ABOVE, THE ACCOUNTING FOR THE NIGHT IS STARTED.
THERE ARE THREE PROCEDURES INVOLVED IN THIS:  1STORAGE, 1GASP, AND
1ACCOUNTING (DAILY).  THE 1ACCOUNTING (DAILY) MAY BE POSTPONED DEPENDING
ON THE PRIORITY OF OTHER ACTIVITIES NECESSARY THAT NIGHT.

        AFTER THE ACCOUNTING HAS BEEN COMPLETED (AT LEAST, 1STORAGE
AND 1GASP), THE SECOND 'BACKUP' IS TAKEN.  THIS SHOULD PICK UP ALL
THE FILES CREATED BY THE ACCOUNTING.  THIS INSURES THAT SHOULD SOME-
THING HAPPEN TO THE FILE SYSTEM, THE ACCOUNTING IS STILL AVAILABLE.

        THE TTY HARDCOPY OF 1STORAGE, 1GASP AND 1ACCOUNTING (DAILY)
IS IDENTIFIED WITH THE DATE AND SYSTEM NO. WRITTEN ON IT, AND FILED IN
THE ACCOUNTING FOLDER IN THE BATCH CONTROL AREA.

        AFTER THE SECOND BACKUP IS COMPLETED, AND A DIRECTORY HAS BEEN
PRINTED OF THE TAPE, THE SYSTEM IS TAKEN DOWN BY TYPING 'CRASH' IN
THE EXEC.  WAIT UNTIL THE '940' CONSOLE GOES TO P=77 BEFORE PUTTING
TOGGLE SWITCH IN 'IDLE' AND PUSHING THE 'START' BUTTON.  (USUALLY
ABOUT 10-15 SECONDS WAIT).  NEXT, CHANGE THE TELETYPE FUNCTION BOX TO
'SELECTOR CHANNEL'.  AN 'ERRORS;G' SHOULD BE TAKEN FOLLOWED BY A
'RSTE;G' TO RESET THE ERROR COUNTERS.  WRITE THE SYSTEM NUMBER, DATE,
HARDWARE LETTER, AND PACK SET NUMBER ON THE TERMINAL HARDCOPY BEFORE
GIVING IT TO THE LEAD OPERATOR OR BATCH CONTROLLER.

        IF THERE IS NO ACTIVITY SCHEDULED FOR THAT NIGHT THE SYSTEM
SHOULD BE BROUGHT BACK UP.  CONSULT THE TYMCOM-IX BRINGUP DOCU-
MENT FOR THIS PROCEDURE.



SAMPLE OUTPUT
-------------

-SYS (CR)

C17 , DISC 2, SYS. S37.11 -166-96E10
-ME (CR)
'56* OPER1 +'
-EXI (CR)                               LOG OUT OF 'OPER1'

'PLEASE LOG IN:' BACKUP:17;;            LOG INTO 'BACKUP'

'TYMSHARE C17 7/14/76  23:30
C17 , DISC 2, SYS. S37.11 -166-96E10

INPUT CANCEL DATE AND TIME (MM/DD-HMMM):' XX-XX-XXXX (CR)

                                        (XX-XX-XXXX) = MON,DATE,TIME
                                         ENTERED BY OPERATOR.  SETS
                                         WHEN THE 'SHUTDOWN' LETTER
                                         WILL BE REMOVED FROM SYSTEM)

NAME: (CR)                              (ENTER YOUR NAME)

PASSWORD: (CR)                          (ENTER YOUR PASSWORD)
LETTER VERSION 5.00                     (AFTER YOUR PASSWORD IS
                                         ENTERED AND CONFIRMED, THE
                                         SHUTDOWN LETTER, USUALLY #6,
                                         IS AUTOMATICALLY ISSUED)

THANK YOU,
TYMSHARE.

DF 1                                    (AUTOMATIC PSP AND ERRORS ARE
DU 1                                     OUTPUT HERE.  ENTER THE 'PSP'
3081                                     AND ERRORS ENTRIES INTO THE
                                         SYSTEM LOGBOOK.  RUN 'PSP'
                                         AGAIN AND DO A '1COUNT'.
                                         ENTER SYSTEM NUMBER AND DATE
                                         ON THE OUTPUT BEFORE GIVING 
                                         IT TO LEAD OPERATOR OR BATCH
                                         CONTROLLER)

-1COUNT (CR)                            (SEE '1COUNT' DOCUMENT)

        (NOW WE BEGIN THE FIRST BACKUP)

-(SET OPER STATUS)

-
-1STORE (CR)

STORE VERSION S42

SYSTEM: C17  7/14  23:32

TAPE DRIVE SET AT 800BPI

NEW (CR)

ARE YOU SURE? Y (CR)

BACKUP (CR)

ENTIRE DISC? (Y OR N) Y (CR)
 LAST FILE NO.: 362
WRITING FD TRAILER

TRAILER VERIFIED                        (IF TRAILER DOES NOT VERIFY,
                                         REFER TO 'FILE DIRECTORY TRAIL-
                                         ER RECOVERY PROCEDURES DURING
                                         '1STORE' BACKUPS' AT THE END OF
                                         THIS DOCUMENT)

        (SHUT THE SYSTEM AT THE SCHEDULED SHUTDOWN TIME)

-(SET OPER STATUS)

-
-SHUT (CR)
TOGGLE SW. 1.                           (BREAKPOINT #1 ON 940 CONSOLE)

-WHO (CR)                               (THIS FINDS OUT WHICH USERS, IF
                                         ANY, ARE LOGGED ON THE SYSTEM
                                         AFTER THE SCHEDULED SHUTDOWN
                                         TIME)

0 SUP +                                 ('+' MEANS TYMSHARE INHOUSE
1 MAP +                                  USER. 'SUP', 'MAP', AND 'PJ'
                                         ARE SYSTEM JOBS)
57 SNYG3 +
58 TBA7
59 TBA7
60 SD1G1 +
61 SN2G1 +
62 PJ +
63* BACKUP +

-1LCHECK (CR)                           (SEE '1LCHECK' DOCUMENT)

LETTER NO:                              (ENTER #6 WHICH IS USUALLY
                                         THE SHUTDOWN ANNOUNCEMENT
                                         LETTER)

THE FOLLOWING CURRENT USERS HAVE NOT
RECEIVED LETTER NO: 6
SUP
MAP
SNYG3
SD1G1
PJ

ANOTHER LETTER? N (CR)

-1OPER (CR)                             (SEE '1OPER' DOCUMENT)

*EMERGENCY ME (CR)

>SET (CR)

NAME (CR)                               (ENTER YOUR NAME)

PASSWORD (CR)                           (ENTER YOUR PASSWORD)
EMERGENCY MESSAGE SWITCH TURNED ON

>Q (CR)

EOJ

-1LETTER (OPTIONAL)(CR)                 (SEE '1LETTER' DOCUMENT)

EMERGENCY, RETURN TO EXEC!

NAME: (CR)                              (ENTER YOUR NAME)

PASSWORD (CR)                           (ENTER YOUR PASSWORD)
LETTER VERSION 5.00

@AGAIN (CR)

LETTER NO 6

07/15/76  01:05
REMINDER......THE SYSTEM WILL GO OFF THE AIR AT..........
0100 PACIFIC TIME
0200 MOUNTAIN TIME
0300 CENTRAL TIME
0400 EASTERN TIME

THANK YOU,
TYMSHARE.

EXPIRATION DATE AND TIME:MM-DD-HHMM(CR) (MM-DD-HMMM ENTERED BY OPER)

7-15  5:00
OKAY? Y (CR)                            ('Y' ENTERED BY OPERATOR)

DISTRICTS: ALL (CR)                     ('ALL' ENTERED BY OPERATOR)

@Q (CR)

E.O.J

-
07/15/76  01:05
REMINDER......THE SYSTEM WILL GO OFF THE AIR AT..........
0100 PACIFIC TIME
0200 MOUNTAIN TIME
0300 CENTRAL TIME
0400 EASTERN TIME

THANK YOU,
TYMSHARE.

-WHO (CR)                               (TO SEE IF USER IS STILL ON
                                         AFTER SETTING THE EMERGENCY
                                         SWITCH AND WAITING 5-10 MINS
                                         FOR THE USER TO LOG OFF)
0 SUP +
1 MAP +
57 SNYG3 +
58 TBA7
59 TBA7
60 SD1G1 +
61 SN2G1 +
62 PJ +
63* BACKUP

        (IF ALL ELSE HAS FAILED TO CONVINCE THE USER TO VOLUNTARILY
         LOG OUT YOU SHOULD HANG HIM OFF)

-(SET OPER STATUS)

-
-HANG 57-62 (CR)                        (ENTERED BY OPERATOR TO HANG
                                         USERS #57-62)
TOGGLE SW. 1.                           (BREAKPOINT #1 ON 940 CONSOLE)

-1STORAGE                               (SEE '1STORAGE' DOCUMENT)

-1GASP                                  (SEE '1GASP' DOCUMENT)

-1ACCOUNTING                            ((SEE '1ACCOUNTING (DAILY)
                                         DOCUMENT))

        (NOW THE SECOND BACKUP IS RUN)

-(SET OPER STATUS)

-
-1STORE (CR)                            (THE TTY HARDCOPY OF THE
                                         SECOND BACKUP, IS FILED WITH
                                         THE TAPE DIRECTORY AND TAPE
                                         IN THE APPROPRIATE SYSTEM TAPE
                                         CABINET)

STORE VERSION S42

SYSTEM: C17  7/15  01:52

TAPE DRIVE SET AT 800BPI

APPEND (CR)

BACKUP (CR)

ENTIRE DISC? (Y OR N) Y (CR)
 LAST FILE NO.: 477
WRITING FD TRAILER


TRAILER VERIFIED

-1CLEAR (CR)                            (PROCEDURE TO CLEAR OUT THE
                                         BATCH INFORMATION THAT
                                         SOMEONE  PUTS INTO THE SYSTEM
                                         FROM OUTSIDE)

ENTER YOUR NAME PLEASE (CR)             (ENTER YOUR NAME)

ENTER YOUR PASSWORD PLEASE (CR)         (ENTER YOUR PASSWORD)
THIS FILE WAS LAST CLEARED  07/14  17:07

 DATE  07/15  02:05

-(SET OPER STATUS)

-
-CRASH (CR)                             (ENTERED BY OPERATOR)
TOGGLE SW. 1.                           (BREAKPOINT #1 ON 940 CONSOLE)

CPU TIME: 6010 SECS.
TERMINAL TIME: 2:35:23

PLEASE LOG IN:                          (WAIT UNTIL 940 CONSOLE GOES 
                                         TO P=77 (USUALLY 10-15 SECONDS)
                                         BEFORE PUTTING SWITCH IN 'IDLE'
                                         POSITION.  AS SOON AS CONSOLE
                                         INDICATES P=77 PUT SWITCH
                                         IN 'IDLE' AND PRESS THE 'START'
                                         BUTTON)

ERRORS;G                                (MAKE SURE YOUR TELETYPE IS IN
                                         SELECTOR CHANNEL MODE.  TOGGLE
                                         SWITCH ON THE TERMINAL FUNCTION
                                         BOX)

        (NOTE:  ERRORS;G TYPES THE ACCUMULATED I-O ERRORS COUNT
                AND LISTS AS MUCH DIAGNOSTIC INFORMATION AS HAS
                BEEN STORED IN A 200 WORD TABLE.  EACH ERROR IN-
                CLUDES CYLINDER AND HEAD NUMBER AND THE LETTER
                'R' OR 'W' FOR READ OR WRITE FOLLOWED BY EITHER
                A CHANNEL STATUS WORD OR A 6 SENSE BYTES)

RSTE;G                                  (ENTER AT COMPLETION OF 
                                         'ERRORS;G')

        (NOTE:  RSTE;G RESETS THE ERROR COUNTER AND THE ACCUMULATED
                LIST OF DIAGNOSTIC INFORMATION)

FILE DIRECTORY TRAILER RECOVERY PROCEDURES DURING '1STORE' BACKUPS
------------------------------------------------------------------

        -(SET OPER STATUS)

       -
       -1STORE (CR)

       STORE VERSION (XXX)                  (XXX) - (CURRENT VERSION)

       SYSTEM: C17  1/24  00:39

       TAPE DRIVE SET AT 800BPI             (CAUTION - MAKE SURE YOU ARE
                                             SET AT 800BPI - CAN VERY
                                             EASILY BE SET AT 556 BPI)

       NEW (CR)                            (ENTERED BY OPERATOR)

       ARE YOU SURE? (Y OR N) Y (CR)        ((ENTER 'Y' IF NEW TAPE AND
                                             PROGRAM CONTINUES.  ENTER
                                             'N' AND PROGRAM COMES
                                             BACK WITH (:))

       BACKUP (CR)                         (ENTERED BY OPERATOR)
                                            (BACKUP OPTION COPIES ALL 
                                             FILES FROM USER UN1 TO TAPE
                                             AND ALL OTHER DISC FILES
                                             WHICH HAVE BEEN CHANGED
                                             SINCE THE LAST TIME THIS
                                             OPTION WAS RUN)

       ENTIRE DISC? (Y OR N) Y (CR)         (ENTER 'Y' IF YOU WANT TO
                                             STORE THE ENTIRE DISC.
                                             ENTER 'N' IF YOU WANT TO
                                             START WITH A DIFFERENT GAN
                                             AND ANSWER QUESTIONS AS
                                             ASKED)

                                            (PROGRAM CONTINUES UNTIL ALL
                                             FILES UNDER THE 'BACKUP'
                                             OPTION ARE STORED ON TAPE.
                                             WHEN IT HAS COMPLETED IT
                                             LETS YOU KNOW WHAT FILE NO.
                                             WAS LAST STORED AND THEN
                                             WILL START WRITING THE
                                             FD TRAILER)

        LAST FILE NO.: 1037
       WRITING FD TRAILER

                                            (IF ANYTHING HAMPERS THE 
                                             FD FROM VERIFYING IT WILL
                                             BE REPORTED DURING THIS 
                                             PROCESS AND WILL ABORT AND
                                             RETURN YOU BACK TO THE EXEC)

       LAST FILE STORED AT POS. 1037

       ABORT

       -                                    ((WHEN THIS HAPPENS, YOU CAN
                                             DO ONE OF TWO THINGS;
                                             EITHER DO A '1POS' (SEE
                                             '1POS' PROGRAM) OR PRINT
                                             A DIRECTORY OF THE TAPE TO
                                             FIND THE USER NAME, FD NO.,
                                             AND UUN OF THE LAST POSI-
                                             TION STORED ON THE TAPE.
                                             WHEN THIS INFORMATION IS
                                             OBTAINED DO THE FOLLOW-
                                             ING))

       -(SET OPER STATUS)

       -
       -1STORE (CR)

       SYSTEM: C17  1/24  01:15

       TAPE DRIVE SET AT 800BPI

       POS (CR)                            (ENTERED BY OPERATOR)

       TAPE POS.: 1036 (CR)                 (TAPE POSITION ENTERED BY
                                             OPERATOR)

       BACKUP (CR)                         (ENTERED BY OPERATOR)

       ENTIRE DISC? (Y OR N) N (CR)         (SEE COMMENTS ABOVE)

       FIRST FILE DIR. NUMBER: 1776 (CR)    (FD # ENTERED BY OPERATOR)

        LAST FILE NO.: 1040

       WRITING FD TRAILER                   (IF ALL GOES WELL, THE
                                             TRAILER SHOULD VERIFY AND
                                             THE PROGRAM WILL REPORT 
                                             THIS)

       TRAILER VERIFIED


THE PROGRAM MAY ALSO OUTPUT THE FOLLOWING WHILE WRITING THE FD TRAILER.
BY PERFORMING THE PROCEDURES OUTLINED YOU SHOULD HAVE NO TROUBLE IN
GETTING THE TRAILER TO VERIFY.

       "FOLLOWING USER NUMBERS APPEAR IN THE LUD BUT ARE NOT ON THE
        FILE DIR. TRAILER.  IF THEY ARE VALID USERS ASCERTAIN THAT
        F.D. FLAGS ARE SET AND REMAKE THE TRAILER.  IF THEY ARE NOT
        VASERS, CONTACT SYSTEMS TO HAVE THEM REMOVED FROM THE
        LUD.
        443
        502
        503
        533
        534
        535
        ETC

       -                                    (RETURNS TO EXEC)

                                            (IF THE ABOVE HAPPENS, IT
                                             WILL BE NECESSARY TO
                                             REMAKE THE FILE DIRECTORY)

       -()GMKFD (CR)                        (()GMKFD - PROGRAM TO RUN
                                             TO SET FILE POINTERS AFTER
                                             A SET LUD HAS BEEN DONE 
                                             UNDER 1OPER.

       REPORT FIXES? N (CR)

       EOJ

       -(SET STATUS)

       -
       -(UTIL)FDC (CR)                      (SET FILE DIRECTORES CON-
                                             TROLS.  NOT AVAILABLE ON
                                             ALL SYSTEMS)

       DECLARING LIBRARY FILE DIRECTORIES   (SETS FILE CONTROL PARAMETERS)

       LIBRARY FILE DIRECTORES DECLARED

       -1STORE (CR)

       STORE VERSION (XXX)                  (SEE COMMENTS ABOVE)

       SYSTEM: C17  1/14  01:35

       TAPE DRIVE SET AT 800BPI

       APPEND (CR)                         (ENTERED BY OPERATOR)

       BACKUP (CR)                         (ENTERED BY OPERATOR)

       ENTIRE DISC? (Y OR N) N (CR)         (SEE COMMENTS ABOVE)

       FIRST FILE DIR. NUMBER: 3777 (CR)
        LAST FILE NO.: 1040
       WRITING FD TRAILER

       TRAILER VERIFIED                     (QUITS TO EXEC)

       -

ERRORS/RECOVERIES
-----------------

        ANY ERRORS ENCOUNTERED DURING THE SHUTDOWN PROCEDURES SHOULD
BE BROUGHT TO THE ATTENTION OF THE LEAD OPERATOR/BATCH CONTROLLER OR
SHIFT MANAGER.

:C: 1STORAGE
                               1STORAGE
                               --------
      
PURPOSE:   CREATES A STORAGE REPORT BY USER IN A FILE LOCATED IN THE
           DIRECTORY OF *4RAW ACCT NAMED XXSTORNN.
           WHERE XX=MONTH OF THE YEAR AND NN= DAY OF THE MONTH.
           FOR THE 17TH OF NOVEMBER THE FILE WOULD BE NAMED:  11STOR17


PROCEDURE:   1) PUT A SHUT IN THE SYSTEM

             2) ONLY 3 USERS MAY BE LOGGED ON THE SYSTEM.

             3) SET OPER STATUS

             4) TYPE IN THE EXEC -1STORAGE

     NOTE: THIS MUST BE RUN WITH NO USERS LOGGED ON THE SYSTEM
           AND ONLY AFTER THE SCHEDULED SHUT DOWN TIME SINCE IT
           COUNTS STORAGE AT THE MOMENT THE PROGRAM IS INITIATED.


SAMPLE OUTPUT:
               
               -1STORAGE
               
               STORAGE R3.00
               
               
               ONLY 3 USERS ALLOWED ON - HANG PJ IF NECESSARY
               ALTMODES WILL BE INHIBITED - TYPE C.R. TO CONTINUE:
               
               ENTER MONTH-DATE: MM-DD
               
               STORAGE FILE (*4RAW ACCT) O4STOR19
               
               EOJ
               -

ERROR MESSAGES:

               UNABLE TO OPEN FILE WITH I.B.P. XXXXXXX FOR F.D. NUMBER NN
               
               WHERE XXXXXXX= SOME OCTAL NUMBER
               WHERE NN=SOME FILE DIRECTORY NUMBER
:C: 1GASP
                               1GASP
                               -----

PURPOSE:      CONVERTS THE RAW ACCOUNTING INTO SEVERAL FILES LOCATED UNDER THE
              *4RAW ACCT DIRECTORY AND NAMED AS FOLLOWS:
            
                           ACCTG FILE:  MMPACTDD
                   FOREIGN ACCTG FILE:  MMFACTDD
                   PREMIUM ACCTG FILE:  MMPREMDD
                   NAME CHANGE   FILE:  MMNAMEDD
                            STAT FILE:  MMSTATDD
                         ROYALTY FILE:  MMROYLDD

           WHERE MM=MONTH OF THE YEAR AND WHERE DD=DAY OF THE MONTH.
           FOR EXAMPLE- THE ACCTG FILE FOR 10 NOVEMBER WOULD BE: 11PACT10



PROCEDURE:  1) SET OPER STATUS

            2) IN THE EXEC TYPE   -1GASP


SAMPLE OUTPUT:

                -1GASP
                
                GASP R7.02
                
                
                ENTER MONTH-DATE-YEAR:  MM-DD-YY
                
                ACCTG FILE (*4RAW ACCT) 04PACT19
                FOREIGN ACCTG FILE (*4RAW ACCT) 04FACT19
                PREMIUM FILE (*4RAW ACCT) 04PREM19
                STAT FILE (*6STAT) 04STAT19
                NAME CHANGE FILE (*4RAW ACCT) 04NAME19
                
                
                REVENUE TERMINAL TIME 106:35
                REVENUE COMPUTE SECONDS 32356
                REVENUE PREMIUM COMPUTE SECONDS 3239
                REVENUE LOGOUTS 298
                
                NON-REVENUE TERMINAL TIME 73:43
                NON-REVENUE COMPUTE SECONDS 29671
                NON-REVENUE PREMIUM COMPUTE SECONDS 1310
                NON-REVENUE LOGOUTS 159
                
                MAXIMUM USERS WERE 22
                
                
                EOJ
                -
                
ERROR MESSAGES:
                
                1 BAD TIME RECORD BYPASSED
                
                1 BAD PUBLIC OR SUBSYSTEM RECORDS BYPASSED
                
:C: 1ACCOUNTING (DAILY)


                        DAILY ACCOUNTING
                        ----------------

INTRODUCTION
------------

        THIS PROGRAM IS USED TO CALL ALL THE PROGRAMS OR PROGRAM
CHAINS IN THE ACCOUNTING SYSTEM WHICH ARE IN THE FILE DIRECTORIES
OF (*4ACCT) AND (*4PROG).  IT ALSO WRITES OUT THEIR RESTART FILES.
1ACCOUNTING CAN ONLY BE USED BY A PERSON WITH DISTRICT STATUS OF
ZERO.

        EVERY EVENING, PRIOR TO TAKEDOWN, 1STORAGE, 1GASP AND 
1ACCOUNTING IS RUN (SEE 1STORAGE AND 1GASP DOCUMENTATION ELSEWHERE
IN THIS MANUAL).  THESE TWO PROGRAMS OUTPUT FILES WHICH MUST BE PRE-
SENT BEFORE 1ACCOUNTING CAN BE RUN.

        1ACCOUNTING OUTPUTS INFORMATION TO THE OPERATOR'S TTY PER-
TAINING TO BILLABLE TIME, TOTAL TIME, BILLABLE CPU, TOTAL CPU, AND
TOTAL LOGOUTS.

        THIS INFORMATION IS TO BE SAVED ON THE TTY PAPER AND PUT IN
THE APPRORPIATE FOLDER IN THE BATCH CONTROL AREA.

VALID COMMANDS
--------------

        DAILY                           RUN DAILY ACCOUNTING

        WEEKLY                          RUN WEEKLY ACCOUNTING

        MONTHLY                         RUN MONTHLY ACCOUNTING

        MTD BATCH                       RUN MONTH TO DATE BATCH PRO-
                                         CESSING REPORT

        MTD STORAGE                     RUN END MONTH TO DATE STORAGE
                                         REPORT

        LOOK                            LOOK AT CUSTOMER, ACCOUNT, AND
                                         USER FILES

        ME-LOOK                         LOOK AT MONTH END CUSTOMER,
                                         ACCOUNT, AND USER FILES

        CREATE TAPELIB                  CREATES A TAPELIB TRANSFER
                                         FILE FOR TAPE STORAGE BILLING
                                         AT THE END OF THE MONTH.

        HELP                            REPRINTS THIS LIST

        VERSION                         LISTS LATEST VERSION

        Q OR QUIT                       EXITS THE PROGRAM






OPERATION AND SAMPLE OUTPUT
---------------------------

-DS (OPERATOR'S NAME)                    (SET STATUS)

-                                       (ENTER PASSWORD)
-1ACCOUNTING

ENTER YOUR NAME PLEASE

ENTER YOUR PASSWORD

COMMAND? DAILY(CR)                      (ENTER (DAY) OR (DAILY))

COUNTRY? US(CR)                         (ENTER (US) OR (UNITED STATES);
                                         (FRANCE); (UK) OR (UNITED
                                         KINGDOM))

THANK YOU.

FILE CHECK PROGRAM RUNNING              ((*4PROG)/FILCHK/)
                                        (CHECKS TO SEE IF ALL (*4ACCT)
                                         FILES ARE PRESENT, IF FILES
                                         ARE MISSING, IF A FILE IS BAD,
                                         OR IF THE COMMANDS FILE CANT BE
                                         OPENED.  ERROR MESSAGES ARE 
                                         LISTED AT THE END OF THIS
                                         DOCUMENTATION)

END OF FILE CHECK                       (OUTPUTS IF EVERYTHING IS OKAY)

THE DAILY SORT IS STARTING.             ((*4PROG)/SORT/)
                                        (SORTS RECORDS TO ENSURE
                                         DAILY ACCOUNTING HAS BEEN
                                         DONE TO DATE.  ERRORS MESSAGES
                                         ARE LISTED AT THE END OF
                                         THIS DOCUMENTATION)

DATE OF REPORT? (MM-DD-YY)              ((MM-DD-YY) = CURRENT DAY DAILY
                                         ACCOUNTING IS TO BE RUN.
                                         ENTERED BY OPERATOR.  ERROR
                                         MESSAGES ARE LISTED AT THE END
                                         OF THIS DOCUMENTATION)


THE DAILY SORT IS FINISHED.             (OUTPUTS IF EVERYTHING IS OKAY)

THE DAILY COMPARE IS STARTING.          ((*4PROG)/CAL/)
                                        (COMPARES ACCOUNTING WITH LUD
                                         AND KEEPS TRACK OF HOW MANY
                                         USERS IN ACCOUNTING.  ERROR
                                         MESSAGES ARE LISTED AT THE END
                                         OF THIS DOCUMENTATION)

END OF DAILY COMPARE                    (OUTPUTS IF EVERYTHING IS OKAY)

THE DAILY MERGE IS RUNNING.             ((*4PROG)/DM/)
                                        (THIS PROGRAM MERGES THE DAILY
                                         SORTED DETAIL TO THE WEEKLY
                                         RECORD FILE CHECKING FOR DUP-
                                         LICATE RECORDS, GAN'S NOT 
                                         ASSIGNED AND DISCOUNT RECORDS.
                                         IT THEN UPDATES THE AI&D FILE
                                         WITH THE CONNECT TIME AND CPU
                                         (TRU).  ERROR MESSAGES ARE LIS-
                                         ED AT THE END OF THIS DOCUMEN-
                                         TATION).


THE DAILY TOTALS ARE:                   (DAILY TOTALS MUST MATCH THE
                                         TOTALS OUTPUTED WHEN 1GASP
                                         WAS RUN FOR THE SAME DAY)


BILLABLE TIME    54:43
BILLABLE CPU     22849
BILL PREM CPU      841

TYMSHARE TIME   119:35
TYMSHARE CPU     18662
TYM PREM CPU      3515

TOTAL TIME      174:18
TOTAL            41511
TOTAL PREM CPU    4356

LOGOUTS            283



THE DAILY MERGE AND ACCOUNT UPDATE ARE FINISHED

 OLD FILE

NO USER NAME TRANSACTIONS FOR 06-14

E. O. J.                                (OUTPUTS IF EVERYTHING IS OKAY)


STORAGE PROGRAM RUNNING                 ((*4PROG)/STORG/)
                                        (THIS PROGRAM UPDATES THE USER
                                         STORAGE IN /UI&D/ AND THE
                                         ACCOUNT STORAGE IN /AI&D/.
                                         THE STORAGE IS TAKEN FROM 
                                         (*4RAW ACCT)MMSTORDD.  ERROR
                                         MESSAGES ARE LISTED AT THE END
                                         OF THIS DOCUMENTATION)



END STORAGE PROGRAM

 OLD FILE

POOH STARTING 2.4

END OF JOB                              (OUTPUTS IF EVERYTHING IS OKAY)

CUSTOMER INFORMATION UPDATE RUNNING.    ((*4PROG)/CI-UPD/)
                                        (THIS PROGRAM UPDATES MTD TIME,
                                         MTD STORAGE, AND MTD BATCH
                                         PROCESSING IN THE CUSTOMER
                                         INFORMATION FILE.  THE INFO 
                                         IS TAKEN FROM THE ACCOUNT 
                                         AND USER INFORMATION FILES.
                                         ERROR MESSAGES ARE LISTED AT
                                         THE END OF THIS DOCUMEN-
                                         TATION)

END CUSTOMER INFORMATION UPDATE.

 OLD FILE
 OLD FILE
 OLD FILE
 OLD FILE
 OLD FILE
 OLD FILE
 OLD FILE

MONTH TO DATE SUMMARY IS RUNNING.       ((*4PROG)/MTD-SUM/

THE MONTH TO DATE SUMMARY REPORT IS IN FILE:  (BILLING) S17SUM14

END OF DAILY ACCOUNTING.                (QUITS TO THE EXEC)

-


ERROR MESSAGES
--------------

       THE PRIMARY RECOVERY PROCEDURE WHEN ACCOUNTING ERRORS OCCUR IS
TO BRING ANY AND ALL ERRORS TO THE ATTENTION OF YOUR SUPERVISOR; IF
THE ERROR IS NON-RECOVERABLE (AND MOST OF THEM ARE) THEN A MESSAGE
SHOULD BE SENT TO (RJK) ON C1 OR C2.

        FILE CHECK
        ----------

        (*4ACCT)FILS IS MISSING.  RESTORE FROM ANOTHER SYSTEM AND TRY
         AGAIN.

        (NAME OF FILE) IS MISSING.

        (NAME OF FILE) IS BAD.

        CONTACT ACCOUNTING PROGRAMMING AND DO NOT PROCEED.

        CANNOT OPEN COMMANDS FILE - TERMINATING.

        
        DAILY SORT
        ----------

        THE FACT FILE FROM SYS (##)
         HAS NOT BEEN RECEIVED.

        DATE FORMAT INCORRECT.          (ENTER CORRECT DATE FORMAT AS
                                         (MM-DD-YY))

        THE ACCOUNTING HAS BEEN RUN     (CHECK TO SEE IF CORRECT DATE
         FOR (MM-DD-YY)                  HAS BEEN ENTERED)

        DO YOU WISH TO CONTINUE?        (IF CORRECT DATE HAS BEEN ENTER-
         (Y OR N)                        ED ANSWER 'N'.  SOMEONE
                                         HAS ALREADY ENTERED DAILY
                                         ACCOUNTING FOR THE ABOVE DATE.
                                         ENTER 'Y' AFTER HAVING CHECKED
                                         TO SEE IF DAILY ACCOUNTING HAS,
                                         IN FACT, NOT BEEN ENTERED FOR
                                         THE CURRENT DAY)

        DAILY ACCOUNTING TERMINATED.    (IF 'N' IS ENTERED IN ANSWER TO
                                         ABOVE RESPONSE)

        THE DAILY ACCOUNTING HAS NOT    (PROGRAM TERMINATES WHEN THIS
         BEEN RUN FOR (MM-DD-YY)         MESSAGE IS OUTPUTED.  DAILY
                                         ACCOUNTING MUST BE RUN FOR THIS
                                         DAY BEFORE DAILY ACCOUNTING CAN
                                         BE ENTERED FOR THE CURRENT 
                                         DATE)

        DAILY COMPARE
        -------------

        CUSTOMER FILE INCORRECT SIZE.

        ACCOUNT FILE INCORRECT SIZE.

        GAN (NNNN) IS ASSIGNED IN ACTG BUT NOT LUD.

        GAN (NNNN) IS ASSIGNED IN LUD BUT NOT ACTG.

        GAN (NNNN) IS CANCELED IN ACTG BUT NOT LUD.

        GAN (NNNN) UUN (NNNN) HAS A NAME OF (NNNN) IN ACTG AND NOT
         IN LUD.

        GAN (NNNN) USER (NAME) HAS A UUN OF (NNNN) IN ACTG AND
         (NNNN) IN LUD.

        GAN (NNNN) USER (NAME) IS ASSIGNED IN THE LUD AND NOT
         ACTG.

        GAN (NNNN) USER (NAME) HAS DISTRICT (NNNN) IN LUD AND DISTRICT
         (NNNN) IN ACTG.

        GAN (NNNN) USER (NAME) IS ASSIGNED IN ACTG BUT NOT IN LUD.


        DAILY MERGE
        -----------

        THE FOLLOWING ACCOUNTS ARE NOT ASSIGNED IN ACTG (NNNN) 
         GAN (NNNN) TIME (NNNN).

        DUPLICATE TIME (NNNN).

        STORAGE PROGRAM
        ---------------

        LENGTH FILE CLOBBERED.

        THE FOLLOWING USERS NUMBERS APPEAR IN THE OUTPUT OF LENGTH
       BUT NOT IN THE USER INFORMATION FILE - U.N. (NNNN).


:C: BRINGUP PROCEDURE


                        TYCOM-IX BRINGUP
                        ----------------

INTRODUCTION
------------

        THE PURPOSE OF THIS PROCEDURE IS TO BRING THE HOST COMPUTER
SYSTEM UP FOR NORMAL OPERATION (CODE 10: TIMESHARING) AFTER THE SYSTEM
HAS BEEN OFF THE AIR DUE TO A CRASH, POWER FAILURE OR NORMAL TAKEDOWN
PROCEDURES.

        IF A SYSTEM HAS CRASHED OR IF THERE HAS BEEN A POWER FAILURE,
STANDARD PROCEDURES ON WHAT SHOULD BE DONE ARE DOCUMENTED ELSEWHERE IN 
THIS MANUAL.  THE FOLLOWING PROCEDURES ASSUME THAT EVERYTHING NECESSARY
HAS BEEN COMPLETED AND THE SYSTEM IS READY TO BE BROUGHT UP.  THE
'RUN-IDLE' SWITCH ON THE 940 CONSOLE SHOULD BE IN 'IDLE' POSITION AND
THE 'START' BUTTON SHOULD HAVE BEEN PUSHED.  THERE SHOULD BE NO LIGHTS
LIT ON THE 940 CONSOLE AT THIS TIME.

OPERATION AND SAMPLE OUTPUT
---------------------------

        THE OPERATOR SHOULD INITIAL EACH STEP IN THE SYSTEM LOGBOOK
AS IT IS COMPLETED.

        PUT THE TERMINAL IN 'SELECTOR CHANNEL' MODE AND THEN TYPE
'UP;G' ON THE TTY.  IF ALL IS OKAY WITH THE SELECTOR CHANNEL YOU 
WILL BE ASKED THE QUESTION 'HOST'.  TYPE IN THE HOST SYSTEM YOU ARE
BRINGING UP.  NEXT YOU WILL BE ASKED 'LOC' WHICH IS IN REFERENCE
TO THE DISCMAP LOCATION OF THE MONITOR (2 FOR THE CURRENT MONITOR AND
4 FOR ANOTHER COPY OF THE CURRENT MONITOR.  IF NEITHER OF THESE MONI-
TORS WILL COME UP SUCCESSFULLY, OBTAIN PERMISSION FROM SHIFT MANAGER
BEFORE TRYING A BRINGUP FROM LOCATION 12 - (BACKUP (OLD) MONITOR).
BE SURE TO CHECK THE '1DISCMAP' POSTED ON THE CONSOLE OF EACH
COMPUTER.

       IF ALL HAS GONE WELL TO THIS POINT, THE MESSAGE 'HOST LOADED'
IS OUTPUT AND A BELL WILL RING ON THE TERMINAL.  NOW YOU CAN RETURN
THE TERMINAL FUNCTION BOX TO THE 'REMOTE' (NETWORK) POSITION.  NEXT
PUSH THE 'START' BUTTON ON THE 940 CONSOLE, AND PUT THE 'RUN-IDLE'
SWITCH TO 'STEP-IDLE' AND THEN TO 'RUN'.  THE INTERRUPT LIGHT SHOULD
COME ON TO INDICATE THE TIMESHARING SYSTEM IS RUNNING.

        NOW LOG INTO THE SYSTEM UNDER THE USERNAME 'OPER'.  THE
SYSTEM WILL RESPOND WITH A BELL, OUTPUT THE WORD 'SHUT' AND RING THE
BELL AGAIN.  THE COMPUTER WILL THEN TYPE A MESSAGE IDENTIFYING THE
SYSTEM NUMBER AND THE LAST START UP TIME.  YOU WILL BE PROMPTED FOR
THE CURRENT DATE AND TIME OR ELSE THE HARDWARE ID NUMBER, DEPENDING
ON WHICH MONITOR IS RUNNING ON THAT SYSTEM.  THE OPERATOR SHOULD TYPE
THIS IN.  TIME IS BASED ON MILITARY TIME FORMAT AND A TWENTY-FOUR HOUR
CLOCK.  SET 'OPER' STATUS AND THEN TYPE '1SCANMAPS' TO DETERMINE IF
A BAD MAP ZONE EXISTS THAT '1REFRESH' CAN CORRECT.  AFTER '1SCANMAPS'
AND/OR '1REFRESH' HAS COMPLETED TYPE IN '1SETMAP'.  THE REMAINING
BRINGUP PROCEDURES WILL RUN AUTOMATICALLY FROM A COMMANDS FILE CALLED
'OPCOM'.

        AT THE COMPLETION OF THE BRINGUP PROCEDURES, THAT PART OF THE
TTY HARDCOPY, FROM 'LAST START UP' TO 'END OF STARTUP ROUTINES' IS
MARKED WITH THE SYSTEM NUMBER AND DATE.  THIS IS FILED IN
THE SYSTEM 'STARTUP' FOLDER FOR THAT DAY IN THE BATCH CONTROL AREA.
(EXAMPLE:  IF YOU STARTED THE SHUTDOWN PROCEDURES ON A SUNDAY, THE 
BRINGUP PROCEDURES ARE FILED IN SUNDAYS FOLDER).

(EVERY OPERATOR SHOULD BE ABLE TO BRING UP ANY SYSTEM MANUALLY WITHOUT
THE AID OF THE 'OPCOM' FILE AND SHOULD KNOW ALL THE COMMANDS IN IT).



SAMPLE OUTPUT
-------------

(SET TTY FUNCTION TO SELECTOR CHANNEL)

(TYPE) UP;G                     (CARRIAGE RETURN IS AUTOMATIC)

        UP;G CAUSES THE DIM CODE TO ASK THE OPERATOR FOR THE HOST
        NUMBER AND THE MONITOR LOCATION.  THIS SAVES THE CRASH ON 
        LOCATIONS 0, 1, 20 AND 24 AND LOADS THE MONITOR INTO THE 940
        MEMORY.

        UP-1;G WORKS LIKE UP;G EXCEPT THAT IT INHIBITS THE CRASHSAVE.

'HOST NUMBER' 17 (CR)                   (HOST NUMBER AND LOCATION
'LOC.' 2 (CR)                            NUMBER ARE ENTERED BY
                                         OPERATOR)
'940 LOADED'

        (A NOTE ON HOST TELETYPES IN A DUAL-CHANNEL SYSTEM)

               (THE FOLLOWING PROCEDURE APPLIES TO HOST 1 (TTY ON
                RIGHT OF 940 CONSOLE)

                MOVE TOGGLE SWITCH ON TERMINAL FUNCTION BOX FROM
                SELECTOR CHANNEL TO NETWORK.  NEXT, PUSH THE 'START'
                BUTTON AND MOVE TOGGLE SWITCH ON 940 CONSOLE TO 
                'STEP', 'IDLE-RUN' POSITION.  WAIT UNTIL LIGHTS
                FLASH ON THE 940 CONSOLE BEFORE LOGGING IN.  IF TTY
                DOES NOT RESPOND, PUSH THE DISCONNECT BUTTONS ON THE
                TERMINAL BOX SO YOU CAN LOG IN.  AFTER PRESSING THE
                BUTTONS, THE TTY MAY PRINT OUT SOME UNRECOGNIZABLE
                CHARACTERS.  PRESSING THE TERMINAL IDENTIFIER 'D'
                HALTS THIS AND PROMPTS YOU TO LOG IN)

               (THE FOLLOWING PROCEDURE APPLIES TO HOST 0 (TTY ON
                LEFT OF 940 CONSOLE)

                THE PROCEDURE OUTLINED ABOVE APPLY HERE ALSO.
                EXCEPT YOU DO NOT HAVE TO PRESS THE DISCONNECT
                BUTTONS ON THE TERMINAL BOX TO BE ABLE TO LOG IN.
                ON THIS TTY, YOU HAVE ALREADY BEEN PROMPTED TO
                LOG IN)

'PLEASE LOG IN:'

TYPE IN 'OPER:(SYS NO.);(PASSWORD);(CR) (AFTER THE SYSTEM PRINTS THE
                                         WORD 'SHUT', DO A CARRIAGE
                                         RETURN)

        (NOW ONE OF THE FOLLOWING ROUTINES WILL OCCUR)

'LAST START UP: 7/14/76 3:14            (PRINTED OUT EACH TIME A
 C17, DISC 2, SYS. S37.11 -166:96E10'    SYSTEM IS BROUGHT UP)

ENTER MONTH-DATE-TIME: (XX-XX-XXXX)(CR) (XX-XX-XXXX) = MON,DAY,TIME.
                                        (ENTERED BY OPERATOR AT TIME
                                         OF BRINGUP.  PAY CLOSE ATTEN-
                                         TION TO DATE AND TIME YOU ENTER
                                         HERE - AN INCORRECT DATE AND
                                         TIME ENTERED HERE WILL CAUSE
                                         THE SYSTEM CLOCK TO BE INCOR-
                                         RECT.  IF YOU ENTER WRONG DATE
                                         AND TIME, TYPE IN ADDITIONAL
                                         ALPHABETIC CHARACTERS BEFORE
                                         PRESSING CHARRIAGE RETURN.
                                         THIS WILL CAUSE THE INCORRECT
                                         TYPE-IN TO BE REJECTED AND THE
                                         'LAST START UP' MESSAGE WILL
                                         TYPE OUT AGAIN AND YOU CAN RE-
                                         ENTER THE CORRECT DATE AND
                                         TIME)


                (OR)

'HARDWARE ID:' (X) (CR)                 (X) = HARDWARE ID NO.
                                        (HARDWARE ID NO. IS ENTERED BY
                                         OPERATOR OF THOSE SYSTEMS 
                                         THAT HAVE THE 'S38.4' TYPE
                                         MONITOR)

'TYMSHARE  C17 7/15/76 2:06'            (DATE AND TIME IN THIS CASE IS
                                         OBTAINED AUTOMATICALLY FROM THE
                                         NETWORK SUPERVISOR)

-(SET OPER STATUS)                      (IT IS BEST TO SET STATUS HERE)
-
-1SCANMAPS (CR)                         (SEE '1SCANMAPS' DOCUMENT)

'MAP STATUS AS OF 7/15/1976 2:07        (THIS SHOULD BE DONE ON A
                                         SYSTEM BRINGUP FOLLOWING A
                                         CRASH.  IF THE OUTPUT LOOKS
                                         NORMAL, DO NOT RUN '1REFRESH'.
                                         IF A BAD MAP ZONE IS REPORT-
                                         ED, THEN '1REFRESH' SHOULD BE
                                         INCLUDED IN THE BRINGUP PRO-
                                         CEDURE)
ZONE 0   1839 DBITS
ZONE 1   5013 DBITS
ZONE 2   4452 DBITS
ZONE 3   5387 DBITS
TOTAL   16691 DBITS

* INDICATES IN-CORE MAP

MAP NOT SET'                            (MEANS '1SETMAP' NOT SET)

        (THIS IS OPTIONAL AS DESCRIBED ABOVE)

-1REFRESH (CR)                          (SEE '1REFRESH' DOCUMENT)

NO OF FILES: 8791

DBITS: 0,1937
DBITS: 1,5013
DBITS: 2,4673
DBITS: 3,5387
DBITS: 4,0
DBITS: 5,0
DBITS: 6,0
DBITS: 7,0
EOJ

        (THE FOLLOWING PROCEDURES COMPLETE THE BRINGUP)

-1SETMAP (CR)                           (SEE '1SETMAP' DOCUMENT)

'11.0 SETMAP

START UP TIME MORE THAN 60 MINS. GREATER THAN LAST RECORDED
TIME IN ACCOUNTING
LASTEST RECORDED TIME WAS: 7-15 0:48 (0:48AM)

CURRENT DATE AND TIME ACCORDING TO THE SYSTEM IS: 7-15 2:29 (2:29AM)

IS THIS CORRECT? (Y OR N)' Y (CR)


                                        (IF TIME IS CORRECT, ENTER 'Y'
                                         IF TIME IS NOT CORRECT, ENTER
                                         'N' AND SYSTEM WILL CRASH.
                                         BRING SYSTEM UP USING NORMAL
                                         BRINGUP PROCEDURES)

ZONE 0  1937 DBITS
ZONE 1  5013 DBITS
ZONE 2  4673 DBITS
ZONE 3  5387 DBITS

O.F. GRPS. LEFT: 538                    (ENTER OVERFLOW GROUPS IN THE
                                         SYSTEM LOGBOOK.  '1CAD' MAY BE
                                         NECESSARY IF O.F. GRPS ARE DOWN
                                         TO 300 ON SYSTEMS OTHER THAN
                                         C2 AND C9)
                                         (SEE '1CAD' DOCUMENT FOR PRO-
                                         CEDURES)

DBITS: 5387

EOJ

AN UP HAS BEEN ISSUED                   (THIS MESSAGE MEANS THE 'SHUT'
                                         IS REMOVED BUT USERS CANNOT
                                         LOG IN TO THE SUBSYSTEMS UNTIL
                                         '1WSD' HAS BEEN RUN)

7/15/76  2:29                           (THIS TIME IS ENTERED INTO THE
                                         SYSTEM LOGBOOK TO MARK THE BE-
                                         GINNING OF CODE 10 - TIMESHAR-
                                         ING)

OPCK VERSION 4 RUNNING

MAP PROGRAM LICENSE OKAY

        (NOTE:  THE PROGRAM MAP IS RUN UNDER THE USER NAME MAP.  THIS
                JOB IS LOGGED INTO PORT 1 OF THE SYSTEM BY THE EXEC
                WHEN THE SYSTEM IS BROUGHT UP, AND STARTED BY AN
                INITIALIZED FILE.  NO OPERATOR INTERVENTION IS 
                NECESSARY.  CARE SHOULD BE TAKEN NOT TO HANG THIS
                JOB BECAUSE IT CANNOT BE RESTARTED WITHOUT TAKING
                THE SYSTEM DOWN AND BRINGING IT UP AGAIN.  IF MAP
                IS NOT RUNNING, RECYCLED DBITS WILL NOT BE RETURNED
                TO THE DISC MAP ZONES)

E.O.J.

RUNNING 1WSD                            (SEE '1WSD' DOCUMENT FOR MORE
                                         DETAILS)

WSD VERSION S94.03                      (THIS WRITES THE SUBSYSTEMS
                                         TO THE DRUM)

EXECD1          71211536
EXECD2          73614542
DDT             71601470
XDDT            67252447
EDITOR          23430324
COMMON          27773772
SFOR3           10423243
SBASIC          16676442
SFOR1           30702561
SFOR2           15272537
BFOR1           50143413
BFOR2           51463156
BFOR3           46436546
CAL             16171570
FOS             73331570
F20S            62253055
FTC             20462257
F2C             67055206
NBASIC          12631656
NBASIC1         36436056
XFOR1           50555602
XFOR2           62521012
XFOR3           36551515

END JOB.

SYSTEM CHECKSUM PROGRAM VERSION 2       (SEE THE '1SYSCHECK' DOCUMENT
 RUNNING                                 FOR MORE DETAILS)

IPL OKAY

NO SYSTEM ERRORS FOUND

END OF JOB

HAVE YOU CHECKED THE LETTER BOX         (SEE '1LETTER' DOCUMENT)
 FOR OUTDATED LETTERS?
THE FOLLOWING IS THE CURRENT STATUS

LETTER NO: 1 HAS NOT BEEN ISSUED        (LETTERS #1 THROUGH #4
                                         ARE NOT TO BE USED BY
                                         OPERATIONS)

LETTER NO: 2 HAS NOT BEEN ISSUED

LETTER NO: 3 HAS NOT BEEN ISSUED

LETTER NO: 4 HAS NOT BEEN ISSUED

LETTER NO: 5 HAS NOT BEEN ISSUED        (LETTERS #5 AND #6 HAVE BEEN
                                         RESERVED FOR USE BY OPERATIONS)

THE FOLLOWING CURRENT USERS HAVE NOT
RECEIVED LETTER NO: 6
SUP

 OLD FILE
C17, DISC 2, SYS. S37.11 -166-96E10

PSP

5384                                   (DISC SPACE LEFT ON THE SYSTEM
                                        IN ONE MAP ZONE)

1MAC                                    (SEE '1MAC' DOCUMENT)

LAST ACCOUNTING COLLECTION WAS AT 7/14 23:45
LAST WRITTEN TO FILE 171990314
EXEC NOW WRITING ON BLOCK 103400
NEXT BLOCK TO BE COLLECTED IS 100400

NO. OF BLOCKS TO BE COLLECTED: 2
MAC WILL GET THEM, I HOPE

'RAWACT' CREATION DATE IS 1/13 3:09

1COP                                    (SEE '1COP' DOCUMENT)

25.00

DIRECTORIES, FILES, OR INVALID DIRECTORIES (D,F, OR I)
BAD FILE IN FILE DIRECTORY NO. 4 CREATED 7/28/1972
PPTOT

STARTING PASS TWO - OVERFLOW DIRECTORIES

END OF JOB

CLEARING MAIL BOX

*

>
MAIL LIST ENDS AT: 36

>

EOJ

CLEARING 2-DAY OLD FILES FROM OPER1,OPER2,OPER3 & *1COPYBATCH

ALL FILES BY FILE TYPE REMOVE FILES PURGE FILES BY DATE ENTER PURGE DATE:

COM       NOT DELETED

0 FILE(S) DELETED

END JOB

ALL FILES BY FILE TYPE REMOVE FILES PURGE FILES BY DATE ENTER PURGE DATE:

0 FILE(S) DELETED

END JOB

ALL FILES BY FILE TYPE REMOVE FILES PURGE FILES BY DATE ENTER PURGE DATE:

0 FILE(S) DELETED

END JOB
EWSORT-/Y2SEELMAN 7-13  08:46/

MAP STATUS AS OF 7-15-1976 2:34         (SEE '1SCANMAPS' DOCUMENT)

ZONE 0   1939 DBITS   7-15 2:34
ZONE 1   5013 DBITS   7-15 2:28
ZONE 2   4966 DBITS   7-15 2:34
ZONE 3   5383 DBITS *
TOTAL   17301 DBITS                     (ENTER 'TOTAL DBITS' INTO
                                         SYSTEM LOG BOOK)


* INDICATES IN-CORE MAP

END OF STARTUP ROUTINES

PLEASE LOG OUT OF OPER AND INTO OPER1   (OUTPUT AT END OF BRINGUP
                                         PROCEDURES)

-EXI (CR)                               (TYPE THIS TO LOG OUT)

'PLEASE LOG IN:'                        (WHEN RECEIVING THIS PROMPT,
                                         TYPE IN:

                                        'OPER1:(SYSTEM NO.);(PASSWORD);'
                                         SYSTEM RESPONDS WITH)

'TYMSHARE  C17 7/15/76  2:35'           (DATE AND TIME OBTAINED AUTO-
                                         MATICALLY FROM THE NETWORK
                                         SUPERVISOR)

-

ERRORS/RECOVERIES
-----------------

        ANY ERRORS ENCOUNTERED DURING THE BRINGUP PROCEDURES SHOULD
BE BROUGHT TO THE ATTENTION OF THE LEAD OPERATOR/BATCH CONTROLLER OR
SHIFT MANAGER.

UP;G ERRORS
-----------

        IF THE HOST SPECIFIED IS ON NEITHER THE LOWER OR UPPER PACKS,
DIM TYPES BAD HOST NUMBER.  IF EITHER PACK 0 OR PACK 8 IS OFF LINE
AND THE HOST NUMBER IS INVALID, DIM TYPES 'IO ER'.  IF AN 'IO ERROR'
OCCURS IN LOADING THE MONITOR, DIM TYPES 'IO ER'.  IF THE OPERATOR 
DOES NOT KNOW WHAT HOSTS ARE ON HIS PACKS, HE MUST BRING UP A KNOWN
HOST BY USING THE '1OPER' DOCUMENT (PACK RECORDS), AND READ THE HOST
NUMBER OFF THE UNKNOWN PACKS.  THE 'UP' COMMAND MAY ALSO TYPE 'ER,
ALREADY UP' OR 'MIC ER'.  'UP' ONLY CHECKS FOR DISC READ ERRORS.
DISC WRITE ERRORS DO NOT ABORT THE 'UP' COMMAND.  IF 'IO ER' KEEPS
A 940 FROM COMING UP, THE 'HOST' IS DOWN UNTIL AN EXPERT DIAGNOSIS
THE PROBLEM.
:C:    1SETMAP
                               1SETMAP
                               -------

           1) ESTABLISHES THE ROTATION FILE IF IT FINDS THAT THE FILE
              IS NOT UNDER USER NUMBER 1 AS  "RAWACT".

           2) SETMAP LOCATES THE POINT IN THE FILE WHERE THE CURRENT ACCOUNTING
              IS TO BE WRITTEN, AND PROVIDES THE EXEC WITH A TABLE OF DATA BLOCK
              ADDRESSES FOR THIS PURPOSE.

           3) TO PREVENT WRITING OVER PREVIOUS ACCOUNTING THE SETMAP PREVENTS
              THE SYSTEM FROM OPERATING IF START UP TIME PREVIOUS
              TO THE LAST RECORDED ACCOUNTING TIME IS ATTEMPTED.

           4) THE SETMAP PRINTS A WARNING MESSAGE IF THE START UP TIME IS
              GREATER THAN 20 MINUTES AFTER THE LAST RECORED ACCOUNTING
              TIME. OR START UP TIME MORE THAN 8 HOURS GREATER WILL PRINT OUT
              OR ANY OTHER TIME IT IS APPROPRIATE. MESSAGE  WILL ALWAYS BE PRINTED
              WHEN THE ACCOUNTING FILE IS NEWLY CREATED AND THE LAST RECORDED TIME IS ZERO
               SEE PAGE 67.

           5) 1SETMAP IS RUN IMMEDIATELY AFTER BRINGING THE SYSTEM UP
              UNLESS IT IS DESIRED TO REFRESH THE DISC, IN WHICH CASE, IT IS RUN
              IMMEDIATELY AFTER 1REFRESH.  1SETMAP READS THE MAPS FROM THE DISC
              AND PROVIDES THE MONITOR WITH THE NUMBER OF DBITS IN EACH, IT ALSO
              TELLS THE MONITOR IF ANY OF THE MAPS ARE BAD.  1SETMAP ALSO SETS
              THE ACCOUNTING POINTERS AND BUILDS THE EXECUTIVE'S OVERFLOW 
              FILE DIRECTORY BIT MAP.  UPON COMPLETION IT ISSUES AN UP AND 
              STARTS THE COMMAND FILE (OPER)OPCOM, WHICH RUNS 1WSD.

SAMPLE OUTPUT:

-1SETMAP  (CR)

O.F. GRPS. LEFT:  292
ZONE 0  5238 DBITS
ZONE 1  6803 DBITS
ZONE 2  561 DBITS
ZONE 3  523 DBITS

DBITS:  6803

EOJ

AN UP HAS BEEN ISSUED

UAD VERSION R85.00

EXECD2    54334464
    ETC.

       IF A MAP IS BAD A 1SETMAP RUN WOULD LOOK AS FOLLOWS:

-1SETMAP  (CR)

O.F. GRPS. LEFT: 292
ZONE 0  MAP BAD
ZONE 1  6803 DBITS
ZONE 2  561 DBITS
ZONE 3  523 DBITS

DBITS:  6803

    ETC.


MAP

       THE PROGRAM MAP IS RUN IN THE USER NAME MAP.  THIS USER
IS LOGGED INTO PORT 1 BY THE EXECUTIVE WHEN THE SYSTEM IS BROUGHT UP,
AND THE PROGRAM MAP IS STARTED THRU THE MEDIA OF A INIT FILE.
NO OPERATOR INTERVENTION IS NECESSARY.  CARE SHOULD BE TAKEN NOT
TO HANG THIS USER AS HE CANNOT BE RESTARTED WITHOUT TAKING THE
SYSTEM DOWN AND BRINGING IT UP AGAIN.  IF MAP IS NOT RUNNING
DBITS WILL NOT BE RETURNED TO THE DISC VERSIONS OF THE MAPS.
:C:    1REFRESH
                               1REFRESH
                               --------

       THIS PROGRAM MAPS THE ENTIRE DISC AND WRITES THE INDIVIDUAL MAPS
TO THE DISC.  IT MUST BE RUN TO INITILIZE THE MAPPING SYSTEM AND IS
ALSO RUN WHENEVER IT IS CONSIDERED NECESSARY TO REFRESH THE DISC.
WHEN NECESSARY, 1REFRESH IS RUN BEFORE THE SYSTEM MAP IS SET
(SEE 1SETMAP BELOW.)  IF THE SYSTEM MAP HAS BEEN SET IT IS NECESSARY
TO TAKE THE SYSTEM DOWN AND BRING IT UP AGAIN BEFORE RUNNING 1REFRESH.

       THE DISC MUST BE REFRESHED PERIODICALLY FOR THE FOLLOWING
REASONS:

  1.  BAD MAPS

       IF THE SYSTEM GOES DOWN OR IS TAKEN DOWN WITHOUT INVOLKING THE
MONITOR'S CRASH ROUTINES, THE IN-CORE DISC MAP IS NOT WRITTEN BACK
ONTO THE DISC.  AS THE KEY WORD IN THE DISC VERSION OF THIS MAP WAS
SET TO ZERO WHEN FIRST READ INTO CORE IT IS KEYED AS A BAD MAP.  THIS
WILL OCCUR IF THE SYSTEM DOES DOWN DUE TO A POWER FAILURE, IF IT IS
HUNG IN A LOOP MAKING BREAKPOINT SWITCH 4 INEFECTIVE, OR IF THE
OPERATOR TAKES THE SYSTEM DOWN BY USE OF THE RUN-IDLE-STEP SWITCH.
IS IS RECOMMENDED THAT THE OPERATOR ALWAYS TAKE THE SYSTEM DOWN USING
THE EXECUTIVE CRASH COMMAND.

  2.  GRADUAL LOSS OF DBITS

       ALL DBITS MAY NOT BE RETURNED TO THE DISC VERSIONS OF THE MAPS
DUE TO:

       A.  UNPROCESSED DBITS IN THE MONITOR TABLE WHEN THE SYSTEM IS
           TAKEN DOWN.
       B.  CANCELLING USERS.  WHEN A USER IS CANCELLED HIS FILE DIR-
           ECTORY IS ERASED, HOWEVER, THE DELETE LOGIC IS NOT INVOLKED
           AND THE DBITS ARE NOT RECOVERED UNTIL THE NEXT DISC
           REFRESH.

       1REFRESH WILL REQUIRE FROM 20 MINUTES TO 45 MINUTES TO RUN
DEPENDING ON THE NUMBER OF FILES ON THE DISC.  A TYPICAL RUN OF
1REFRESH WOULD BE:

-1REFRESH  (CR)

NO. OF FILES:  5793

CONFLICT AT  55000174

TYPE YES TO DELETE BAD FILES  YES (CR)

DBITS:  0,5238
DBITS:  1,6803
DBITS:  2,561
DBITS:  3,523
DBITS:  4,0
DBITS:  5,0
DBITS:  6,0
DBITS:  7,0
EOJ
-

       IT SHOULD BE NOTED THAT RUNNING 1REFRESH DOES NOT SET THE SYSTEM
FLAG TO BEING MAPPED.  1SETMAP MUST BE RUN AFTER THE DISC IS REFRESHED
TO ACCOMPLISH THIS.
  zv