; This file is distributed under a BSD license. See LICENSE.txt for details.

; data files

                bits    32

                section .data

                global  _PlayerDemo
                global  _PlayerKKrieger
                global  _PlayerIntro

%ifdef WZ3_DEBUG
%define PLAYER_DEMO_PATH "../player_demo/debug/player_demo.exe"
%else
%define PLAYER_DEMO_PATH "../player_demo/release/player_demo.exe"
%endif

_PlayerDemo     incbin  PLAYER_DEMO_PATH
_PlayerKKrieger incbin  PLAYER_DEMO_PATH
		;incbin  "../player_kkrieger/release/player_kkrieger.exe"
_PlayerIntro    incbin  PLAYER_DEMO_PATH
