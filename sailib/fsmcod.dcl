0010�	external record!class fsm ( integer state0, state );
0020�	
  0030�	external record!pointer (fsm) procedure makFsm( integer array equivs;
   0040�				reference record!pointer (any!class) find );
0050�	
  0060�	external record!pointer (any!class) procedure useFsm(
    0070�				record!pointer (fsm) state;
  0080�				reference integer count, bytepointer );
0090�	
  0100�	external record!pointer (any!class) procedure useFst(
    0110�				record!pointer (fsm) state;
  0120�				reference string datastr );
  