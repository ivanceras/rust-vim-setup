
# Basic Controls
	CTRL-t 			open or close nerdtree
	CTRL-n 			toggle relative / absolute numbering
	CTRL-w w 		switch focus on nerdtree and open windows
	h,j,k,l			navigate the cursor left, down, up, right respectively
	i				insert mode, you can start typing in your code
	<ESC>   		gp back to normal/default mode, where you can issue vi commands
	:w      		write/save the file, you are editing
	:wqa   			save the file, then quit the editor closing vi including the files tab
	<F2>			set focus on the nerd tree

## Rust specific commands

	CTRL-x CTRL-o   activate auto rust autocompeletion (example: type in `String::` then press CTRL-x CTRL-o then select from the drop down list the appropriate functions)
	gd              go to function/struct/variable declaration of the focused item ( this is equivalent to eclipse' open declaration )
	gD              go to declaration split open in window tab
	:bp             to go back to the previous edited file (very useful when following a declaration)
	:b <part of filename>  when you have open a lot of files, this comes in handy in showing back the previously open files


# NERDTree specific commands

    o       open files, directories and bookmarks
    go      open selected file, but leave cursor in the NERDTree
    t       open selected node/bookmark in a new tab
    T       same as 't' but keep the focus on the current tab
    i       open selected file in a split window
    gi      same as i, but leave the cursor on the NERDTree
    s       open selected file in a new vsplit
    gs      same as s, but leave the cursor on the NERDTree
    O       recursively open the selected directory
    x       close the current nodes parent
    X       recursively close all children of the current node
    e       edit the current dif

    ENTER              open files, directories and bookmarks
    double-click       open files, directories and bookmarks

    D       delete the current bookmark

    P       jump to the root node
    p       jump to current nodes parent
    K       jump up inside directories at the current tree depth
    J       jump down inside directories at the current tree depth
    CTRL-J  jump down to the next sibling of the current directory
    CTRL-K  jump up to the previous sibling of the current directory

    C       change the tree root to the selected dir
    u       move the tree root up one directory
    U       same as 'u' except the old root node is left open
    r       recursively refresh the current directory
    R       recursively refresh the current root
    m       display the NERD tree menu
    cd      change the CWD to the dir of the selected node

    I       toggle whether hidden files displayed
    f       toggle whether the file filters are used
    F       toggle whether files are displayed
    B       toggle whether the bookmark table is displayed

    q       close the NERDTree window
    A       zoom (maximize/minimize) the NERDTree window
    ?       toggle the display of the quick help
    
    
    
    
#Cursor movement

    h   	move left
    j   	move down
    k   	move up
    l   	move right
    
    	*Note: Prefix a cursor movement command with a number to repeat it. For example, 4j moves down 4 lines.*

    CTRL-b   page up
    CTRL-f   page down
    %   	jump to matching brace
    w   	jump by start of words (punctuation considered words)
    W   	jump by words (spaces separate words)
    e   	jump to end of words (punctuation considered words)
    E   	jump to end of words (no punctuation)
    b   	jump backward by words (punctuation considered words)
    B   	jump backward by words (no punctuation)
    ge  	jump backward to end of words (punctuation considered words)
    gE  	jump backward to end of words (no punctuation)
    0   	(zero) start of line
    ^   	first non-blank character of line
    $   	end of line
    gg   	go to first line
    G		go to last line of the file
    [N]G   	go To line N, (example 20G  - go to Line 20)
    
    
# Inserting/Appending text
    
    i  		start insert mode at cursor
    I  		insert at the beginning of the line
    a  		append after the cursor
    A  		append at the end of the line
    o  		open (append) blank line below current line (no need to press return)
    O  		open blank line above current line
ea  		append at end of word
    ESC  	exit insert mode, to normal mode
    
# Editing
    
    r    	replace a single character (does not use insert mode)
    J    	join line below to the current one
    cc  	change (replace) an entire line
    cw    	change (replace) to the end of word
    c$   	change (replace) to the end of line
    s   	delete character at cursor and subsitute text
    S   	delete line at cursor and substitute text (same as cc)
    xp   	transpose two letters (delete and paste, technically)
    u   	undo
    CTRL-r  redo
    .  		repeat last command
    ~  		switch case
    g~iw   	switch case of current word
    gUiw  	make current word uppercase
    guiw   	make current word lowercase
    >>  	indent line one column to right
    << 		indent line one column to left
    == 		auto-indent current line
    ddp		swap current line with next
    ddkP	swap current line with previous
    
# Cut and Paste
    
    dd  	delete (cut) a line
    dw  	delete the current word
    x  		delete current character
    X  		delete previous character
    D   	delete from cursor to end of line
    yy 		yank (copy) a line
    2yy	 	yank 2 lines
    yw 		yank word
    y$ 		yank to end of line
    p 		put (paste) the clipboard after cursor/current line
    P 		put (paste) before cursor/current line
    :set paste  avoid unexpected effects in pasting
    
# Visual Mode - Marking, Highligting text
    
    v 		start visual mode, mark lines, then do command (such as y-yank)
    V 		start Linewise visual mode (i.e selecting the whole line at the cursor location )
    o 		move to other end of marked area
    U 		upper case of marked area
    CTRL-v 	start visual block mode (that is, selecting text in rectangular area marker)
    O 		move to Other corner of block
    aw 		mark a word
    ab 		a () block (with braces)
    aB 		a {} block (with brackets)
    ib 		inner () block
    iB 		inner {} block
    ESC 	exit visual mode, go to normal mode
   
   	*Note: right after entering visual mode, you can use the same cursor movement commands in the normal/default mode to highlight your selection*
    
# Visual Mode

## Commands
    
    > 		shift right the marked text
    <		shift left the marked text
    c		change (replace) marked text
    y 		yank (copy) marked text
    d 		delete (cut) marked text
    ~		switch case of the marked text
    
## Cut and paste
    
    1. Place the cursor at the start of your text.
    2. ma (marks the location as point 'a')
    3. Place the cursor at the end of your text.
    4. d'a (cuts back to location 'a')
    
## Exiting
    
    :w - write (save) the file, but don't exit
    :wq - write (save) and quit
    :x - same as :wq
    :q - quit (fails if anything has changed)
    :q! - quit and throw away changes
    
# Search/Replace
    
    /pattern 		search for pattern
    ?pattern  		search backward for pattern
    n  				repeat search in same direction
    N  				repeat search in opposite direction
    :%s/old/new/g  	replace all old with new throughout file
    :%s/old/new/gc  replace all old with new throughout file with confirmations
    
# Working with multiple files
    
    :e filename  	Edit a file in a new buffer	
    :n **/*.pl 		Open all perl files under the current directory, recursively
    :tabe filename  Edit a file in a new tab (Vim7, gVim)
    :bnext (or :bn) go to next buffer
    :bprev (or :bp) go to previous buffer
    :bd  			delete a buffer (close a file)
    :sp filename  	Open a file in a new buffer and split window
    CTRL-w s  		Split windows
    CTRL-w w  		switch between windows
    CTRL-w q  		Quit a window
    CTRL-w v  		Split windows vertically
    CTRL-w x  		Swap the current window with the next one

### Moving the cursor in between windows
    CTRL-w h  		Move cursor left to the current window
    CTRL-w k  		Move cursor top to the current window
    CTRL-w j  		Move cursor bottom to the current window
    CTRL-w l  		Move cursor right to the current window

## Moving windows with respect to the current focused window
    CTRL-w H  		Move current window to the far left
    CTRL-w K  		Move current window to the top
    CTRL-w J  		Move current window to the bottom
    CTRL-w L  		Move current window to the right
    

    
# Changeset, last edit jumping back and forth
	`.  		jump to the last edit
	g;  		go to previous edit
	g,   		go to next edit
	CTRL-o  	go to previous edit
	CTRL-i  	to to next edit

