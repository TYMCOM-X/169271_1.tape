:C: BATCH PROCESSING PROGRAMS
                               BATCH PROCESSING PROGRAMS
                               -------------------------

           1) 1CLEAR -CLEARS THE INPUT BATCH REGISTER
           2) 1ACCOUNTING - COMMAND : BATCH - USED TO INPUT BATCH CHARGES.
           3) BATCH- USED TO INPUT A BATCH REQUEST.


      EXAMPLES:

      -1CLEAR C.R.
      ENTER YOUR NAME PLEASE: SMITH C.R.
      ENTER YOUR PASSWORD PLEASE: SECRET C.R.

      THIS FILE WAS  LAST CLEARED 5/21/10:19

      NOTE: AT THIS TIME THE BATCH PROCESSING REQUESTS WILL TYPE OUT ON THE TTY
      IF ANY WERE SUBMITTED DURING THE LAPSE TIME BETWEEN THE  LAST TIME
      1CLEAR HAS BEEN RUN, IF NO REQUESTS ARE IN THE STORAGE FILE THE PROGRAM
      WILL PRINT OUT THE DATE AND  TIME AND TERMINATE. IF A JOB OR JOBS ARE IN , THE PROGRAM WILL
      PRINT OUT THE JOBS AND TERMINATE IN THE SAME WAY.



      -1ACCOUNTING C.R.
      ENTER YOUR NAME PLEASE: SMITH C.R.
      ENTER YOUR PASSWORD:  SECRET C.R.
      COMMAND: BATCH C.R.
      COUNTRY: US

      NOTE : AT THIS TIME THE ACCOUNTING PROGRAM WILL BUILD ITS BACKUP
      FILES AND ASK FOR  THE JOB NUMBER. YOU SHOULD ENTER  ALL THE INFOR--
      MATION ON THE REQUEST AS ASKED FOR. AFTER  YOU HAVE ENTERED THE INFOR-
      MATION IT WILL ASK IF ALL IS CORRECT AND YOU MAY  ANSWER  Y OR  N
      IF N IS USED IT WILL ASK YOU WHAT NUMBER YOU WANT TO CHANGE, YOU
      SHOULD ENTER AT THAT TIME THE NUMBER YOU WISH TO CHANGE. IF Y
      WAS USED IT WILL ASK YOU  IF THERE IS ANOTHER JOB FOR THIS
      REQUEST AND YOU MAY ENTER EITHER Y OR N. IF N IS USED IT WILL ASK
      YOU IF THERE IS ANOTHER JOB TO  ENTER. IF YES THEN YOU FOLLOW THE
      SAME PROCEEDURE  . IF N THEN THE PROGRAM WILL TERMINATE.


      -BATCH C.R.
      IS THIS REQUEST FOR INHOUSE (Y OR N): Y  C.R.
      THE PROGRAM WILL PRINT OUT THE PROCESSING NUMBER AND THE
      DATE AND TIME ALONG WITH THE ACCOUNT  AND USER NAME YOU ARE  LOGGED
      INTO AT THAT TIME. IT THEN WILL ASK FOR OTHER INFORMATION AND YOU
      SHOULD JUST SIMPLY ANSWER ALL QUESTIONS AS THEY COME OUT. THE
      WORK TO BE PERFORMED: IS TERMINATED BY A CONTROL D. THE DELIVERY
      INSTRUCTIONS ARE ALSO TERMINATED  WITH A CONTROL D.
      WHEN THE DELIVERY  INSTRUCTIONS ARE TERMINATED THE PROGRAM WILL
      TERMINATE AND PUT THE REQUEST IN THE 1CLEAR REGISTER TO BE CLEARED
      OUT BY THE OPERATOR.
 