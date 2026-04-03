EXTRN fake_dll_resolve:PROC

CONST SEGMENT
?s@CloseDriver db 'CloseDriver', 0
?s@DefDriverProc db 'DefDriverProc', 0
?s@DriverCallback db 'DriverCallback', 0
?s@DrvGetModuleHandle db 'DrvGetModuleHandle', 0
?s@GetDriverModuleHandle db 'GetDriverModuleHandle', 0
?s@OpenDriver db 'OpenDriver', 0
?s@PlaySound db 'PlaySound', 0
?s@PlaySoundA db 'PlaySoundA', 0
?s@PlaySoundW db 'PlaySoundW', 0
?s@SendDriverMessage db 'SendDriverMessage', 0
?s@auxGetDevCapsA db 'auxGetDevCapsA', 0
?s@auxGetDevCapsW db 'auxGetDevCapsW', 0
?s@auxGetNumDevs db 'auxGetNumDevs', 0
?s@auxGetVolume db 'auxGetVolume', 0
?s@auxOutMessage db 'auxOutMessage', 0
?s@auxSetVolume db 'auxSetVolume', 0
?s@joyConfigChanged db 'joyConfigChanged', 0
?s@joyGetDevCapsA db 'joyGetDevCapsA', 0
?s@joyGetDevCapsW db 'joyGetDevCapsW', 0
?s@joyGetNumDevs db 'joyGetNumDevs', 0
?s@joyGetPos db 'joyGetPos', 0
?s@joyGetPosEx db 'joyGetPosEx', 0
?s@joyGetThreshold db 'joyGetThreshold', 0
?s@joyReleaseCapture db 'joyReleaseCapture', 0
?s@joySetCapture db 'joySetCapture', 0
?s@joySetThreshold db 'joySetThreshold', 0
?s@mciDriverNotify db 'mciDriverNotify', 0
?s@mciDriverYield db 'mciDriverYield', 0
?s@mciFreeCommandResource db 'mciFreeCommandResource', 0
?s@mciGetCreatorTask db 'mciGetCreatorTask', 0
?s@mciGetDeviceIDA db 'mciGetDeviceIDA', 0
?s@mciGetDeviceIDFromElementIDA db 'mciGetDeviceIDFromElementIDA', 0
?s@mciGetDeviceIDFromElementIDW db 'mciGetDeviceIDFromElementIDW', 0
?s@mciGetDeviceIDW db 'mciGetDeviceIDW', 0
?s@mciGetDriverData db 'mciGetDriverData', 0
?s@mciGetErrorStringA db 'mciGetErrorStringA', 0
?s@mciGetErrorStringW db 'mciGetErrorStringW', 0
?s@mciGetYieldProc db 'mciGetYieldProc', 0
?s@mciLoadCommandResource db 'mciLoadCommandResource', 0
?s@mciSendCommandA db 'mciSendCommandA', 0
?s@mciSendCommandW db 'mciSendCommandW', 0
?s@mciSendStringA db 'mciSendStringA', 0
?s@mciSendStringW db 'mciSendStringW', 0
?s@mciSetDriverData db 'mciSetDriverData', 0
?s@mciSetYieldProc db 'mciSetYieldProc', 0
?s@midiConnect db 'midiConnect', 0
?s@midiDisconnect db 'midiDisconnect', 0
?s@midiInAddBuffer db 'midiInAddBuffer', 0
?s@midiInClose db 'midiInClose', 0
?s@midiInGetDevCapsA db 'midiInGetDevCapsA', 0
?s@midiInGetDevCapsW db 'midiInGetDevCapsW', 0
?s@midiInGetErrorTextA db 'midiInGetErrorTextA', 0
?s@midiInGetErrorTextW db 'midiInGetErrorTextW', 0
?s@midiInGetID db 'midiInGetID', 0
?s@midiInGetNumDevs db 'midiInGetNumDevs', 0
?s@midiInMessage db 'midiInMessage', 0
?s@midiInOpen db 'midiInOpen', 0
?s@midiInPrepareHeader db 'midiInPrepareHeader', 0
?s@midiInReset db 'midiInReset', 0
?s@midiInStart db 'midiInStart', 0
?s@midiInStop db 'midiInStop', 0
?s@midiInUnprepareHeader db 'midiInUnprepareHeader', 0
?s@midiOutCacheDrumPatches db 'midiOutCacheDrumPatches', 0
?s@midiOutCachePatches db 'midiOutCachePatches', 0
?s@midiOutClose db 'midiOutClose', 0
?s@midiOutGetDevCapsA db 'midiOutGetDevCapsA', 0
?s@midiOutGetDevCapsW db 'midiOutGetDevCapsW', 0
?s@midiOutGetErrorTextA db 'midiOutGetErrorTextA', 0
?s@midiOutGetErrorTextW db 'midiOutGetErrorTextW', 0
?s@midiOutGetID db 'midiOutGetID', 0
?s@midiOutGetNumDevs db 'midiOutGetNumDevs', 0
?s@midiOutGetVolume db 'midiOutGetVolume', 0
?s@midiOutLongMsg db 'midiOutLongMsg', 0
?s@midiOutMessage db 'midiOutMessage', 0
?s@midiOutOpen db 'midiOutOpen', 0
?s@midiOutPrepareHeader db 'midiOutPrepareHeader', 0
?s@midiOutReset db 'midiOutReset', 0
?s@midiOutSetVolume db 'midiOutSetVolume', 0
?s@midiOutShortMsg db 'midiOutShortMsg', 0
?s@midiOutUnprepareHeader db 'midiOutUnprepareHeader', 0
?s@midiStreamClose db 'midiStreamClose', 0
?s@midiStreamOpen db 'midiStreamOpen', 0
?s@midiStreamOut db 'midiStreamOut', 0
?s@midiStreamPause db 'midiStreamPause', 0
?s@midiStreamPosition db 'midiStreamPosition', 0
?s@midiStreamProperty db 'midiStreamProperty', 0
?s@midiStreamRestart db 'midiStreamRestart', 0
?s@midiStreamStop db 'midiStreamStop', 0
?s@mixerClose db 'mixerClose', 0
?s@mixerGetControlDetailsA db 'mixerGetControlDetailsA', 0
?s@mixerGetControlDetailsW db 'mixerGetControlDetailsW', 0
?s@mixerGetDevCapsA db 'mixerGetDevCapsA', 0
?s@mixerGetDevCapsW db 'mixerGetDevCapsW', 0
?s@mixerGetID db 'mixerGetID', 0
?s@mixerGetLineControlsA db 'mixerGetLineControlsA', 0
?s@mixerGetLineControlsW db 'mixerGetLineControlsW', 0
?s@mixerGetLineInfoA db 'mixerGetLineInfoA', 0
?s@mixerGetLineInfoW db 'mixerGetLineInfoW', 0
?s@mixerGetNumDevs db 'mixerGetNumDevs', 0
?s@mixerMessage db 'mixerMessage', 0
?s@mixerOpen db 'mixerOpen', 0
?s@mixerSetControlDetails db 'mixerSetControlDetails', 0
?s@mmDrvInstall db 'mmDrvInstall', 0
?s@mmioAdvance db 'mmioAdvance', 0
?s@mmioAscend db 'mmioAscend', 0
?s@mmioClose db 'mmioClose', 0
?s@mmioCreateChunk db 'mmioCreateChunk', 0
?s@mmioDescend db 'mmioDescend', 0
?s@mmioFlush db 'mmioFlush', 0
?s@mmioGetInfo db 'mmioGetInfo', 0
?s@mmioInstallIOProcA db 'mmioInstallIOProcA', 0
?s@mmioInstallIOProcW db 'mmioInstallIOProcW', 0
?s@mmioOpenA db 'mmioOpenA', 0
?s@mmioOpenW db 'mmioOpenW', 0
?s@mmioRead db 'mmioRead', 0
?s@mmioRenameA db 'mmioRenameA', 0
?s@mmioRenameW db 'mmioRenameW', 0
?s@mmioSeek db 'mmioSeek', 0
?s@mmioSendMessage db 'mmioSendMessage', 0
?s@mmioSetBuffer db 'mmioSetBuffer', 0
?s@mmioSetInfo db 'mmioSetInfo', 0
?s@mmioStringToFOURCCA db 'mmioStringToFOURCCA', 0
?s@mmioStringToFOURCCW db 'mmioStringToFOURCCW', 0
?s@mmioWrite db 'mmioWrite', 0
?s@sndPlaySoundA db 'sndPlaySoundA', 0
?s@sndPlaySoundW db 'sndPlaySoundW', 0
?s@timeBeginPeriod db 'timeBeginPeriod', 0
?s@timeEndPeriod db 'timeEndPeriod', 0
?s@timeGetDevCaps db 'timeGetDevCaps', 0
?s@timeGetSystemTime db 'timeGetSystemTime', 0
?s@timeGetTime db 'timeGetTime', 0
?s@timeKillEvent db 'timeKillEvent', 0
?s@timeSetEvent db 'timeSetEvent', 0
?s@waveInAddBuffer db 'waveInAddBuffer', 0
?s@waveInClose db 'waveInClose', 0
?s@waveInGetDevCapsA db 'waveInGetDevCapsA', 0
?s@waveInGetDevCapsW db 'waveInGetDevCapsW', 0
?s@waveInGetErrorTextA db 'waveInGetErrorTextA', 0
?s@waveInGetErrorTextW db 'waveInGetErrorTextW', 0
?s@waveInGetID db 'waveInGetID', 0
?s@waveInGetNumDevs db 'waveInGetNumDevs', 0
?s@waveInGetPosition db 'waveInGetPosition', 0
?s@waveInMessage db 'waveInMessage', 0
?s@waveInOpen db 'waveInOpen', 0
?s@waveInPrepareHeader db 'waveInPrepareHeader', 0
?s@waveInReset db 'waveInReset', 0
?s@waveInStart db 'waveInStart', 0
?s@waveInStop db 'waveInStop', 0
?s@waveInUnprepareHeader db 'waveInUnprepareHeader', 0
?s@waveOutBreakLoop db 'waveOutBreakLoop', 0
?s@waveOutClose db 'waveOutClose', 0
?s@waveOutGetDevCapsA db 'waveOutGetDevCapsA', 0
?s@waveOutGetDevCapsW db 'waveOutGetDevCapsW', 0
?s@waveOutGetErrorTextA db 'waveOutGetErrorTextA', 0
?s@waveOutGetErrorTextW db 'waveOutGetErrorTextW', 0
?s@waveOutGetID db 'waveOutGetID', 0
?s@waveOutGetNumDevs db 'waveOutGetNumDevs', 0
?s@waveOutGetPitch db 'waveOutGetPitch', 0
?s@waveOutGetPlaybackRate db 'waveOutGetPlaybackRate', 0
?s@waveOutGetPosition db 'waveOutGetPosition', 0
?s@waveOutGetVolume db 'waveOutGetVolume', 0
?s@waveOutMessage db 'waveOutMessage', 0
?s@waveOutOpen db 'waveOutOpen', 0
?s@waveOutPause db 'waveOutPause', 0
?s@waveOutPrepareHeader db 'waveOutPrepareHeader', 0
?s@waveOutReset db 'waveOutReset', 0
?s@waveOutRestart db 'waveOutRestart', 0
?s@waveOutSetPitch db 'waveOutSetPitch', 0
?s@waveOutSetPlaybackRate db 'waveOutSetPlaybackRate', 0
?s@waveOutSetVolume db 'waveOutSetVolume', 0
?s@waveOutUnprepareHeader db 'waveOutUnprepareHeader', 0
?s@waveOutWrite db 'waveOutWrite', 0
CONST ENDS

_DATA SEGMENT
?st@CloseDriver dq ?s@CloseDriver
        dq ?@CloseDriver@L1
?st@DefDriverProc dq ?s@DefDriverProc
        dq ?@DefDriverProc@L1
?st@DriverCallback dq ?s@DriverCallback
        dq ?@DriverCallback@L1
?st@DrvGetModuleHandle dq ?s@DrvGetModuleHandle
        dq ?@DrvGetModuleHandle@L1
?st@GetDriverModuleHandle dq ?s@GetDriverModuleHandle
        dq ?@GetDriverModuleHandle@L1
?st@OpenDriver dq ?s@OpenDriver
        dq ?@OpenDriver@L1
?st@PlaySound dq ?s@PlaySound
        dq ?@PlaySound@L1
?st@PlaySoundA dq ?s@PlaySoundA
        dq ?@PlaySoundA@L1
?st@PlaySoundW dq ?s@PlaySoundW
        dq ?@PlaySoundW@L1
?st@SendDriverMessage dq ?s@SendDriverMessage
        dq ?@SendDriverMessage@L1
?st@auxGetDevCapsA dq ?s@auxGetDevCapsA
        dq ?@auxGetDevCapsA@L1
?st@auxGetDevCapsW dq ?s@auxGetDevCapsW
        dq ?@auxGetDevCapsW@L1
?st@auxGetNumDevs dq ?s@auxGetNumDevs
        dq ?@auxGetNumDevs@L1
?st@auxGetVolume dq ?s@auxGetVolume
        dq ?@auxGetVolume@L1
?st@auxOutMessage dq ?s@auxOutMessage
        dq ?@auxOutMessage@L1
?st@auxSetVolume dq ?s@auxSetVolume
        dq ?@auxSetVolume@L1
?st@joyConfigChanged dq ?s@joyConfigChanged
        dq ?@joyConfigChanged@L1
?st@joyGetDevCapsA dq ?s@joyGetDevCapsA
        dq ?@joyGetDevCapsA@L1
?st@joyGetDevCapsW dq ?s@joyGetDevCapsW
        dq ?@joyGetDevCapsW@L1
?st@joyGetNumDevs dq ?s@joyGetNumDevs
        dq ?@joyGetNumDevs@L1
?st@joyGetPos dq ?s@joyGetPos
        dq ?@joyGetPos@L1
?st@joyGetPosEx dq ?s@joyGetPosEx
        dq ?@joyGetPosEx@L1
?st@joyGetThreshold dq ?s@joyGetThreshold
        dq ?@joyGetThreshold@L1
?st@joyReleaseCapture dq ?s@joyReleaseCapture
        dq ?@joyReleaseCapture@L1
?st@joySetCapture dq ?s@joySetCapture
        dq ?@joySetCapture@L1
?st@joySetThreshold dq ?s@joySetThreshold
        dq ?@joySetThreshold@L1
?st@mciDriverNotify dq ?s@mciDriverNotify
        dq ?@mciDriverNotify@L1
?st@mciDriverYield dq ?s@mciDriverYield
        dq ?@mciDriverYield@L1
?st@mciFreeCommandResource dq ?s@mciFreeCommandResource
        dq ?@mciFreeCommandResource@L1
?st@mciGetCreatorTask dq ?s@mciGetCreatorTask
        dq ?@mciGetCreatorTask@L1
?st@mciGetDeviceIDA dq ?s@mciGetDeviceIDA
        dq ?@mciGetDeviceIDA@L1
?st@mciGetDeviceIDFromElementIDA dq ?s@mciGetDeviceIDFromElementIDA
        dq ?@mciGetDeviceIDFromElementIDA@L1
?st@mciGetDeviceIDFromElementIDW dq ?s@mciGetDeviceIDFromElementIDW
        dq ?@mciGetDeviceIDFromElementIDW@L1
?st@mciGetDeviceIDW dq ?s@mciGetDeviceIDW
        dq ?@mciGetDeviceIDW@L1
?st@mciGetDriverData dq ?s@mciGetDriverData
        dq ?@mciGetDriverData@L1
?st@mciGetErrorStringA dq ?s@mciGetErrorStringA
        dq ?@mciGetErrorStringA@L1
?st@mciGetErrorStringW dq ?s@mciGetErrorStringW
        dq ?@mciGetErrorStringW@L1
?st@mciGetYieldProc dq ?s@mciGetYieldProc
        dq ?@mciGetYieldProc@L1
?st@mciLoadCommandResource dq ?s@mciLoadCommandResource
        dq ?@mciLoadCommandResource@L1
?st@mciSendCommandA dq ?s@mciSendCommandA
        dq ?@mciSendCommandA@L1
?st@mciSendCommandW dq ?s@mciSendCommandW
        dq ?@mciSendCommandW@L1
?st@mciSendStringA dq ?s@mciSendStringA
        dq ?@mciSendStringA@L1
?st@mciSendStringW dq ?s@mciSendStringW
        dq ?@mciSendStringW@L1
?st@mciSetDriverData dq ?s@mciSetDriverData
        dq ?@mciSetDriverData@L1
?st@mciSetYieldProc dq ?s@mciSetYieldProc
        dq ?@mciSetYieldProc@L1
?st@midiConnect dq ?s@midiConnect
        dq ?@midiConnect@L1
?st@midiDisconnect dq ?s@midiDisconnect
        dq ?@midiDisconnect@L1
?st@midiInAddBuffer dq ?s@midiInAddBuffer
        dq ?@midiInAddBuffer@L1
?st@midiInClose dq ?s@midiInClose
        dq ?@midiInClose@L1
?st@midiInGetDevCapsA dq ?s@midiInGetDevCapsA
        dq ?@midiInGetDevCapsA@L1
?st@midiInGetDevCapsW dq ?s@midiInGetDevCapsW
        dq ?@midiInGetDevCapsW@L1
?st@midiInGetErrorTextA dq ?s@midiInGetErrorTextA
        dq ?@midiInGetErrorTextA@L1
?st@midiInGetErrorTextW dq ?s@midiInGetErrorTextW
        dq ?@midiInGetErrorTextW@L1
?st@midiInGetID dq ?s@midiInGetID
        dq ?@midiInGetID@L1
?st@midiInGetNumDevs dq ?s@midiInGetNumDevs
        dq ?@midiInGetNumDevs@L1
?st@midiInMessage dq ?s@midiInMessage
        dq ?@midiInMessage@L1
?st@midiInOpen dq ?s@midiInOpen
        dq ?@midiInOpen@L1
?st@midiInPrepareHeader dq ?s@midiInPrepareHeader
        dq ?@midiInPrepareHeader@L1
?st@midiInReset dq ?s@midiInReset
        dq ?@midiInReset@L1
?st@midiInStart dq ?s@midiInStart
        dq ?@midiInStart@L1
?st@midiInStop dq ?s@midiInStop
        dq ?@midiInStop@L1
?st@midiInUnprepareHeader dq ?s@midiInUnprepareHeader
        dq ?@midiInUnprepareHeader@L1
?st@midiOutCacheDrumPatches dq ?s@midiOutCacheDrumPatches
        dq ?@midiOutCacheDrumPatches@L1
?st@midiOutCachePatches dq ?s@midiOutCachePatches
        dq ?@midiOutCachePatches@L1
?st@midiOutClose dq ?s@midiOutClose
        dq ?@midiOutClose@L1
?st@midiOutGetDevCapsA dq ?s@midiOutGetDevCapsA
        dq ?@midiOutGetDevCapsA@L1
?st@midiOutGetDevCapsW dq ?s@midiOutGetDevCapsW
        dq ?@midiOutGetDevCapsW@L1
?st@midiOutGetErrorTextA dq ?s@midiOutGetErrorTextA
        dq ?@midiOutGetErrorTextA@L1
?st@midiOutGetErrorTextW dq ?s@midiOutGetErrorTextW
        dq ?@midiOutGetErrorTextW@L1
?st@midiOutGetID dq ?s@midiOutGetID
        dq ?@midiOutGetID@L1
?st@midiOutGetNumDevs dq ?s@midiOutGetNumDevs
        dq ?@midiOutGetNumDevs@L1
?st@midiOutGetVolume dq ?s@midiOutGetVolume
        dq ?@midiOutGetVolume@L1
?st@midiOutLongMsg dq ?s@midiOutLongMsg
        dq ?@midiOutLongMsg@L1
?st@midiOutMessage dq ?s@midiOutMessage
        dq ?@midiOutMessage@L1
?st@midiOutOpen dq ?s@midiOutOpen
        dq ?@midiOutOpen@L1
?st@midiOutPrepareHeader dq ?s@midiOutPrepareHeader
        dq ?@midiOutPrepareHeader@L1
?st@midiOutReset dq ?s@midiOutReset
        dq ?@midiOutReset@L1
?st@midiOutSetVolume dq ?s@midiOutSetVolume
        dq ?@midiOutSetVolume@L1
?st@midiOutShortMsg dq ?s@midiOutShortMsg
        dq ?@midiOutShortMsg@L1
?st@midiOutUnprepareHeader dq ?s@midiOutUnprepareHeader
        dq ?@midiOutUnprepareHeader@L1
?st@midiStreamClose dq ?s@midiStreamClose
        dq ?@midiStreamClose@L1
?st@midiStreamOpen dq ?s@midiStreamOpen
        dq ?@midiStreamOpen@L1
?st@midiStreamOut dq ?s@midiStreamOut
        dq ?@midiStreamOut@L1
?st@midiStreamPause dq ?s@midiStreamPause
        dq ?@midiStreamPause@L1
?st@midiStreamPosition dq ?s@midiStreamPosition
        dq ?@midiStreamPosition@L1
?st@midiStreamProperty dq ?s@midiStreamProperty
        dq ?@midiStreamProperty@L1
?st@midiStreamRestart dq ?s@midiStreamRestart
        dq ?@midiStreamRestart@L1
?st@midiStreamStop dq ?s@midiStreamStop
        dq ?@midiStreamStop@L1
?st@mixerClose dq ?s@mixerClose
        dq ?@mixerClose@L1
?st@mixerGetControlDetailsA dq ?s@mixerGetControlDetailsA
        dq ?@mixerGetControlDetailsA@L1
?st@mixerGetControlDetailsW dq ?s@mixerGetControlDetailsW
        dq ?@mixerGetControlDetailsW@L1
?st@mixerGetDevCapsA dq ?s@mixerGetDevCapsA
        dq ?@mixerGetDevCapsA@L1
?st@mixerGetDevCapsW dq ?s@mixerGetDevCapsW
        dq ?@mixerGetDevCapsW@L1
?st@mixerGetID dq ?s@mixerGetID
        dq ?@mixerGetID@L1
?st@mixerGetLineControlsA dq ?s@mixerGetLineControlsA
        dq ?@mixerGetLineControlsA@L1
?st@mixerGetLineControlsW dq ?s@mixerGetLineControlsW
        dq ?@mixerGetLineControlsW@L1
?st@mixerGetLineInfoA dq ?s@mixerGetLineInfoA
        dq ?@mixerGetLineInfoA@L1
?st@mixerGetLineInfoW dq ?s@mixerGetLineInfoW
        dq ?@mixerGetLineInfoW@L1
?st@mixerGetNumDevs dq ?s@mixerGetNumDevs
        dq ?@mixerGetNumDevs@L1
?st@mixerMessage dq ?s@mixerMessage
        dq ?@mixerMessage@L1
?st@mixerOpen dq ?s@mixerOpen
        dq ?@mixerOpen@L1
?st@mixerSetControlDetails dq ?s@mixerSetControlDetails
        dq ?@mixerSetControlDetails@L1
?st@mmDrvInstall dq ?s@mmDrvInstall
        dq ?@mmDrvInstall@L1
?st@mmioAdvance dq ?s@mmioAdvance
        dq ?@mmioAdvance@L1
?st@mmioAscend dq ?s@mmioAscend
        dq ?@mmioAscend@L1
?st@mmioClose dq ?s@mmioClose
        dq ?@mmioClose@L1
?st@mmioCreateChunk dq ?s@mmioCreateChunk
        dq ?@mmioCreateChunk@L1
?st@mmioDescend dq ?s@mmioDescend
        dq ?@mmioDescend@L1
?st@mmioFlush dq ?s@mmioFlush
        dq ?@mmioFlush@L1
?st@mmioGetInfo dq ?s@mmioGetInfo
        dq ?@mmioGetInfo@L1
?st@mmioInstallIOProcA dq ?s@mmioInstallIOProcA
        dq ?@mmioInstallIOProcA@L1
?st@mmioInstallIOProcW dq ?s@mmioInstallIOProcW
        dq ?@mmioInstallIOProcW@L1
?st@mmioOpenA dq ?s@mmioOpenA
        dq ?@mmioOpenA@L1
?st@mmioOpenW dq ?s@mmioOpenW
        dq ?@mmioOpenW@L1
?st@mmioRead dq ?s@mmioRead
        dq ?@mmioRead@L1
?st@mmioRenameA dq ?s@mmioRenameA
        dq ?@mmioRenameA@L1
?st@mmioRenameW dq ?s@mmioRenameW
        dq ?@mmioRenameW@L1
?st@mmioSeek dq ?s@mmioSeek
        dq ?@mmioSeek@L1
?st@mmioSendMessage dq ?s@mmioSendMessage
        dq ?@mmioSendMessage@L1
?st@mmioSetBuffer dq ?s@mmioSetBuffer
        dq ?@mmioSetBuffer@L1
?st@mmioSetInfo dq ?s@mmioSetInfo
        dq ?@mmioSetInfo@L1
?st@mmioStringToFOURCCA dq ?s@mmioStringToFOURCCA
        dq ?@mmioStringToFOURCCA@L1
?st@mmioStringToFOURCCW dq ?s@mmioStringToFOURCCW
        dq ?@mmioStringToFOURCCW@L1
?st@mmioWrite dq ?s@mmioWrite
        dq ?@mmioWrite@L1
?st@sndPlaySoundA dq ?s@sndPlaySoundA
        dq ?@sndPlaySoundA@L1
?st@sndPlaySoundW dq ?s@sndPlaySoundW
        dq ?@sndPlaySoundW@L1
?st@timeBeginPeriod dq ?s@timeBeginPeriod
        dq ?@timeBeginPeriod@L1
?st@timeEndPeriod dq ?s@timeEndPeriod
        dq ?@timeEndPeriod@L1
?st@timeGetDevCaps dq ?s@timeGetDevCaps
        dq ?@timeGetDevCaps@L1
?st@timeGetSystemTime dq ?s@timeGetSystemTime
        dq ?@timeGetSystemTime@L1
?st@timeGetTime dq ?s@timeGetTime
        dq ?@timeGetTime@L1
?st@timeKillEvent dq ?s@timeKillEvent
        dq ?@timeKillEvent@L1
?st@timeSetEvent dq ?s@timeSetEvent
        dq ?@timeSetEvent@L1
?st@waveInAddBuffer dq ?s@waveInAddBuffer
        dq ?@waveInAddBuffer@L1
?st@waveInClose dq ?s@waveInClose
        dq ?@waveInClose@L1
?st@waveInGetDevCapsA dq ?s@waveInGetDevCapsA
        dq ?@waveInGetDevCapsA@L1
?st@waveInGetDevCapsW dq ?s@waveInGetDevCapsW
        dq ?@waveInGetDevCapsW@L1
?st@waveInGetErrorTextA dq ?s@waveInGetErrorTextA
        dq ?@waveInGetErrorTextA@L1
?st@waveInGetErrorTextW dq ?s@waveInGetErrorTextW
        dq ?@waveInGetErrorTextW@L1
?st@waveInGetID dq ?s@waveInGetID
        dq ?@waveInGetID@L1
?st@waveInGetNumDevs dq ?s@waveInGetNumDevs
        dq ?@waveInGetNumDevs@L1
?st@waveInGetPosition dq ?s@waveInGetPosition
        dq ?@waveInGetPosition@L1
?st@waveInMessage dq ?s@waveInMessage
        dq ?@waveInMessage@L1
?st@waveInOpen dq ?s@waveInOpen
        dq ?@waveInOpen@L1
?st@waveInPrepareHeader dq ?s@waveInPrepareHeader
        dq ?@waveInPrepareHeader@L1
?st@waveInReset dq ?s@waveInReset
        dq ?@waveInReset@L1
?st@waveInStart dq ?s@waveInStart
        dq ?@waveInStart@L1
?st@waveInStop dq ?s@waveInStop
        dq ?@waveInStop@L1
?st@waveInUnprepareHeader dq ?s@waveInUnprepareHeader
        dq ?@waveInUnprepareHeader@L1
?st@waveOutBreakLoop dq ?s@waveOutBreakLoop
        dq ?@waveOutBreakLoop@L1
?st@waveOutClose dq ?s@waveOutClose
        dq ?@waveOutClose@L1
?st@waveOutGetDevCapsA dq ?s@waveOutGetDevCapsA
        dq ?@waveOutGetDevCapsA@L1
?st@waveOutGetDevCapsW dq ?s@waveOutGetDevCapsW
        dq ?@waveOutGetDevCapsW@L1
?st@waveOutGetErrorTextA dq ?s@waveOutGetErrorTextA
        dq ?@waveOutGetErrorTextA@L1
?st@waveOutGetErrorTextW dq ?s@waveOutGetErrorTextW
        dq ?@waveOutGetErrorTextW@L1
?st@waveOutGetID dq ?s@waveOutGetID
        dq ?@waveOutGetID@L1
?st@waveOutGetNumDevs dq ?s@waveOutGetNumDevs
        dq ?@waveOutGetNumDevs@L1
?st@waveOutGetPitch dq ?s@waveOutGetPitch
        dq ?@waveOutGetPitch@L1
?st@waveOutGetPlaybackRate dq ?s@waveOutGetPlaybackRate
        dq ?@waveOutGetPlaybackRate@L1
?st@waveOutGetPosition dq ?s@waveOutGetPosition
        dq ?@waveOutGetPosition@L1
?st@waveOutGetVolume dq ?s@waveOutGetVolume
        dq ?@waveOutGetVolume@L1
?st@waveOutMessage dq ?s@waveOutMessage
        dq ?@waveOutMessage@L1
?st@waveOutOpen dq ?s@waveOutOpen
        dq ?@waveOutOpen@L1
?st@waveOutPause dq ?s@waveOutPause
        dq ?@waveOutPause@L1
?st@waveOutPrepareHeader dq ?s@waveOutPrepareHeader
        dq ?@waveOutPrepareHeader@L1
?st@waveOutReset dq ?s@waveOutReset
        dq ?@waveOutReset@L1
?st@waveOutRestart dq ?s@waveOutRestart
        dq ?@waveOutRestart@L1
?st@waveOutSetPitch dq ?s@waveOutSetPitch
        dq ?@waveOutSetPitch@L1
?st@waveOutSetPlaybackRate dq ?s@waveOutSetPlaybackRate
        dq ?@waveOutSetPlaybackRate@L1
?st@waveOutSetVolume dq ?s@waveOutSetVolume
        dq ?@waveOutSetVolume@L1
?st@waveOutUnprepareHeader dq ?s@waveOutUnprepareHeader
        dq ?@waveOutUnprepareHeader@L1
?st@waveOutWrite dq ?s@waveOutWrite
        dq ?@waveOutWrite@L1
_DATA ENDS

_TEXT SEGMENT
?@common_fake_dll_resolve proc
    push 0
    push rcx
    push rdx
    push r8
    push r9
    sub rsp, 40h
    mov rcx, r10
    lea rdx, [rsp+60h]
    call fake_dll_resolve
    add rsp, 40h
    pop r9
    pop r8
    pop rdx
    pop rcx
    ret
?@common_fake_dll_resolve endp

public CloseDriver
CloseDriver proc
    jmp qword ptr [?st@CloseDriver+8]
?@CloseDriver@L1::
    lea r10, offset ?st@CloseDriver
    jmp ?@common_fake_dll_resolve
CloseDriver endp

public DefDriverProc
DefDriverProc proc
    jmp qword ptr [?st@DefDriverProc+8]
?@DefDriverProc@L1::
    lea r10, offset ?st@DefDriverProc
    jmp ?@common_fake_dll_resolve
DefDriverProc endp

public DriverCallback
DriverCallback proc
    jmp qword ptr [?st@DriverCallback+8]
?@DriverCallback@L1::
    lea r10, offset ?st@DriverCallback
    jmp ?@common_fake_dll_resolve
DriverCallback endp

public DrvGetModuleHandle
DrvGetModuleHandle proc
    jmp qword ptr [?st@DrvGetModuleHandle+8]
?@DrvGetModuleHandle@L1::
    lea r10, offset ?st@DrvGetModuleHandle
    jmp ?@common_fake_dll_resolve
DrvGetModuleHandle endp

public GetDriverModuleHandle
GetDriverModuleHandle proc
    jmp qword ptr [?st@GetDriverModuleHandle+8]
?@GetDriverModuleHandle@L1::
    lea r10, offset ?st@GetDriverModuleHandle
    jmp ?@common_fake_dll_resolve
GetDriverModuleHandle endp

public OpenDriver
OpenDriver proc
    jmp qword ptr [?st@OpenDriver+8]
?@OpenDriver@L1::
    lea r10, offset ?st@OpenDriver
    jmp ?@common_fake_dll_resolve
OpenDriver endp

public PlaySound
PlaySound proc
    jmp qword ptr [?st@PlaySound+8]
?@PlaySound@L1::
    lea r10, offset ?st@PlaySound
    jmp ?@common_fake_dll_resolve
PlaySound endp

public PlaySoundA
PlaySoundA proc
    jmp qword ptr [?st@PlaySoundA+8]
?@PlaySoundA@L1::
    lea r10, offset ?st@PlaySoundA
    jmp ?@common_fake_dll_resolve
PlaySoundA endp

public PlaySoundW
PlaySoundW proc
    jmp qword ptr [?st@PlaySoundW+8]
?@PlaySoundW@L1::
    lea r10, offset ?st@PlaySoundW
    jmp ?@common_fake_dll_resolve
PlaySoundW endp

public SendDriverMessage
SendDriverMessage proc
    jmp qword ptr [?st@SendDriverMessage+8]
?@SendDriverMessage@L1::
    lea r10, offset ?st@SendDriverMessage
    jmp ?@common_fake_dll_resolve
SendDriverMessage endp

public auxGetDevCapsA
auxGetDevCapsA proc
    jmp qword ptr [?st@auxGetDevCapsA+8]
?@auxGetDevCapsA@L1::
    lea r10, offset ?st@auxGetDevCapsA
    jmp ?@common_fake_dll_resolve
auxGetDevCapsA endp

public auxGetDevCapsW
auxGetDevCapsW proc
    jmp qword ptr [?st@auxGetDevCapsW+8]
?@auxGetDevCapsW@L1::
    lea r10, offset ?st@auxGetDevCapsW
    jmp ?@common_fake_dll_resolve
auxGetDevCapsW endp

public auxGetNumDevs
auxGetNumDevs proc
    jmp qword ptr [?st@auxGetNumDevs+8]
?@auxGetNumDevs@L1::
    lea r10, offset ?st@auxGetNumDevs
    jmp ?@common_fake_dll_resolve
auxGetNumDevs endp

public auxGetVolume
auxGetVolume proc
    jmp qword ptr [?st@auxGetVolume+8]
?@auxGetVolume@L1::
    lea r10, offset ?st@auxGetVolume
    jmp ?@common_fake_dll_resolve
auxGetVolume endp

public auxOutMessage
auxOutMessage proc
    jmp qword ptr [?st@auxOutMessage+8]
?@auxOutMessage@L1::
    lea r10, offset ?st@auxOutMessage
    jmp ?@common_fake_dll_resolve
auxOutMessage endp

public auxSetVolume
auxSetVolume proc
    jmp qword ptr [?st@auxSetVolume+8]
?@auxSetVolume@L1::
    lea r10, offset ?st@auxSetVolume
    jmp ?@common_fake_dll_resolve
auxSetVolume endp

public joyConfigChanged
joyConfigChanged proc
    jmp qword ptr [?st@joyConfigChanged+8]
?@joyConfigChanged@L1::
    lea r10, offset ?st@joyConfigChanged
    jmp ?@common_fake_dll_resolve
joyConfigChanged endp

public joyGetDevCapsA
joyGetDevCapsA proc
    jmp qword ptr [?st@joyGetDevCapsA+8]
?@joyGetDevCapsA@L1::
    lea r10, offset ?st@joyGetDevCapsA
    jmp ?@common_fake_dll_resolve
joyGetDevCapsA endp

public joyGetDevCapsW
joyGetDevCapsW proc
    jmp qword ptr [?st@joyGetDevCapsW+8]
?@joyGetDevCapsW@L1::
    lea r10, offset ?st@joyGetDevCapsW
    jmp ?@common_fake_dll_resolve
joyGetDevCapsW endp

public joyGetNumDevs
joyGetNumDevs proc
    jmp qword ptr [?st@joyGetNumDevs+8]
?@joyGetNumDevs@L1::
    lea r10, offset ?st@joyGetNumDevs
    jmp ?@common_fake_dll_resolve
joyGetNumDevs endp

public joyGetPos
joyGetPos proc
    jmp qword ptr [?st@joyGetPos+8]
?@joyGetPos@L1::
    lea r10, offset ?st@joyGetPos
    jmp ?@common_fake_dll_resolve
joyGetPos endp

public joyGetPosEx
joyGetPosEx proc
    jmp qword ptr [?st@joyGetPosEx+8]
?@joyGetPosEx@L1::
    lea r10, offset ?st@joyGetPosEx
    jmp ?@common_fake_dll_resolve
joyGetPosEx endp

public joyGetThreshold
joyGetThreshold proc
    jmp qword ptr [?st@joyGetThreshold+8]
?@joyGetThreshold@L1::
    lea r10, offset ?st@joyGetThreshold
    jmp ?@common_fake_dll_resolve
joyGetThreshold endp

public joyReleaseCapture
joyReleaseCapture proc
    jmp qword ptr [?st@joyReleaseCapture+8]
?@joyReleaseCapture@L1::
    lea r10, offset ?st@joyReleaseCapture
    jmp ?@common_fake_dll_resolve
joyReleaseCapture endp

public joySetCapture
joySetCapture proc
    jmp qword ptr [?st@joySetCapture+8]
?@joySetCapture@L1::
    lea r10, offset ?st@joySetCapture
    jmp ?@common_fake_dll_resolve
joySetCapture endp

public joySetThreshold
joySetThreshold proc
    jmp qword ptr [?st@joySetThreshold+8]
?@joySetThreshold@L1::
    lea r10, offset ?st@joySetThreshold
    jmp ?@common_fake_dll_resolve
joySetThreshold endp

public mciDriverNotify
mciDriverNotify proc
    jmp qword ptr [?st@mciDriverNotify+8]
?@mciDriverNotify@L1::
    lea r10, offset ?st@mciDriverNotify
    jmp ?@common_fake_dll_resolve
mciDriverNotify endp

public mciDriverYield
mciDriverYield proc
    jmp qword ptr [?st@mciDriverYield+8]
?@mciDriverYield@L1::
    lea r10, offset ?st@mciDriverYield
    jmp ?@common_fake_dll_resolve
mciDriverYield endp

public mciFreeCommandResource
mciFreeCommandResource proc
    jmp qword ptr [?st@mciFreeCommandResource+8]
?@mciFreeCommandResource@L1::
    lea r10, offset ?st@mciFreeCommandResource
    jmp ?@common_fake_dll_resolve
mciFreeCommandResource endp

public mciGetCreatorTask
mciGetCreatorTask proc
    jmp qword ptr [?st@mciGetCreatorTask+8]
?@mciGetCreatorTask@L1::
    lea r10, offset ?st@mciGetCreatorTask
    jmp ?@common_fake_dll_resolve
mciGetCreatorTask endp

public mciGetDeviceIDA
mciGetDeviceIDA proc
    jmp qword ptr [?st@mciGetDeviceIDA+8]
?@mciGetDeviceIDA@L1::
    lea r10, offset ?st@mciGetDeviceIDA
    jmp ?@common_fake_dll_resolve
mciGetDeviceIDA endp

public mciGetDeviceIDFromElementIDA
mciGetDeviceIDFromElementIDA proc
    jmp qword ptr [?st@mciGetDeviceIDFromElementIDA+8]
?@mciGetDeviceIDFromElementIDA@L1::
    lea r10, offset ?st@mciGetDeviceIDFromElementIDA
    jmp ?@common_fake_dll_resolve
mciGetDeviceIDFromElementIDA endp

public mciGetDeviceIDFromElementIDW
mciGetDeviceIDFromElementIDW proc
    jmp qword ptr [?st@mciGetDeviceIDFromElementIDW+8]
?@mciGetDeviceIDFromElementIDW@L1::
    lea r10, offset ?st@mciGetDeviceIDFromElementIDW
    jmp ?@common_fake_dll_resolve
mciGetDeviceIDFromElementIDW endp

public mciGetDeviceIDW
mciGetDeviceIDW proc
    jmp qword ptr [?st@mciGetDeviceIDW+8]
?@mciGetDeviceIDW@L1::
    lea r10, offset ?st@mciGetDeviceIDW
    jmp ?@common_fake_dll_resolve
mciGetDeviceIDW endp

public mciGetDriverData
mciGetDriverData proc
    jmp qword ptr [?st@mciGetDriverData+8]
?@mciGetDriverData@L1::
    lea r10, offset ?st@mciGetDriverData
    jmp ?@common_fake_dll_resolve
mciGetDriverData endp

public mciGetErrorStringA
mciGetErrorStringA proc
    jmp qword ptr [?st@mciGetErrorStringA+8]
?@mciGetErrorStringA@L1::
    lea r10, offset ?st@mciGetErrorStringA
    jmp ?@common_fake_dll_resolve
mciGetErrorStringA endp

public mciGetErrorStringW
mciGetErrorStringW proc
    jmp qword ptr [?st@mciGetErrorStringW+8]
?@mciGetErrorStringW@L1::
    lea r10, offset ?st@mciGetErrorStringW
    jmp ?@common_fake_dll_resolve
mciGetErrorStringW endp

public mciGetYieldProc
mciGetYieldProc proc
    jmp qword ptr [?st@mciGetYieldProc+8]
?@mciGetYieldProc@L1::
    lea r10, offset ?st@mciGetYieldProc
    jmp ?@common_fake_dll_resolve
mciGetYieldProc endp

public mciLoadCommandResource
mciLoadCommandResource proc
    jmp qword ptr [?st@mciLoadCommandResource+8]
?@mciLoadCommandResource@L1::
    lea r10, offset ?st@mciLoadCommandResource
    jmp ?@common_fake_dll_resolve
mciLoadCommandResource endp

public mciSendCommandA
mciSendCommandA proc
    jmp qword ptr [?st@mciSendCommandA+8]
?@mciSendCommandA@L1::
    lea r10, offset ?st@mciSendCommandA
    jmp ?@common_fake_dll_resolve
mciSendCommandA endp

public mciSendCommandW
mciSendCommandW proc
    jmp qword ptr [?st@mciSendCommandW+8]
?@mciSendCommandW@L1::
    lea r10, offset ?st@mciSendCommandW
    jmp ?@common_fake_dll_resolve
mciSendCommandW endp

public mciSendStringA
mciSendStringA proc
    jmp qword ptr [?st@mciSendStringA+8]
?@mciSendStringA@L1::
    lea r10, offset ?st@mciSendStringA
    jmp ?@common_fake_dll_resolve
mciSendStringA endp

public mciSendStringW
mciSendStringW proc
    jmp qword ptr [?st@mciSendStringW+8]
?@mciSendStringW@L1::
    lea r10, offset ?st@mciSendStringW
    jmp ?@common_fake_dll_resolve
mciSendStringW endp

public mciSetDriverData
mciSetDriverData proc
    jmp qword ptr [?st@mciSetDriverData+8]
?@mciSetDriverData@L1::
    lea r10, offset ?st@mciSetDriverData
    jmp ?@common_fake_dll_resolve
mciSetDriverData endp

public mciSetYieldProc
mciSetYieldProc proc
    jmp qword ptr [?st@mciSetYieldProc+8]
?@mciSetYieldProc@L1::
    lea r10, offset ?st@mciSetYieldProc
    jmp ?@common_fake_dll_resolve
mciSetYieldProc endp

public midiConnect
midiConnect proc
    jmp qword ptr [?st@midiConnect+8]
?@midiConnect@L1::
    lea r10, offset ?st@midiConnect
    jmp ?@common_fake_dll_resolve
midiConnect endp

public midiDisconnect
midiDisconnect proc
    jmp qword ptr [?st@midiDisconnect+8]
?@midiDisconnect@L1::
    lea r10, offset ?st@midiDisconnect
    jmp ?@common_fake_dll_resolve
midiDisconnect endp

public midiInAddBuffer
midiInAddBuffer proc
    jmp qword ptr [?st@midiInAddBuffer+8]
?@midiInAddBuffer@L1::
    lea r10, offset ?st@midiInAddBuffer
    jmp ?@common_fake_dll_resolve
midiInAddBuffer endp

public midiInClose
midiInClose proc
    jmp qword ptr [?st@midiInClose+8]
?@midiInClose@L1::
    lea r10, offset ?st@midiInClose
    jmp ?@common_fake_dll_resolve
midiInClose endp

public midiInGetDevCapsA
midiInGetDevCapsA proc
    jmp qword ptr [?st@midiInGetDevCapsA+8]
?@midiInGetDevCapsA@L1::
    lea r10, offset ?st@midiInGetDevCapsA
    jmp ?@common_fake_dll_resolve
midiInGetDevCapsA endp

public midiInGetDevCapsW
midiInGetDevCapsW proc
    jmp qword ptr [?st@midiInGetDevCapsW+8]
?@midiInGetDevCapsW@L1::
    lea r10, offset ?st@midiInGetDevCapsW
    jmp ?@common_fake_dll_resolve
midiInGetDevCapsW endp

public midiInGetErrorTextA
midiInGetErrorTextA proc
    jmp qword ptr [?st@midiInGetErrorTextA+8]
?@midiInGetErrorTextA@L1::
    lea r10, offset ?st@midiInGetErrorTextA
    jmp ?@common_fake_dll_resolve
midiInGetErrorTextA endp

public midiInGetErrorTextW
midiInGetErrorTextW proc
    jmp qword ptr [?st@midiInGetErrorTextW+8]
?@midiInGetErrorTextW@L1::
    lea r10, offset ?st@midiInGetErrorTextW
    jmp ?@common_fake_dll_resolve
midiInGetErrorTextW endp

public midiInGetID
midiInGetID proc
    jmp qword ptr [?st@midiInGetID+8]
?@midiInGetID@L1::
    lea r10, offset ?st@midiInGetID
    jmp ?@common_fake_dll_resolve
midiInGetID endp

public midiInGetNumDevs
midiInGetNumDevs proc
    jmp qword ptr [?st@midiInGetNumDevs+8]
?@midiInGetNumDevs@L1::
    lea r10, offset ?st@midiInGetNumDevs
    jmp ?@common_fake_dll_resolve
midiInGetNumDevs endp

public midiInMessage
midiInMessage proc
    jmp qword ptr [?st@midiInMessage+8]
?@midiInMessage@L1::
    lea r10, offset ?st@midiInMessage
    jmp ?@common_fake_dll_resolve
midiInMessage endp

public midiInOpen
midiInOpen proc
    jmp qword ptr [?st@midiInOpen+8]
?@midiInOpen@L1::
    lea r10, offset ?st@midiInOpen
    jmp ?@common_fake_dll_resolve
midiInOpen endp

public midiInPrepareHeader
midiInPrepareHeader proc
    jmp qword ptr [?st@midiInPrepareHeader+8]
?@midiInPrepareHeader@L1::
    lea r10, offset ?st@midiInPrepareHeader
    jmp ?@common_fake_dll_resolve
midiInPrepareHeader endp

public midiInReset
midiInReset proc
    jmp qword ptr [?st@midiInReset+8]
?@midiInReset@L1::
    lea r10, offset ?st@midiInReset
    jmp ?@common_fake_dll_resolve
midiInReset endp

public midiInStart
midiInStart proc
    jmp qword ptr [?st@midiInStart+8]
?@midiInStart@L1::
    lea r10, offset ?st@midiInStart
    jmp ?@common_fake_dll_resolve
midiInStart endp

public midiInStop
midiInStop proc
    jmp qword ptr [?st@midiInStop+8]
?@midiInStop@L1::
    lea r10, offset ?st@midiInStop
    jmp ?@common_fake_dll_resolve
midiInStop endp

public midiInUnprepareHeader
midiInUnprepareHeader proc
    jmp qword ptr [?st@midiInUnprepareHeader+8]
?@midiInUnprepareHeader@L1::
    lea r10, offset ?st@midiInUnprepareHeader
    jmp ?@common_fake_dll_resolve
midiInUnprepareHeader endp

public midiOutCacheDrumPatches
midiOutCacheDrumPatches proc
    jmp qword ptr [?st@midiOutCacheDrumPatches+8]
?@midiOutCacheDrumPatches@L1::
    lea r10, offset ?st@midiOutCacheDrumPatches
    jmp ?@common_fake_dll_resolve
midiOutCacheDrumPatches endp

public midiOutCachePatches
midiOutCachePatches proc
    jmp qword ptr [?st@midiOutCachePatches+8]
?@midiOutCachePatches@L1::
    lea r10, offset ?st@midiOutCachePatches
    jmp ?@common_fake_dll_resolve
midiOutCachePatches endp

public midiOutClose
midiOutClose proc
    jmp qword ptr [?st@midiOutClose+8]
?@midiOutClose@L1::
    lea r10, offset ?st@midiOutClose
    jmp ?@common_fake_dll_resolve
midiOutClose endp

public midiOutGetDevCapsA
midiOutGetDevCapsA proc
    jmp qword ptr [?st@midiOutGetDevCapsA+8]
?@midiOutGetDevCapsA@L1::
    lea r10, offset ?st@midiOutGetDevCapsA
    jmp ?@common_fake_dll_resolve
midiOutGetDevCapsA endp

public midiOutGetDevCapsW
midiOutGetDevCapsW proc
    jmp qword ptr [?st@midiOutGetDevCapsW+8]
?@midiOutGetDevCapsW@L1::
    lea r10, offset ?st@midiOutGetDevCapsW
    jmp ?@common_fake_dll_resolve
midiOutGetDevCapsW endp

public midiOutGetErrorTextA
midiOutGetErrorTextA proc
    jmp qword ptr [?st@midiOutGetErrorTextA+8]
?@midiOutGetErrorTextA@L1::
    lea r10, offset ?st@midiOutGetErrorTextA
    jmp ?@common_fake_dll_resolve
midiOutGetErrorTextA endp

public midiOutGetErrorTextW
midiOutGetErrorTextW proc
    jmp qword ptr [?st@midiOutGetErrorTextW+8]
?@midiOutGetErrorTextW@L1::
    lea r10, offset ?st@midiOutGetErrorTextW
    jmp ?@common_fake_dll_resolve
midiOutGetErrorTextW endp

public midiOutGetID
midiOutGetID proc
    jmp qword ptr [?st@midiOutGetID+8]
?@midiOutGetID@L1::
    lea r10, offset ?st@midiOutGetID
    jmp ?@common_fake_dll_resolve
midiOutGetID endp

public midiOutGetNumDevs
midiOutGetNumDevs proc
    jmp qword ptr [?st@midiOutGetNumDevs+8]
?@midiOutGetNumDevs@L1::
    lea r10, offset ?st@midiOutGetNumDevs
    jmp ?@common_fake_dll_resolve
midiOutGetNumDevs endp

public midiOutGetVolume
midiOutGetVolume proc
    jmp qword ptr [?st@midiOutGetVolume+8]
?@midiOutGetVolume@L1::
    lea r10, offset ?st@midiOutGetVolume
    jmp ?@common_fake_dll_resolve
midiOutGetVolume endp

public midiOutLongMsg
midiOutLongMsg proc
    jmp qword ptr [?st@midiOutLongMsg+8]
?@midiOutLongMsg@L1::
    lea r10, offset ?st@midiOutLongMsg
    jmp ?@common_fake_dll_resolve
midiOutLongMsg endp

public midiOutMessage
midiOutMessage proc
    jmp qword ptr [?st@midiOutMessage+8]
?@midiOutMessage@L1::
    lea r10, offset ?st@midiOutMessage
    jmp ?@common_fake_dll_resolve
midiOutMessage endp

public midiOutOpen
midiOutOpen proc
    jmp qword ptr [?st@midiOutOpen+8]
?@midiOutOpen@L1::
    lea r10, offset ?st@midiOutOpen
    jmp ?@common_fake_dll_resolve
midiOutOpen endp

public midiOutPrepareHeader
midiOutPrepareHeader proc
    jmp qword ptr [?st@midiOutPrepareHeader+8]
?@midiOutPrepareHeader@L1::
    lea r10, offset ?st@midiOutPrepareHeader
    jmp ?@common_fake_dll_resolve
midiOutPrepareHeader endp

public midiOutReset
midiOutReset proc
    jmp qword ptr [?st@midiOutReset+8]
?@midiOutReset@L1::
    lea r10, offset ?st@midiOutReset
    jmp ?@common_fake_dll_resolve
midiOutReset endp

public midiOutSetVolume
midiOutSetVolume proc
    jmp qword ptr [?st@midiOutSetVolume+8]
?@midiOutSetVolume@L1::
    lea r10, offset ?st@midiOutSetVolume
    jmp ?@common_fake_dll_resolve
midiOutSetVolume endp

public midiOutShortMsg
midiOutShortMsg proc
    jmp qword ptr [?st@midiOutShortMsg+8]
?@midiOutShortMsg@L1::
    lea r10, offset ?st@midiOutShortMsg
    jmp ?@common_fake_dll_resolve
midiOutShortMsg endp

public midiOutUnprepareHeader
midiOutUnprepareHeader proc
    jmp qword ptr [?st@midiOutUnprepareHeader+8]
?@midiOutUnprepareHeader@L1::
    lea r10, offset ?st@midiOutUnprepareHeader
    jmp ?@common_fake_dll_resolve
midiOutUnprepareHeader endp

public midiStreamClose
midiStreamClose proc
    jmp qword ptr [?st@midiStreamClose+8]
?@midiStreamClose@L1::
    lea r10, offset ?st@midiStreamClose
    jmp ?@common_fake_dll_resolve
midiStreamClose endp

public midiStreamOpen
midiStreamOpen proc
    jmp qword ptr [?st@midiStreamOpen+8]
?@midiStreamOpen@L1::
    lea r10, offset ?st@midiStreamOpen
    jmp ?@common_fake_dll_resolve
midiStreamOpen endp

public midiStreamOut
midiStreamOut proc
    jmp qword ptr [?st@midiStreamOut+8]
?@midiStreamOut@L1::
    lea r10, offset ?st@midiStreamOut
    jmp ?@common_fake_dll_resolve
midiStreamOut endp

public midiStreamPause
midiStreamPause proc
    jmp qword ptr [?st@midiStreamPause+8]
?@midiStreamPause@L1::
    lea r10, offset ?st@midiStreamPause
    jmp ?@common_fake_dll_resolve
midiStreamPause endp

public midiStreamPosition
midiStreamPosition proc
    jmp qword ptr [?st@midiStreamPosition+8]
?@midiStreamPosition@L1::
    lea r10, offset ?st@midiStreamPosition
    jmp ?@common_fake_dll_resolve
midiStreamPosition endp

public midiStreamProperty
midiStreamProperty proc
    jmp qword ptr [?st@midiStreamProperty+8]
?@midiStreamProperty@L1::
    lea r10, offset ?st@midiStreamProperty
    jmp ?@common_fake_dll_resolve
midiStreamProperty endp

public midiStreamRestart
midiStreamRestart proc
    jmp qword ptr [?st@midiStreamRestart+8]
?@midiStreamRestart@L1::
    lea r10, offset ?st@midiStreamRestart
    jmp ?@common_fake_dll_resolve
midiStreamRestart endp

public midiStreamStop
midiStreamStop proc
    jmp qword ptr [?st@midiStreamStop+8]
?@midiStreamStop@L1::
    lea r10, offset ?st@midiStreamStop
    jmp ?@common_fake_dll_resolve
midiStreamStop endp

public mixerClose
mixerClose proc
    jmp qword ptr [?st@mixerClose+8]
?@mixerClose@L1::
    lea r10, offset ?st@mixerClose
    jmp ?@common_fake_dll_resolve
mixerClose endp

public mixerGetControlDetailsA
mixerGetControlDetailsA proc
    jmp qword ptr [?st@mixerGetControlDetailsA+8]
?@mixerGetControlDetailsA@L1::
    lea r10, offset ?st@mixerGetControlDetailsA
    jmp ?@common_fake_dll_resolve
mixerGetControlDetailsA endp

public mixerGetControlDetailsW
mixerGetControlDetailsW proc
    jmp qword ptr [?st@mixerGetControlDetailsW+8]
?@mixerGetControlDetailsW@L1::
    lea r10, offset ?st@mixerGetControlDetailsW
    jmp ?@common_fake_dll_resolve
mixerGetControlDetailsW endp

public mixerGetDevCapsA
mixerGetDevCapsA proc
    jmp qword ptr [?st@mixerGetDevCapsA+8]
?@mixerGetDevCapsA@L1::
    lea r10, offset ?st@mixerGetDevCapsA
    jmp ?@common_fake_dll_resolve
mixerGetDevCapsA endp

public mixerGetDevCapsW
mixerGetDevCapsW proc
    jmp qword ptr [?st@mixerGetDevCapsW+8]
?@mixerGetDevCapsW@L1::
    lea r10, offset ?st@mixerGetDevCapsW
    jmp ?@common_fake_dll_resolve
mixerGetDevCapsW endp

public mixerGetID
mixerGetID proc
    jmp qword ptr [?st@mixerGetID+8]
?@mixerGetID@L1::
    lea r10, offset ?st@mixerGetID
    jmp ?@common_fake_dll_resolve
mixerGetID endp

public mixerGetLineControlsA
mixerGetLineControlsA proc
    jmp qword ptr [?st@mixerGetLineControlsA+8]
?@mixerGetLineControlsA@L1::
    lea r10, offset ?st@mixerGetLineControlsA
    jmp ?@common_fake_dll_resolve
mixerGetLineControlsA endp

public mixerGetLineControlsW
mixerGetLineControlsW proc
    jmp qword ptr [?st@mixerGetLineControlsW+8]
?@mixerGetLineControlsW@L1::
    lea r10, offset ?st@mixerGetLineControlsW
    jmp ?@common_fake_dll_resolve
mixerGetLineControlsW endp

public mixerGetLineInfoA
mixerGetLineInfoA proc
    jmp qword ptr [?st@mixerGetLineInfoA+8]
?@mixerGetLineInfoA@L1::
    lea r10, offset ?st@mixerGetLineInfoA
    jmp ?@common_fake_dll_resolve
mixerGetLineInfoA endp

public mixerGetLineInfoW
mixerGetLineInfoW proc
    jmp qword ptr [?st@mixerGetLineInfoW+8]
?@mixerGetLineInfoW@L1::
    lea r10, offset ?st@mixerGetLineInfoW
    jmp ?@common_fake_dll_resolve
mixerGetLineInfoW endp

public mixerGetNumDevs
mixerGetNumDevs proc
    jmp qword ptr [?st@mixerGetNumDevs+8]
?@mixerGetNumDevs@L1::
    lea r10, offset ?st@mixerGetNumDevs
    jmp ?@common_fake_dll_resolve
mixerGetNumDevs endp

public mixerMessage
mixerMessage proc
    jmp qword ptr [?st@mixerMessage+8]
?@mixerMessage@L1::
    lea r10, offset ?st@mixerMessage
    jmp ?@common_fake_dll_resolve
mixerMessage endp

public mixerOpen
mixerOpen proc
    jmp qword ptr [?st@mixerOpen+8]
?@mixerOpen@L1::
    lea r10, offset ?st@mixerOpen
    jmp ?@common_fake_dll_resolve
mixerOpen endp

public mixerSetControlDetails
mixerSetControlDetails proc
    jmp qword ptr [?st@mixerSetControlDetails+8]
?@mixerSetControlDetails@L1::
    lea r10, offset ?st@mixerSetControlDetails
    jmp ?@common_fake_dll_resolve
mixerSetControlDetails endp

public mmDrvInstall
mmDrvInstall proc
    jmp qword ptr [?st@mmDrvInstall+8]
?@mmDrvInstall@L1::
    lea r10, offset ?st@mmDrvInstall
    jmp ?@common_fake_dll_resolve
mmDrvInstall endp

public mmioAdvance
mmioAdvance proc
    jmp qword ptr [?st@mmioAdvance+8]
?@mmioAdvance@L1::
    lea r10, offset ?st@mmioAdvance
    jmp ?@common_fake_dll_resolve
mmioAdvance endp

public mmioAscend
mmioAscend proc
    jmp qword ptr [?st@mmioAscend+8]
?@mmioAscend@L1::
    lea r10, offset ?st@mmioAscend
    jmp ?@common_fake_dll_resolve
mmioAscend endp

public mmioClose
mmioClose proc
    jmp qword ptr [?st@mmioClose+8]
?@mmioClose@L1::
    lea r10, offset ?st@mmioClose
    jmp ?@common_fake_dll_resolve
mmioClose endp

public mmioCreateChunk
mmioCreateChunk proc
    jmp qword ptr [?st@mmioCreateChunk+8]
?@mmioCreateChunk@L1::
    lea r10, offset ?st@mmioCreateChunk
    jmp ?@common_fake_dll_resolve
mmioCreateChunk endp

public mmioDescend
mmioDescend proc
    jmp qword ptr [?st@mmioDescend+8]
?@mmioDescend@L1::
    lea r10, offset ?st@mmioDescend
    jmp ?@common_fake_dll_resolve
mmioDescend endp

public mmioFlush
mmioFlush proc
    jmp qword ptr [?st@mmioFlush+8]
?@mmioFlush@L1::
    lea r10, offset ?st@mmioFlush
    jmp ?@common_fake_dll_resolve
mmioFlush endp

public mmioGetInfo
mmioGetInfo proc
    jmp qword ptr [?st@mmioGetInfo+8]
?@mmioGetInfo@L1::
    lea r10, offset ?st@mmioGetInfo
    jmp ?@common_fake_dll_resolve
mmioGetInfo endp

public mmioInstallIOProcA
mmioInstallIOProcA proc
    jmp qword ptr [?st@mmioInstallIOProcA+8]
?@mmioInstallIOProcA@L1::
    lea r10, offset ?st@mmioInstallIOProcA
    jmp ?@common_fake_dll_resolve
mmioInstallIOProcA endp

public mmioInstallIOProcW
mmioInstallIOProcW proc
    jmp qword ptr [?st@mmioInstallIOProcW+8]
?@mmioInstallIOProcW@L1::
    lea r10, offset ?st@mmioInstallIOProcW
    jmp ?@common_fake_dll_resolve
mmioInstallIOProcW endp

public mmioOpenA
mmioOpenA proc
    jmp qword ptr [?st@mmioOpenA+8]
?@mmioOpenA@L1::
    lea r10, offset ?st@mmioOpenA
    jmp ?@common_fake_dll_resolve
mmioOpenA endp

public mmioOpenW
mmioOpenW proc
    jmp qword ptr [?st@mmioOpenW+8]
?@mmioOpenW@L1::
    lea r10, offset ?st@mmioOpenW
    jmp ?@common_fake_dll_resolve
mmioOpenW endp

public mmioRead
mmioRead proc
    jmp qword ptr [?st@mmioRead+8]
?@mmioRead@L1::
    lea r10, offset ?st@mmioRead
    jmp ?@common_fake_dll_resolve
mmioRead endp

public mmioRenameA
mmioRenameA proc
    jmp qword ptr [?st@mmioRenameA+8]
?@mmioRenameA@L1::
    lea r10, offset ?st@mmioRenameA
    jmp ?@common_fake_dll_resolve
mmioRenameA endp

public mmioRenameW
mmioRenameW proc
    jmp qword ptr [?st@mmioRenameW+8]
?@mmioRenameW@L1::
    lea r10, offset ?st@mmioRenameW
    jmp ?@common_fake_dll_resolve
mmioRenameW endp

public mmioSeek
mmioSeek proc
    jmp qword ptr [?st@mmioSeek+8]
?@mmioSeek@L1::
    lea r10, offset ?st@mmioSeek
    jmp ?@common_fake_dll_resolve
mmioSeek endp

public mmioSendMessage
mmioSendMessage proc
    jmp qword ptr [?st@mmioSendMessage+8]
?@mmioSendMessage@L1::
    lea r10, offset ?st@mmioSendMessage
    jmp ?@common_fake_dll_resolve
mmioSendMessage endp

public mmioSetBuffer
mmioSetBuffer proc
    jmp qword ptr [?st@mmioSetBuffer+8]
?@mmioSetBuffer@L1::
    lea r10, offset ?st@mmioSetBuffer
    jmp ?@common_fake_dll_resolve
mmioSetBuffer endp

public mmioSetInfo
mmioSetInfo proc
    jmp qword ptr [?st@mmioSetInfo+8]
?@mmioSetInfo@L1::
    lea r10, offset ?st@mmioSetInfo
    jmp ?@common_fake_dll_resolve
mmioSetInfo endp

public mmioStringToFOURCCA
mmioStringToFOURCCA proc
    jmp qword ptr [?st@mmioStringToFOURCCA+8]
?@mmioStringToFOURCCA@L1::
    lea r10, offset ?st@mmioStringToFOURCCA
    jmp ?@common_fake_dll_resolve
mmioStringToFOURCCA endp

public mmioStringToFOURCCW
mmioStringToFOURCCW proc
    jmp qword ptr [?st@mmioStringToFOURCCW+8]
?@mmioStringToFOURCCW@L1::
    lea r10, offset ?st@mmioStringToFOURCCW
    jmp ?@common_fake_dll_resolve
mmioStringToFOURCCW endp

public mmioWrite
mmioWrite proc
    jmp qword ptr [?st@mmioWrite+8]
?@mmioWrite@L1::
    lea r10, offset ?st@mmioWrite
    jmp ?@common_fake_dll_resolve
mmioWrite endp

public sndPlaySoundA
sndPlaySoundA proc
    jmp qword ptr [?st@sndPlaySoundA+8]
?@sndPlaySoundA@L1::
    lea r10, offset ?st@sndPlaySoundA
    jmp ?@common_fake_dll_resolve
sndPlaySoundA endp

public sndPlaySoundW
sndPlaySoundW proc
    jmp qword ptr [?st@sndPlaySoundW+8]
?@sndPlaySoundW@L1::
    lea r10, offset ?st@sndPlaySoundW
    jmp ?@common_fake_dll_resolve
sndPlaySoundW endp

public timeBeginPeriod
timeBeginPeriod proc
    jmp qword ptr [?st@timeBeginPeriod+8]
?@timeBeginPeriod@L1::
    lea r10, offset ?st@timeBeginPeriod
    jmp ?@common_fake_dll_resolve
timeBeginPeriod endp

public timeEndPeriod
timeEndPeriod proc
    jmp qword ptr [?st@timeEndPeriod+8]
?@timeEndPeriod@L1::
    lea r10, offset ?st@timeEndPeriod
    jmp ?@common_fake_dll_resolve
timeEndPeriod endp

public timeGetDevCaps
timeGetDevCaps proc
    jmp qword ptr [?st@timeGetDevCaps+8]
?@timeGetDevCaps@L1::
    lea r10, offset ?st@timeGetDevCaps
    jmp ?@common_fake_dll_resolve
timeGetDevCaps endp

public timeGetSystemTime
timeGetSystemTime proc
    jmp qword ptr [?st@timeGetSystemTime+8]
?@timeGetSystemTime@L1::
    lea r10, offset ?st@timeGetSystemTime
    jmp ?@common_fake_dll_resolve
timeGetSystemTime endp

public timeGetTime
timeGetTime proc
    jmp qword ptr [?st@timeGetTime+8]
?@timeGetTime@L1::
    lea r10, offset ?st@timeGetTime
    jmp ?@common_fake_dll_resolve
timeGetTime endp

public timeKillEvent
timeKillEvent proc
    jmp qword ptr [?st@timeKillEvent+8]
?@timeKillEvent@L1::
    lea r10, offset ?st@timeKillEvent
    jmp ?@common_fake_dll_resolve
timeKillEvent endp

public timeSetEvent
timeSetEvent proc
    jmp qword ptr [?st@timeSetEvent+8]
?@timeSetEvent@L1::
    lea r10, offset ?st@timeSetEvent
    jmp ?@common_fake_dll_resolve
timeSetEvent endp

public waveInAddBuffer
waveInAddBuffer proc
    jmp qword ptr [?st@waveInAddBuffer+8]
?@waveInAddBuffer@L1::
    lea r10, offset ?st@waveInAddBuffer
    jmp ?@common_fake_dll_resolve
waveInAddBuffer endp

public waveInClose
waveInClose proc
    jmp qword ptr [?st@waveInClose+8]
?@waveInClose@L1::
    lea r10, offset ?st@waveInClose
    jmp ?@common_fake_dll_resolve
waveInClose endp

public waveInGetDevCapsA
waveInGetDevCapsA proc
    jmp qword ptr [?st@waveInGetDevCapsA+8]
?@waveInGetDevCapsA@L1::
    lea r10, offset ?st@waveInGetDevCapsA
    jmp ?@common_fake_dll_resolve
waveInGetDevCapsA endp

public waveInGetDevCapsW
waveInGetDevCapsW proc
    jmp qword ptr [?st@waveInGetDevCapsW+8]
?@waveInGetDevCapsW@L1::
    lea r10, offset ?st@waveInGetDevCapsW
    jmp ?@common_fake_dll_resolve
waveInGetDevCapsW endp

public waveInGetErrorTextA
waveInGetErrorTextA proc
    jmp qword ptr [?st@waveInGetErrorTextA+8]
?@waveInGetErrorTextA@L1::
    lea r10, offset ?st@waveInGetErrorTextA
    jmp ?@common_fake_dll_resolve
waveInGetErrorTextA endp

public waveInGetErrorTextW
waveInGetErrorTextW proc
    jmp qword ptr [?st@waveInGetErrorTextW+8]
?@waveInGetErrorTextW@L1::
    lea r10, offset ?st@waveInGetErrorTextW
    jmp ?@common_fake_dll_resolve
waveInGetErrorTextW endp

public waveInGetID
waveInGetID proc
    jmp qword ptr [?st@waveInGetID+8]
?@waveInGetID@L1::
    lea r10, offset ?st@waveInGetID
    jmp ?@common_fake_dll_resolve
waveInGetID endp

public waveInGetNumDevs
waveInGetNumDevs proc
    jmp qword ptr [?st@waveInGetNumDevs+8]
?@waveInGetNumDevs@L1::
    lea r10, offset ?st@waveInGetNumDevs
    jmp ?@common_fake_dll_resolve
waveInGetNumDevs endp

public waveInGetPosition
waveInGetPosition proc
    jmp qword ptr [?st@waveInGetPosition+8]
?@waveInGetPosition@L1::
    lea r10, offset ?st@waveInGetPosition
    jmp ?@common_fake_dll_resolve
waveInGetPosition endp

public waveInMessage
waveInMessage proc
    jmp qword ptr [?st@waveInMessage+8]
?@waveInMessage@L1::
    lea r10, offset ?st@waveInMessage
    jmp ?@common_fake_dll_resolve
waveInMessage endp

public waveInOpen
waveInOpen proc
    jmp qword ptr [?st@waveInOpen+8]
?@waveInOpen@L1::
    lea r10, offset ?st@waveInOpen
    jmp ?@common_fake_dll_resolve
waveInOpen endp

public waveInPrepareHeader
waveInPrepareHeader proc
    jmp qword ptr [?st@waveInPrepareHeader+8]
?@waveInPrepareHeader@L1::
    lea r10, offset ?st@waveInPrepareHeader
    jmp ?@common_fake_dll_resolve
waveInPrepareHeader endp

public waveInReset
waveInReset proc
    jmp qword ptr [?st@waveInReset+8]
?@waveInReset@L1::
    lea r10, offset ?st@waveInReset
    jmp ?@common_fake_dll_resolve
waveInReset endp

public waveInStart
waveInStart proc
    jmp qword ptr [?st@waveInStart+8]
?@waveInStart@L1::
    lea r10, offset ?st@waveInStart
    jmp ?@common_fake_dll_resolve
waveInStart endp

public waveInStop
waveInStop proc
    jmp qword ptr [?st@waveInStop+8]
?@waveInStop@L1::
    lea r10, offset ?st@waveInStop
    jmp ?@common_fake_dll_resolve
waveInStop endp

public waveInUnprepareHeader
waveInUnprepareHeader proc
    jmp qword ptr [?st@waveInUnprepareHeader+8]
?@waveInUnprepareHeader@L1::
    lea r10, offset ?st@waveInUnprepareHeader
    jmp ?@common_fake_dll_resolve
waveInUnprepareHeader endp

public waveOutBreakLoop
waveOutBreakLoop proc
    jmp qword ptr [?st@waveOutBreakLoop+8]
?@waveOutBreakLoop@L1::
    lea r10, offset ?st@waveOutBreakLoop
    jmp ?@common_fake_dll_resolve
waveOutBreakLoop endp

public waveOutClose
waveOutClose proc
    jmp qword ptr [?st@waveOutClose+8]
?@waveOutClose@L1::
    lea r10, offset ?st@waveOutClose
    jmp ?@common_fake_dll_resolve
waveOutClose endp

public waveOutGetDevCapsA
waveOutGetDevCapsA proc
    jmp qword ptr [?st@waveOutGetDevCapsA+8]
?@waveOutGetDevCapsA@L1::
    lea r10, offset ?st@waveOutGetDevCapsA
    jmp ?@common_fake_dll_resolve
waveOutGetDevCapsA endp

public waveOutGetDevCapsW
waveOutGetDevCapsW proc
    jmp qword ptr [?st@waveOutGetDevCapsW+8]
?@waveOutGetDevCapsW@L1::
    lea r10, offset ?st@waveOutGetDevCapsW
    jmp ?@common_fake_dll_resolve
waveOutGetDevCapsW endp

public waveOutGetErrorTextA
waveOutGetErrorTextA proc
    jmp qword ptr [?st@waveOutGetErrorTextA+8]
?@waveOutGetErrorTextA@L1::
    lea r10, offset ?st@waveOutGetErrorTextA
    jmp ?@common_fake_dll_resolve
waveOutGetErrorTextA endp

public waveOutGetErrorTextW
waveOutGetErrorTextW proc
    jmp qword ptr [?st@waveOutGetErrorTextW+8]
?@waveOutGetErrorTextW@L1::
    lea r10, offset ?st@waveOutGetErrorTextW
    jmp ?@common_fake_dll_resolve
waveOutGetErrorTextW endp

public waveOutGetID
waveOutGetID proc
    jmp qword ptr [?st@waveOutGetID+8]
?@waveOutGetID@L1::
    lea r10, offset ?st@waveOutGetID
    jmp ?@common_fake_dll_resolve
waveOutGetID endp

public waveOutGetNumDevs
waveOutGetNumDevs proc
    jmp qword ptr [?st@waveOutGetNumDevs+8]
?@waveOutGetNumDevs@L1::
    lea r10, offset ?st@waveOutGetNumDevs
    jmp ?@common_fake_dll_resolve
waveOutGetNumDevs endp

public waveOutGetPitch
waveOutGetPitch proc
    jmp qword ptr [?st@waveOutGetPitch+8]
?@waveOutGetPitch@L1::
    lea r10, offset ?st@waveOutGetPitch
    jmp ?@common_fake_dll_resolve
waveOutGetPitch endp

public waveOutGetPlaybackRate
waveOutGetPlaybackRate proc
    jmp qword ptr [?st@waveOutGetPlaybackRate+8]
?@waveOutGetPlaybackRate@L1::
    lea r10, offset ?st@waveOutGetPlaybackRate
    jmp ?@common_fake_dll_resolve
waveOutGetPlaybackRate endp

public waveOutGetPosition
waveOutGetPosition proc
    jmp qword ptr [?st@waveOutGetPosition+8]
?@waveOutGetPosition@L1::
    lea r10, offset ?st@waveOutGetPosition
    jmp ?@common_fake_dll_resolve
waveOutGetPosition endp

public waveOutGetVolume
waveOutGetVolume proc
    jmp qword ptr [?st@waveOutGetVolume+8]
?@waveOutGetVolume@L1::
    lea r10, offset ?st@waveOutGetVolume
    jmp ?@common_fake_dll_resolve
waveOutGetVolume endp

public waveOutMessage
waveOutMessage proc
    jmp qword ptr [?st@waveOutMessage+8]
?@waveOutMessage@L1::
    lea r10, offset ?st@waveOutMessage
    jmp ?@common_fake_dll_resolve
waveOutMessage endp

public waveOutOpen
waveOutOpen proc
    jmp qword ptr [?st@waveOutOpen+8]
?@waveOutOpen@L1::
    lea r10, offset ?st@waveOutOpen
    jmp ?@common_fake_dll_resolve
waveOutOpen endp

public waveOutPause
waveOutPause proc
    jmp qword ptr [?st@waveOutPause+8]
?@waveOutPause@L1::
    lea r10, offset ?st@waveOutPause
    jmp ?@common_fake_dll_resolve
waveOutPause endp

public waveOutPrepareHeader
waveOutPrepareHeader proc
    jmp qword ptr [?st@waveOutPrepareHeader+8]
?@waveOutPrepareHeader@L1::
    lea r10, offset ?st@waveOutPrepareHeader
    jmp ?@common_fake_dll_resolve
waveOutPrepareHeader endp

public waveOutReset
waveOutReset proc
    jmp qword ptr [?st@waveOutReset+8]
?@waveOutReset@L1::
    lea r10, offset ?st@waveOutReset
    jmp ?@common_fake_dll_resolve
waveOutReset endp

public waveOutRestart
waveOutRestart proc
    jmp qword ptr [?st@waveOutRestart+8]
?@waveOutRestart@L1::
    lea r10, offset ?st@waveOutRestart
    jmp ?@common_fake_dll_resolve
waveOutRestart endp

public waveOutSetPitch
waveOutSetPitch proc
    jmp qword ptr [?st@waveOutSetPitch+8]
?@waveOutSetPitch@L1::
    lea r10, offset ?st@waveOutSetPitch
    jmp ?@common_fake_dll_resolve
waveOutSetPitch endp

public waveOutSetPlaybackRate
waveOutSetPlaybackRate proc
    jmp qword ptr [?st@waveOutSetPlaybackRate+8]
?@waveOutSetPlaybackRate@L1::
    lea r10, offset ?st@waveOutSetPlaybackRate
    jmp ?@common_fake_dll_resolve
waveOutSetPlaybackRate endp

public waveOutSetVolume
waveOutSetVolume proc
    jmp qword ptr [?st@waveOutSetVolume+8]
?@waveOutSetVolume@L1::
    lea r10, offset ?st@waveOutSetVolume
    jmp ?@common_fake_dll_resolve
waveOutSetVolume endp

public waveOutUnprepareHeader
waveOutUnprepareHeader proc
    jmp qword ptr [?st@waveOutUnprepareHeader+8]
?@waveOutUnprepareHeader@L1::
    lea r10, offset ?st@waveOutUnprepareHeader
    jmp ?@common_fake_dll_resolve
waveOutUnprepareHeader endp

public waveOutWrite
waveOutWrite proc
    jmp qword ptr [?st@waveOutWrite+8]
?@waveOutWrite@L1::
    lea r10, offset ?st@waveOutWrite
    jmp ?@common_fake_dll_resolve
waveOutWrite endp
_TEXT ENDS

END
