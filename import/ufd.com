BIGDEB.CMD         ;Command file for debugging the program
GETYR .FOR         ;subroutine to get the start/stop dates
CENTER.FOR         ;subroutine to CENTER the headings (Days of the
                    ;weeks)
CLEARL.FOR         ;subroutine to clear the print-line
DMSI  .HLP %DMS    ;DMS, Individual mode HELP file
DMSI  .RNH %DMS    ;DMS, Individual mode HELP source
DATES .FOR         ;subroutine to process the appointment-event files
DMS   .LOW %DMS    ;DMS, Tymshare version
DMS   .SHR %DMS    ;DMS, Tymshare version
DMS   .MAC %DMS    ;DMS, Tymshare version source file
DMS   .CAB %DMS    ;DMS, Backup source in case...
DMS   .HLP %DMS    ;DMS, HELP file
DMS   .RNH %DMS    ;DMS, HELP source file
DMS   .COR %DMS    ;DMS, Soup correction file
DMS   .DOC %DMS    ;DMS, DOCument file
DMS   .DEC %DMS    ;DMS, TOPS-10 Source
DMS   .UTH %DMS    ;DMS, Edit history at Univ of Tex @ Austin
DMS   .COM %DMS    ;DMS, Comment file for DMS software
DMS   .RND %DMS    ;DMS, Document source file
GETNAM.FOR         ;subroutine to read a NAME,NUMBER in any order
SETDAY.FOR         ;subroutine to set the message-text line into the
                    ;INF array
DMSSW .HLP %DMS    ;DMS, Switches HELP file
DMSSW .RNH %DMS    ;DMS, Switches HELP source
DMSSW .UTH %DMS    ;DMS, UTH Switches, long.
DMSCOM.HLP %DMS    ;DMS, Commands HELP file
DMSIE .HLP %DMS    ;DMS, Iextension HELP file
DMSCOM.RNH %DMS    ;DMS, Command HELP source
DMSIE .RNH %DMS    ;DMS, Iextension HELP source
CARL  .MAC %UNV    ;Personal MACRO definitions
CARL  .UNV %UNV    
DMSS  .HLP %DMS    ;DMS, Sort Switch HELP file
DMSS  .RNH %DMS    ;DMS, Sort Switch HELP source
UFD   .COM         ;SYS, DMS comment file for this UFD
BIGCAL.COM         ;DIR (DMS) comment file
BIGCAL.DOC         ;DOCUMENTATION
BIGCAL.EXE         ;Runnable Calendar program
BIGCAL.INF         ;demonstration date-appointment file
BIGCAL.RND         ;DOCUMENTATION source file
HEADER.FOR         ;subroutine to print the monthly headers
MATCH .FOR         ;subroutine to check for a match
PRINTM.FOR         ;subroutine to PRINT out an entire MONTH
BIGCAL.CMD         ;Command file for building the program
BIGCAL.FOR         ;main program source
GREGOR.FOR         ;subroutine to determine an absolute Gregorian date
                    ;1-n
LEAPYR.FOR         ;subroutine to determine 0 or 1 for LEAP year
SETWEE.FOR         ;subroutine to setup a week of date info at a time
   