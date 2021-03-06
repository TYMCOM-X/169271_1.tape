:logfile RPG.LOG
;		[RPG BUILD INSTRUCTIONS]
;
;	Establish desired mode and tty characteristics:
PDP
TTY WIDTH 80
TTY FORM
;
;
;	Use the latest MACRO-10:
CTEST SETPROC MACRO=(FTSYS)MACRO
;
;	Compile, load and save RPG and modules:
LOAD/COMPILE/SSAVE:RPG RPGUNV.MAC,RPG.MAC,RPGINI.MAC,RPGMAI.MAC

;
;	Delete unnecessary files:
DELETE RPG.REL,RPGUNV.REL,RPGINI.REL,RPGMAI.REL
;
;	Get checksums and check version number, for the record:
R CKSUM
@RPG.FIL

get rpg
ver
e 137

;
;
;	Give executable program file HF license and ALL RUN RUN protection:
r setlic
rpg.shr,hf

decl all run run
rpg.shr
;
;
;	To install:
;	Save last version of executable as RPG.BAK, then
;	rename new version to SYS directory, thereby 
;	saving previous version and preserving new version's
;	established license and protection:
;		delete (sys) rpg.bak
;		ren (sys) rpg.shr, (sys) rpg.bak
;		ren rpg.shr, (sys) rpg.shr
;
;
;
;[END of RPG.CTL]
 