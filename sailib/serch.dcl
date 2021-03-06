external record!class fsm ( integer state0, state );

forward external record!pointer (fsm) procedure makFsm( 
			integer array equivs;
			reference record!pointer (any!class) find );

forward external record!pointer (any!class) procedure useFsm(
			record!pointer (fsm) state;
			reference integer count, bytepointer );

forward external record!pointer (any!class) procedure sosFsm(
			record!pointer (fsm) state;
			reference integer count, bytepointer );

forward external record!pointer (any!class) procedure useFst(
			record!pointer (fsm) state;
			reference string datastr );

forward external record!pointer (fsm) procedure mksfsm( 
			integer array equivs;
			reference set targetSet; boolean usePnames );

forward external set procedure ussFsm( record!pointer (fsm) state;
			reference integer count, bytepointer );

forward external set procedure ussFst( record!pointer (fsm) state;
			reference string datastr );

 