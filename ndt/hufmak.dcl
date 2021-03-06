
forward external integer procedure hufmak( integer array frequencies;
						integer inclusion(0) );
COMMENT
error returns:	-1= no characters to build tree for
		-2= not enough room in array TREE

	(1) Expects TREE[] and TREE.0 as external integers 
		(use module TREE, TREE.0 is TREE[0])
	(2) Expects priority queue routines .POP.PQ, .MEZ.PQ [mod=PRI]
	(3) Expects 2 storage routines: GET3S and FREE3S
		linked.list.of.frees_ GET3S
		FREE3S( linked.list.of.frees )
	    The elements on the list should be at least 3 words long
		(counting the link word), and should be address-linked
		with a zero terminator (ie memory[free] = next.free)
	    Storage is asked for as needed, but released all at once.
	    The maximum number needed will be total.size(frequencies).
	(4) frequencies should contain at least 2 included entry
		inclusion: 0=use only positive frequencies
			  -1=use only non-negative frequencies
			   1=use all frequencies (?)
	(5) creates a huffman code tree in TREE[]
		rh(tree[0]) is node number of top of tree
		tree entries are left.link,,right.link
		where the links are 1:toptree-1 for internal nodes,
		and '774000 LOR frequency.index for leaves.
;

 