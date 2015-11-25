# Microsoft Developer Studio Generated NMAKE File, Based on RTPMPComponentVideo.dsp
!IF "$(CFG)" == ""
CFG=RTPMPComponentVideo - Win32 Debug
!MESSAGE No configuration specified. Defaulting to RTPMPComponentVideo - Win32\
 Debug.
!ENDIF 

!IF "$(CFG)" != "RTPMPComponentVideo - Win32 Release" && "$(CFG)" !=\
 "RTPMPComponentVideo - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "RTPMPComponentVideo.mak"\
 CFG="RTPMPComponentVideo - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "RTPMPComponentVideo - Win32 Release" (based on\
 "Win32 (x86) Dynamic-Link Library")
!MESSAGE "RTPMPComponentVideo - Win32 Debug" (based on\
 "Win32 (x86) Dynamic-Link Library")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 

!IF  "$(CFG)" == "RTPMPComponentVideo - Win32 Release"

OUTDIR=.\Release
INTDIR=.\Release
# Begin Custom Macros
OutDir=.\Release
# End Custom Macros

!IF "$(RECURSE)" == "0" 

ALL : "$(OUTDIR)\RTPMPComponentVideo.dll"

!ELSE 

ALL : "$(OUTDIR)\RTPMPComponentVideo.dll"

!ENDIF 

CLEAN :
	-@erase "$(INTDIR)\ComponentVideoPayload.obj"
	-@erase "$(INTDIR)\RTPMPComponentVideo.obj"
	-@erase "$(INTDIR)\vc50.idb"
	-@erase "$(OUTDIR)\RTPMPComponentVideo.dll"
	-@erase "$(OUTDIR)\RTPMPComponentVideo.exp"
	-@erase "$(OUTDIR)\RTPMPComponentVideo.ilk"
	-@erase "$(OUTDIR)\RTPMPComponentVideo.lib"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MT /W3 /GX /O2 /I ".\Headers" /I "..\..\QTDevWin\CIncludes"\
 /I "..\..\QTDevWin\ComponentIncludes" /D "WIN32" /D "NDEBUG" /D "_WINDOWS"\
 /Fp"$(INTDIR)\RTPMPComponentVideo.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\"\
 /FD /c 
CPP_OBJS=.\Release/
CPP_SBRS=.

.c{$(CPP_OBJS)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(CPP_OBJS)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(CPP_OBJS)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.c{$(CPP_SBRS)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(CPP_SBRS)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(CPP_SBRS)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

MTL=midl.exe
MTL_PROJ=/nologo /D "NDEBUG" /mktyplib203 /o NUL /win32 
RSC=rc.exe
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\RTPMPComponentVideo.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=qtmlclient.lib qtsclient.lib kernel32.lib user32.lib gdi32.lib\
 winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib\
 uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /dll\
 /incremental:yes /pdb:"$(OUTDIR)\RTPMPComponentVideo.pdb" /machine:I386\
 /def:".\RTPMPComponentVideo.def" /out:"$(OUTDIR)\RTPMPComponentVideo.dll"\
 /implib:"$(OUTDIR)\RTPMPComponentVideo.lib" /libpath:"..\..\QTDevWin\Libraries"\
 
DEF_FILE= \
	".\RTPMPComponentVideo.def"
LINK32_OBJS= \
	"$(INTDIR)\ComponentVideoPayload.obj" \
	"$(INTDIR)\RTPMPComponentVideo.obj"

"$(OUTDIR)\RTPMPComponentVideo.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

SOURCE=$(InputPath)
PostBuild_Desc=Creating qtx file
DS_POSTBUILD_DEP=$(INTDIR)\postbld.dep

ALL : $(DS_POSTBUILD_DEP)

# Begin Custom Macros
OutDir=.\Release
# End Custom Macros

$(DS_POSTBUILD_DEP) : "$(OUTDIR)\RTPMPComponentVideo.dll"
   MyRezWackRelease.bat
	echo Helper for Post-build step > "$(DS_POSTBUILD_DEP)"

!ELSEIF  "$(CFG)" == "RTPMPComponentVideo - Win32 Debug"

OUTDIR=.\Debug
INTDIR=.\Debug
# Begin Custom Macros
OutDir=.\Debug
# End Custom Macros

!IF "$(RECURSE)" == "0" 

ALL : "$(OUTDIR)\RTPMPComponentVideo.dll"

!ELSE 

ALL : "$(OUTDIR)\RTPMPComponentVideo.dll"

!ENDIF 

CLEAN :
	-@erase "$(INTDIR)\ComponentVideoPayload.obj"
	-@erase "$(INTDIR)\RTPMPComponentVideo.obj"
	-@erase "$(INTDIR)\vc50.idb"
	-@erase "$(INTDIR)\vc50.pdb"
	-@erase "$(OUTDIR)\RTPMPComponentVideo.dll"
	-@erase "$(OUTDIR)\RTPMPComponentVideo.exp"
	-@erase "$(OUTDIR)\RTPMPComponentVideo.ilk"
	-@erase "$(OUTDIR)\RTPMPComponentVideo.lib"
	-@erase "$(OUTDIR)\RTPMPComponentVideo.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MTd /W3 /Gm /GX /Zi /Od /I ".\Headers" /I\
 "..\..\QTDevWin\CIncludes" /I "..\..\QTDevWin\ComponentIncludes" /D "WIN32" /D\
 "_DEBUG" /D "_WINDOWS" /Fp"$(INTDIR)\RTPMPComponentVideo.pch" /YX\
 /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 
CPP_OBJS=.\Debug/
CPP_SBRS=.

.c{$(CPP_OBJS)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(CPP_OBJS)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(CPP_OBJS)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.c{$(CPP_SBRS)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(CPP_SBRS)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(CPP_SBRS)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

MTL=midl.exe
MTL_PROJ=/nologo /D "_DEBUG" /mktyplib203 /o NUL /win32 
RSC=rc.exe
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\RTPMPComponentVideo.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=qtmlclient.lib qtsclient.lib kernel32.lib user32.lib gdi32.lib\
 winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib\
 uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /dll\
 /incremental:yes /pdb:"$(OUTDIR)\RTPMPComponentVideo.pdb" /debug /machine:I386\
 /def:".\RTPMPComponentVideo.def" /out:"$(OUTDIR)\RTPMPComponentVideo.dll"\
 /implib:"$(OUTDIR)\RTPMPComponentVideo.lib" /pdbtype:sept\
 /libpath:"..\..\QTDevWin\Libraries" 
DEF_FILE= \
	".\RTPMPComponentVideo.def"
LINK32_OBJS= \
	"$(INTDIR)\ComponentVideoPayload.obj" \
	"$(INTDIR)\RTPMPComponentVideo.obj"

"$(OUTDIR)\RTPMPComponentVideo.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

SOURCE=$(InputPath)
PostBuild_Desc=Creating qtx file
DS_POSTBUILD_DEP=$(INTDIR)\postbld.dep

ALL : $(DS_POSTBUILD_DEP)

# Begin Custom Macros
OutDir=.\Debug
# End Custom Macros

$(DS_POSTBUILD_DEP) : "$(OUTDIR)\RTPMPComponentVideo.dll"
   MyRezWackDebug.bat
	echo Helper for Post-build step > "$(DS_POSTBUILD_DEP)"

!ENDIF 


!IF "$(CFG)" == "RTPMPComponentVideo - Win32 Release" || "$(CFG)" ==\
 "RTPMPComponentVideo - Win32 Debug"
SOURCE=.\Sources\ComponentVideoPayload.c

!IF  "$(CFG)" == "RTPMPComponentVideo - Win32 Release"

DEP_CPP_COMPO=\
	"..\..\qtdevwin\cincludes\conditionalmacros.h"\
	"..\..\qtdevwin\cincludes\endian.h"\
	"..\..\qtdevwin\cincludes\mactypes.h"\
	".\headers\componentvideopayload.h"\
	

"$(INTDIR)\ComponentVideoPayload.obj" : $(SOURCE) $(DEP_CPP_COMPO) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "RTPMPComponentVideo - Win32 Debug"

DEP_CPP_COMPO=\
	"..\..\qtdevwin\cincludes\conditionalmacros.h"\
	"..\..\qtdevwin\cincludes\endian.h"\
	"..\..\qtdevwin\cincludes\mactypes.h"\
	".\headers\componentvideopayload.h"\
	

"$(INTDIR)\ComponentVideoPayload.obj" : $(SOURCE) $(DEP_CPP_COMPO) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=.\Sources\RTPMPComponentVideo.c

!IF  "$(CFG)" == "RTPMPComponentVideo - Win32 Release"

DEP_CPP_RTPMP=\
	"..\..\qtdevwin\cincludes\aedatamodel.h"\
	"..\..\qtdevwin\cincludes\aliases.h"\
	"..\..\qtdevwin\cincludes\appleevents.h"\
	"..\..\qtdevwin\cincludes\appletalk.h"\
	"..\..\qtdevwin\cincludes\codefragments.h"\
	"..\..\qtdevwin\cincludes\collections.h"\
	"..\..\qtdevwin\cincludes\components.h"\
	"..\..\qtdevwin\cincludes\conditionalmacros.h"\
	"..\..\qtdevwin\cincludes\controls.h"\
	"..\..\qtdevwin\cincludes\datetimeutils.h"\
	"..\..\qtdevwin\cincludes\dialogs.h"\
	"..\..\qtdevwin\cincludes\drag.h"\
	"..\..\qtdevwin\cincludes\endian.h"\
	"..\..\qtdevwin\cincludes\events.h"\
	"..\..\qtdevwin\cincludes\files.h"\
	"..\..\qtdevwin\cincludes\finder.h"\
	"..\..\qtdevwin\cincludes\fonts.h"\
	"..\..\qtdevwin\cincludes\icons.h"\
	"..\..\qtdevwin\cincludes\imagecompression.h"\
	"..\..\qtdevwin\cincludes\macerrors.h"\
	"..\..\qtdevwin\cincludes\macmemory.h"\
	"..\..\qtdevwin\cincludes\mactypes.h"\
	"..\..\qtdevwin\cincludes\macwindows.h"\
	"..\..\qtdevwin\cincludes\menus.h"\
	"..\..\qtdevwin\cincludes\mixedmode.h"\
	"..\..\qtdevwin\cincludes\movies.h"\
	"..\..\qtdevwin\cincludes\notification.h"\
	"..\..\qtdevwin\cincludes\osutils.h"\
	"..\..\qtdevwin\cincludes\patches.h"\
	"..\..\qtdevwin\cincludes\processes.h"\
	"..\..\qtdevwin\cincludes\qdoffscreen.h"\
	"..\..\qtdevwin\cincludes\qtstreamingcomponents.h"\
	"..\..\qtdevwin\cincludes\quickdraw.h"\
	"..\..\qtdevwin\cincludes\quickdrawtext.h"\
	"..\..\qtdevwin\cincludes\quicktimecomponents.h"\
	"..\..\qtdevwin\cincludes\quicktimemusic.h"\
	"..\..\qtdevwin\cincludes\quicktimestreaming.h"\
	"..\..\qtdevwin\cincludes\sound.h"\
	"..\..\qtdevwin\cincludes\standardfile.h"\
	"..\..\qtdevwin\cincludes\textcommon.h"\
	"..\..\qtdevwin\cincludes\textedit.h"\
	"..\..\qtdevwin\cincludes\utcutils.h"\
	"..\..\qtdevwin\cincludes\video.h"\
	"..\..\qtdevwin\componentincludes\componentdispatchhelper.c"\
	"..\..\qtdevwin\componentincludes\components.k.h"\
	"..\..\qtdevwin\componentincludes\qtstreamingcomponents.k.h"\
	".\headers\componentvideopayload.h"\
	".\headers\componentvideortp.h"\
	".\headers\componentvideortpresources.h"\
	".\headers\rtpmpcomponentvideo.h"\
	".\headers\rtpmpcomponentvideodispatch.h"\
	".\headers\rtpmpcomponentvideoresources.h"\
	

"$(INTDIR)\RTPMPComponentVideo.obj" : $(SOURCE) $(DEP_CPP_RTPMP) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "RTPMPComponentVideo - Win32 Debug"

DEP_CPP_RTPMP=\
	"..\..\qtdevwin\cincludes\aedatamodel.h"\
	"..\..\qtdevwin\cincludes\aliases.h"\
	"..\..\qtdevwin\cincludes\appleevents.h"\
	"..\..\qtdevwin\cincludes\appletalk.h"\
	"..\..\qtdevwin\cincludes\codefragments.h"\
	"..\..\qtdevwin\cincludes\collections.h"\
	"..\..\qtdevwin\cincludes\components.h"\
	"..\..\qtdevwin\cincludes\conditionalmacros.h"\
	"..\..\qtdevwin\cincludes\controls.h"\
	"..\..\qtdevwin\cincludes\datetimeutils.h"\
	"..\..\qtdevwin\cincludes\dialogs.h"\
	"..\..\qtdevwin\cincludes\drag.h"\
	"..\..\qtdevwin\cincludes\endian.h"\
	"..\..\qtdevwin\cincludes\events.h"\
	"..\..\qtdevwin\cincludes\files.h"\
	"..\..\qtdevwin\cincludes\finder.h"\
	"..\..\qtdevwin\cincludes\icons.h"\
	"..\..\qtdevwin\cincludes\imagecompression.h"\
	"..\..\qtdevwin\cincludes\macmemory.h"\
	"..\..\qtdevwin\cincludes\mactypes.h"\
	"..\..\qtdevwin\cincludes\macwindows.h"\
	"..\..\qtdevwin\cincludes\menus.h"\
	"..\..\qtdevwin\cincludes\mixedmode.h"\
	"..\..\qtdevwin\cincludes\movies.h"\
	"..\..\qtdevwin\cincludes\notification.h"\
	"..\..\qtdevwin\cincludes\osutils.h"\
	"..\..\qtdevwin\cincludes\patches.h"\
	"..\..\qtdevwin\cincludes\processes.h"\
	"..\..\qtdevwin\cincludes\qdoffscreen.h"\
	"..\..\qtdevwin\cincludes\qtstreamingcomponents.h"\
	"..\..\qtdevwin\cincludes\quickdraw.h"\
	"..\..\qtdevwin\cincludes\quickdrawtext.h"\
	"..\..\qtdevwin\cincludes\quicktimecomponents.h"\
	"..\..\qtdevwin\cincludes\quicktimemusic.h"\
	"..\..\qtdevwin\cincludes\quicktimestreaming.h"\
	"..\..\qtdevwin\cincludes\sound.h"\
	"..\..\qtdevwin\cincludes\standardfile.h"\
	"..\..\qtdevwin\cincludes\textcommon.h"\
	"..\..\qtdevwin\cincludes\textedit.h"\
	"..\..\qtdevwin\cincludes\video.h"\
	"..\..\qtdevwin\componentincludes\componentdispatchhelper.c"\
	"..\..\qtdevwin\componentincludes\components.k.h"\
	"..\..\qtdevwin\componentincludes\qtstreamingcomponents.k.h"\
	".\headers\componentvideopayload.h"\
	".\headers\componentvideortp.h"\
	".\headers\componentvideortpresources.h"\
	".\headers\rtpmpcomponentvideo.h"\
	".\headers\rtpmpcomponentvideodispatch.h"\
	".\headers\rtpmpcomponentvideoresources.h"\
	
NODEP_CPP_RTPMP=\
	"..\..\qtdevwin\cincludes\errors.h"\
	

"$(INTDIR)\RTPMPComponentVideo.obj" : $(SOURCE) $(DEP_CPP_RTPMP) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 


!ENDIF 

