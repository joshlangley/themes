#!/bin/bash
# install Gamma.Gold mouse cursors

NAME="Gamma.Gold"
INST_DIR="${HOME}/.icons/${NAME}"
CURS_DIR="${INST_DIR}/cursors"

if [ -d $INST_DIR ]
then rm -f ${INST_DIR}/index.theme
else mkdir $INST_DIR
fi
cp index.theme $INST_DIR

# copy all the cursors
if [ -d $CURS_DIR ]
then rm -f ${CURS_DIR}/*
else mkdir $CURS_DIR
fi
cp cursors/* $CURS_DIR

# This script must be run in a terminal.
# Attempt to copy default image for Cinnamon cursor theme.
THUMBS_DIR="/usr/share/cinnamon/thumbnails/cursors"
if [ -d $THUMBS_DIR ]
then
    sudo cp "${NAME}.png" $THUMBS_DIR
    sudo -k
fi

# create symbolic links
cd $CURS_DIR

ln -sf "alias"      dnd-link
ln -sf all-scroll   all_scroll
ln -sf cell         plus
ln -sf cell         cross
ln -sf col-resize   split_h
ln -sf copy         dnd-copy
ln -sf crossbones   pirate
ln -sf default      left_ptr
ln -sf down-arrow   sb_down_arrow
ln -sf e-resize     right_side
ln -sf ew-resize    sb_h_double_arrow
ln -sf "help"       question_arrow
ln -sf "help"       dnd-ask
ln -sf left-arrow   sb_left_arrow
ln -sf move         fleur
ln -sf move         dnd-move
ln -sf ne-resize    top_right_corner
ln -sf no-drop      dnd-none
ln -sf not-allowed  crossed_circle
ln -sf n-resize     top_side
ln -sf ns-resize    sb_v_double_arrow
ln -sf nw-resize    top_left_corner
ln -sf pointer      hand1
ln -sf pointer      hand2
ln -sf right_ptr    draft_large
ln -sf right_ptr    draft_small
ln -sf right_ptr    arrow
ln -sf right-arrow  sb_right_arrow
ln -sf row-resize   split_v
ln -sf se-resize    bottom_right_corner
ln -sf s-resize     bottom_side
ln -sf sw-resize    bottom_left_corner
ln -sf text         xterm
ln -sf up-arrow     center_ptr
ln -sf up-arrow     sb_up_arrow
ln -sf "wait"       watch
ln -sf w-resize     left_side

# Mozilla symbolic links
ln -sf "alias"        0876e1c15ff2fc01f906f1c363074c0f	# moz-alias
ln -sf col-resize     043a9f68147c53184671403ffa811cc5	# moz-col-resize
ln -sf copy           08ffe1cb5fe6fc01f906f1c063814ccf	# moz-copy
ln -sf context-menu   08ffe1e65f80fcfdf9fff11263e74c48	# moz-menu (left_ptr + menu)
ln -sf grabbing       208530c400c041818281048008011002	# moz-hand-grabbing (closed hand)
ln -sf grab           5aca4d189052212118709018842178c0	# moz-hand-grab (open hand)
ln -sf "help"         5c6cd98b3f3ebcb1f9c7f1c204630408	# moz-question-arrow
ln -sf nesw-resize    50585d75b494802d0151028115016902	# moz-nesw-resize
ln -sf not-allowed    03b6e0fcb3499374a867d041f52298f0	# moz-not-allowed
ln -sf nwse-resize    38c5dff7c7b8962045400281044508d2	# moz-nwse-resize
ln -sf progress       08e8e1c95fe2fc01f976f1e063a24ccd	# moz-spinning (left_ptr + watch)
ln -sf row-resize     c07385c7190e701020ff7ffffd08103c	# moz-row-resize
ln -sf vertical-text  048008013003cff3c00c801001200000	# moz-vertical-text
ln -sf zoom-in        f41c0e382c94c0958e07017e42b00462	# moz-zoom-in
ln -sf zoom-out       f41c0e382c97c0938e07017e42800402	# moz-zoom-out

# Nautilus symbolic links
ln -sf copy    1081e37283d90000800003c07f3ef6bf 	# nautilus copy
ln -sf move    9081237383d90e509aa00f00170e968f 	# nautilus move
ln -sf pointer 3085a0e285430894940527032f8b26df 	# nautilus link

# KDE/Qt symbolic links
ln -sf col-resize   028006030e0e7ebffc7f7070c0600140	# split_h
ln -sf copy         6407b0e94181790501fd1e167b474872	# copy
ln -sf ew-resize    14fef782d02440884392942c11205230	# sb_h_double_arrow
ln -sf "help"       d9ce0ab605698f320427677b458ad60b	# question_arrow
ln -sf move         4498f0e0c1937ffe01fd06f973665830	# move
ln -sf nesw-resize  fcf1c3c7cd4491d801f1e1c78f100000	# fd_double_arrow
ln -sf not-allowed  03b6e0fcb3499374a867c041f52298f0	# crossed_circle {dnd-none}
ln -sf ns-resize    2870a09082c103050810ffdffffe0204	# sb_v_double_arrow
ln -sf nwse-resize  c7088f0f3e6c8088236ef8e1e3e70000	# bd_double_arrow
ln -sf pointer      9d800788f1b08800ae810202380a0822	# hand1
ln -sf pointer      e29285e634086352946a0e7090d73106	# hand2
ln -sf pointer      640fb0e74195791501fd1ed57b41487f	# link
ln -sf progress     3ecb610c1bf2410f44200f48c40d3599	# left_ptr_watch
ln -sf progress     9116a3ea924ed2162ecab71ba103b17f	# left_ptr_watch
ln -sf row-resize   00008160000006810000408080010102	# split_v
ln -sf "wait"       0426c94ea35c87780ff01dc239897213	# wait

# ? +++++++ ?
ln -sf copy    b66166c04f8c3109214a4fbd64a50fc8
ln -sf move    fcf21c00b30f7e3f83fe0dfd12e71cff
ln -sf pointer a2a266d0498c3104214a47bd64ab0fc8
# ? +++++++ ?



