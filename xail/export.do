COMMENT    VALID 00002 PAGES
C REC  PAGE   DESCRIPTION
C00001 00001
C00002 00002	BATCH COMMANDS TO CREATE EXPORT SAIL  (BATCH/NOW/DO @EXPORT.DO[X,AIL])	
C00005 ENDMK
C;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              ;BATCH COMMANDS TO CREATE EXPORT SAIL  (BATCH/NOW/DO @EXPORT.DO[X,AIL])	
;It might not be necessary to do all this cruft, unless either		
;(a) someone has deleted some of the files (DIR @FILES[X,AIL] should	
;    give no "FILE NOT FOUND" messages), or				
;(b) some change has been made to SAIL or its friends since the last	
;    time the export files were created (this is quite likely).		
ALIAS X,AIL

LOAD/SAV FAIL.SAV_NOSTAN+FAIL[CSP,SYS]	;export FAIL
SAV FAIL	;until MJC gets alternate processors with extensions working

;get files for runtime routines
RESOURCES	;should show at least 300 tracks left for DSK
COPY/Q SCISS.DMP[S,AIL],HEAD,ORDER,GOGOL,TRIGS,STRSER,IOSER,ARYSER,RECSER
COPY/Q NWORLD[S,AIL],LEPRUN,MESPRO,WRDGET,SPARES
COPY/Q HEAD_NOSTAN,HEAD	;Prefix export switch settings before scissoring

;assemble library
RU SCISS
DEC
Y

Y

;runtimes with symbols
COM/PROC DSK:FAIL RUNTIM=HEAD(LR)+ORDER+GOGOL+TRIGS+STRSER+IOSER
+ARYSER+RECSER+NWORLD+LEPRUN+MESPRO+WRDGET+SPARES
DEL/Q SCISS.DMP,ORDER,GOGOL,TRIGS,STRSER,IOSER,ARYSER,RECSER
DEL/Q NWORLD,LEPRUN,MESPRO,WRDGET,SPARES


;get files for compiler, assemble and load debugging version
COPY/Q DB[S,AIL],SAIL,PARSE,HEL,SYM,GEN,ARRAY,EXPRS,STATS,LEAP,TOTAL,PROCSS,COMSER
COM @THAT
DEL/Q DB,HEAD,SAIL,PARSE,HEL,PROD,SYM,GEN,ARRAY,EXPRS,STATS,LEAP,TOTAL,PROCSS,COMSER
R LOADER
/SSAIL,/LLIBSA8,/V
SAV SAIL


;procedure descriptors for BAIL predeclared runtimes
COPY/Q BPDAHD.FAI[S,AIL],BSM1HD.FAI

;;;;COMPILE/PROC RTRAN[S,AIL] RESTAB=PROD+FOO2
COMPILE/PROC DSK:FAIL BPDAHD+<BAICLC,BAIIO1,BAIIO2,BAIMSC,BAIPRC>
EXECUTE/PROC DSK:FAIL BAISM1=BSM1HD+BAISM1
DEL/Q BPDAHD.FAI,BSM1HD.FAI,BAISM1.REL
DEL/Q FAIL.DMP


;export BAIL
RU SAIL
BAIL_BAIL


ALIAS
;Now do this:
;COPY MTA:_@FILES[X,AIL]
;good luck!
                                                     