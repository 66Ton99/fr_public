; This file is distributed under a BSD license. See LICENSE.txt for details.

; data files

                bits    32

                section .data

                global  _DebugData
                global  _LoaderTune
                global  _LoaderTuneSize
                global  _Material11vsfr
                global  _Material11psfr
_DebugData:
_LoaderTune:
_LoaderTuneSize dd $-_LoaderTune
_Material11vsfr incbin  "../data/material11.vsfr"                
_Material11psfr incbin  "../data/material11.psfr"

%if 0
								global	_ResourceSize
								global  _Resource
_Resource				incbin	"demo_resource.resx"
_ResourceSize:  dd      $-_Resource
%endif
