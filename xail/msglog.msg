COMMENT    VALID 00002 PAGES
C REC  PAGE   DESCRIPTION
C00001 00001
C00002 00002	    DEC-73  1252		1,RFS
C00004 ENDMK
C;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   DEC-73  1252		1,RFS
 Guys -- got your message ok., and have taken cognizance.  I am
 a little bit annoyed that cosmetic changes were made after transferring
 .  Note that I have found KKP's bug, and made fixes to GOGOL on both
 areas, together with an addemdum to LOG(q.v.) and a real honest bug
 number.  I want you all to be proud of me for following the
 procedure.
 
 However, I did not re-compile SAIL for here (so that KKP will not complain).
 All that is required is to make a new segment.
 
 Cheers.  NIH number is (301) 496-4823 if you find out anything.
 I will probably call anyway.

08-DEC-73  0257		1,DCS
 found bug i think.  see mail.box[a610le03] at 
 cmub.  His fault, basically, tho we should have issued
 a diagnostic and didn't (do in simple case) -- problem is
 comparing itemvar to -1, messing up reserved word table or random
 other locs when trying to release -1 as an item in BOREL.  Still
 don't know why no diagnostic.  Lee will probaby keep a copy which
 has error, so can be debugged (why no diagnostic).  There
 may also be other troubles, too, but don't thinkso.
 DCS
                                                                                                                                                        