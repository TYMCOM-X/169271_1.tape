forward external integer procedure BLOAT(
	reference integer input!pseudo!bytes;
	integer inAobjnPointer; integer procedure moreIn;
	integer outAobjnPointer; integer procedure moreOut );

COMMENT
bitsConsumed_ BLOAT(@Ibytes, inABJ, iprocMoreIn, outABJ, iprocMoreOut)
!SKIP! gets final output byte pointer.
TREE.0 is the base of the Huffman tree to interpret the bit stream from
	(set up by module TREE)
;
    