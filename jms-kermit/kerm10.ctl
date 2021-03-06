! Control file to build KERMIT-10			5-July-1983
!
! Files required:
!	KERUNV.MAC - Universal file
!	KERMIT.MAC - Command scanner and system interface
!	KERSYS.MAC - Operating system routines for KERMSG
!	KERWLD.MAC - Wild card processing for KERMIT
!	KERMSG.BLI - Common Bliss message processing
!	KERTT.BLI  - Common Bliss terminal routines
!	KERGLB.BLI - Common Bliss global variables
!	KERCOM.REQ - Require file for KERMSG
!	KERERR.R36 - Require file for KERMSG
!	KERMIT.CCL - Linking instructions
!
! The following are required from various Digital distribution tapes
!
! Software built from sources on the 7.01A CUSP tape
!
!	UNV:GLXMAC.UNV - Universal GLXLIB (Galaxy library)
!	UNV:ORNMAC.UNV - Universal for OPR command interface
!	REL:GLXLIB.REL - Loadable GLXLIB library
!	REL:OPRPAR.REL - Loadable OPR command module
!
! Software distributed with the RMS-10.
!
!	SYS:B361LB.REL - Bliss-36 library.
!
.COMPILE KERUNV.MAC
.COMPILE KERMIT.MAC
.COMPILE KERSYS.MAC
.COMPILE KERWLD.MAC
.ERROR ?
.R BLISS
.IF (ERROR).GOTO NOBLIS
*KERMSG=KERMSG.BLI
*KERTT=KERTT.BLI
*KERGLB=KERGLB.BLI
.GOTO LOAD
!
! Here if we got an error running BLISS.  Assume we should build from
! the MACRO sources.
!
NOBLIS::
.COMPILE KERMSG.MAC
.COMPILE KERTT.MAC
.COMPILE KERGLB.MAC
!
! Here to load KERMIT.
!
LOAD::
.R LINK
*@KERMIT
.DIRECT KERMIT.*
   