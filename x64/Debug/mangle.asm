; Listing generated by Microsoft (R) Optimizing Compiler Version 19.00.23026.0 

include listing.inc

INCLUDELIB MSVCRTD
INCLUDELIB OLDNAMES

_DATA	SEGMENT
COMM	decoflags:BYTE
COMM	broadflags:BYTE
COMM	evex:BYTE
COMM	ZEROLOCALS:BYTE
_DATA	ENDS
_DATA	SEGMENT
$SG10650 DB	'_%s@%d', 00H
	ORG $+1
$SG10657 DB	'@%s@%u', 00H
_DATA	ENDS
CONST	SEGMENT
fcmanglers DQ	FLAT:ms32_decorate
	DQ	FLAT:ow_decorate
	DQ	FLAT:ms64_decorate
CONST	ENDS
PUBLIC	__local_stdio_printf_options
PUBLIC	_vsnprintf_l
PUBLIC	_vsprintf_l
PUBLIC	sprintf
PUBLIC	Mangle
PUBLIC	SetMangler
EXTRN	__imp___stdio_common_vsprintf:PROC
EXTRN	memcpy:PROC
EXTRN	__imp__strupr:PROC
EXTRN	_RTC_CheckStackVars:PROC
EXTRN	_RTC_InitBase:PROC
EXTRN	_RTC_Shutdown:PROC
EXTRN	Options:BYTE
EXTRN	ModuleInfo:BYTE
EXTRN	__ImageBase:BYTE
_DATA	SEGMENT
COMM	?_OptionsStorage@?1??__local_stdio_printf_options@@9@9:QWORD							; `__local_stdio_printf_options'::`2'::_OptionsStorage
_DATA	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$__local_stdio_printf_options DD imagerel $LN3
	DD	imagerel $LN3+11
	DD	imagerel $unwind$__local_stdio_printf_options
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$_vsnprintf_l DD imagerel $LN5
	DD	imagerel $LN5+140
	DD	imagerel $unwind$_vsnprintf_l
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$_vsprintf_l DD imagerel $LN3
	DD	imagerel $LN3+88
	DD	imagerel $unwind$_vsprintf_l
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$sprintf DD imagerel $LN3
	DD	imagerel $LN3+120
	DD	imagerel $unwind$sprintf
pdata	ENDS
pdata	SEGMENT
$pdata$Mangle DD imagerel $LN16
	DD	imagerel $LN16+304
	DD	imagerel $unwind$Mangle
$pdata$SetMangler DD imagerel $LN4
	DD	imagerel $LN4+36
	DD	imagerel $unwind$SetMangler
$pdata$ms32_decorate DD imagerel ms32_decorate
	DD	imagerel ms32_decorate+80
	DD	imagerel $unwind$ms32_decorate
$pdata$ow_decorate DD imagerel ow_decorate
	DD	imagerel ow_decorate+309
	DD	imagerel $unwind$ow_decorate
$pdata$ms64_decorate DD imagerel ms64_decorate
	DD	imagerel ms64_decorate+85
	DD	imagerel $unwind$ms64_decorate
$pdata$VoidMangler DD imagerel VoidMangler
	DD	imagerel VoidMangler+85
	DD	imagerel $unwind$VoidMangler
$pdata$UCaseMangler DD imagerel UCaseMangler
	DD	imagerel UCaseMangler+96
	DD	imagerel $unwind$UCaseMangler
$pdata$UScoreMangler DD imagerel UScoreMangler
	DD	imagerel UScoreMangler+108
	DD	imagerel $unwind$UScoreMangler
$pdata$StdcallMangler DD imagerel StdcallMangler
	DD	imagerel StdcallMangler+141
	DD	imagerel $unwind$StdcallMangler
pdata	ENDS
;	COMDAT rtc$TMZ
rtc$TMZ	SEGMENT
_RTC_Shutdown.rtc$TMZ DQ FLAT:_RTC_Shutdown
rtc$TMZ	ENDS
;	COMDAT rtc$IMZ
rtc$IMZ	SEGMENT
_RTC_InitBase.rtc$IMZ DQ FLAT:_RTC_InitBase
rtc$IMZ	ENDS
xdata	SEGMENT
$unwind$Mangle DD 022301H
	DD	0700b720fH
$unwind$SetMangler DD 010f01H
	DD	0700fH
$unwind$ms32_decorate DD 022301H
	DD	0700b320fH
$unwind$ow_decorate DD 022301H
	DD	0700b520fH
$unwind$ms64_decorate DD 022301H
	DD	0700b320fH
$unwind$VoidMangler DD 022301H
	DD	0700b320fH
$unwind$UCaseMangler DD 022301H
	DD	0700b320fH
$unwind$UScoreMangler DD 022301H
	DD	0700b320fH
$unwind$StdcallMangler DD 022301H
	DD	0700b520fH
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$sprintf DD 022d01H
	DD	070159219H
xdata	ENDS
;	COMDAT CONST
CONST	SEGMENT
sprintf$rtcName$0 DB 05fH
	DB	041H
	DB	072H
	DB	067H
	DB	04cH
	DB	069H
	DB	073H
	DB	074H
	DB	00H
	ORG $+7
sprintf$rtcVarDesc DD 038H
	DD	08H
	DQ	FLAT:sprintf$rtcName$0
	ORG $+48
sprintf$rtcFrameData DD 01H
	DD	00H
	DQ	FLAT:sprintf$rtcVarDesc
CONST	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$_vsprintf_l DD 022d01H
	DD	070155219H
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$_vsnprintf_l DD 022d01H
	DD	070157219H
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$__local_stdio_printf_options DD 010201H
	DD	07002H
xdata	ENDS
; Function compile flags: /Odtp /RTCsu
; File d:\hjwasm\hjwasm2.13.1s\hjwasm2.13.1s\mangle.c
_TEXT	SEGMENT
dir$ = 32
sym$ = 64
buffer$ = 72
StdcallMangler PROC

; 103  : {

	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	push	rdi
	sub	rsp, 48					; 00000030H
	mov	rdi, rsp
	mov	ecx, 12
	mov	eax, -858993460				; ccccccccH
	rep stosd
	mov	rcx, QWORD PTR [rsp+64]

; 104  :     const struct dsym *dir = (struct dsym *)sym;

	mov	rax, QWORD PTR sym$[rsp]
	mov	QWORD PTR dir$[rsp], rax

; 105  : 
; 106  :     if( Options.stdcall_decoration == STDCALL_FULL && sym->isproc ) {

	movzx	eax, BYTE PTR Options+134
	test	eax, eax
	jne	SHORT $LN2@StdcallMan
	mov	rax, QWORD PTR sym$[rsp]
	movzx	eax, BYTE PTR [rax+41]
	shr	al, 3
	and	al, 1
	movzx	eax, al
	test	eax, eax
	je	SHORT $LN2@StdcallMan

; 107  :         return( sprintf( buffer, "_%s@%d", sym->name, dir->e.procinfo->parasize ) );

	mov	rax, QWORD PTR dir$[rsp]
	mov	rax, QWORD PTR [rax+96]
	mov	r9d, DWORD PTR [rax+32]
	mov	rax, QWORD PTR sym$[rsp]
	mov	r8, QWORD PTR [rax+8]
	lea	rdx, OFFSET FLAT:$SG10650
	mov	rcx, QWORD PTR buffer$[rsp]
	call	sprintf
	jmp	SHORT $LN1@StdcallMan

; 108  :     } else {

	jmp	SHORT $LN3@StdcallMan
$LN2@StdcallMan:

; 109  :         return( UScoreMangler( sym, buffer ) );

	mov	rdx, QWORD PTR buffer$[rsp]
	mov	rcx, QWORD PTR sym$[rsp]
	call	UScoreMangler
$LN3@StdcallMan:
$LN1@StdcallMan:

; 110  :     }
; 111  : }

	add	rsp, 48					; 00000030H
	pop	rdi
	ret	0
StdcallMangler ENDP
_TEXT	ENDS
; Function compile flags: /Odtp /RTCsu
; File d:\hjwasm\hjwasm2.13.1s\hjwasm2.13.1s\mangle.c
_TEXT	SEGMENT
sym$ = 48
buffer$ = 56
UScoreMangler PROC

; 92   : {

	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	push	rdi
	sub	rsp, 32					; 00000020H
	mov	rdi, rsp
	mov	ecx, 8
	mov	eax, -858993460				; ccccccccH
	rep stosd
	mov	rcx, QWORD PTR [rsp+48]

; 93   :     buffer[0] = '_';

	mov	eax, 1
	imul	rax, rax, 0
	mov	rcx, QWORD PTR buffer$[rsp]
	mov	BYTE PTR [rcx+rax], 95			; 0000005fH

; 94   :     memcpy( buffer+1, sym->name, sym->name_size + 1 );

	mov	rax, QWORD PTR sym$[rsp]
	movzx	eax, BYTE PTR [rax+72]
	inc	eax
	cdqe
	mov	rcx, QWORD PTR buffer$[rsp]
	inc	rcx
	mov	r8, rax
	mov	rax, QWORD PTR sym$[rsp]
	mov	rdx, QWORD PTR [rax+8]
	call	memcpy

; 95   :     return( sym->name_size + 1 );

	mov	rax, QWORD PTR sym$[rsp]
	movzx	eax, BYTE PTR [rax+72]
	inc	eax

; 96   : }

	add	rsp, 32					; 00000020H
	pop	rdi
	ret	0
UScoreMangler ENDP
_TEXT	ENDS
; Function compile flags: /Odtp /RTCsu
; File d:\hjwasm\hjwasm2.13.1s\hjwasm2.13.1s\mangle.c
_TEXT	SEGMENT
sym$ = 48
buffer$ = 56
UCaseMangler PROC

; 82   : {

	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	push	rdi
	sub	rsp, 32					; 00000020H
	mov	rdi, rsp
	mov	ecx, 8
	mov	eax, -858993460				; ccccccccH
	rep stosd
	mov	rcx, QWORD PTR [rsp+48]

; 83   :     memcpy( buffer, sym->name, sym->name_size + 1 );

	mov	rax, QWORD PTR sym$[rsp]
	movzx	eax, BYTE PTR [rax+72]
	inc	eax
	cdqe
	mov	r8, rax
	mov	rax, QWORD PTR sym$[rsp]
	mov	rdx, QWORD PTR [rax+8]
	mov	rcx, QWORD PTR buffer$[rsp]
	call	memcpy

; 84   :     _strupr( buffer );

	mov	rcx, QWORD PTR buffer$[rsp]
	call	QWORD PTR __imp__strupr

; 85   :     return( sym->name_size );

	mov	rax, QWORD PTR sym$[rsp]
	movzx	eax, BYTE PTR [rax+72]

; 86   : }

	add	rsp, 32					; 00000020H
	pop	rdi
	ret	0
UCaseMangler ENDP
_TEXT	ENDS
; Function compile flags: /Odtp /RTCsu
; File d:\hjwasm\hjwasm2.13.1s\hjwasm2.13.1s\mangle.c
_TEXT	SEGMENT
sym$ = 48
buffer$ = 56
VoidMangler PROC

; 73   : {

	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	push	rdi
	sub	rsp, 32					; 00000020H
	mov	rdi, rsp
	mov	ecx, 8
	mov	eax, -858993460				; ccccccccH
	rep stosd
	mov	rcx, QWORD PTR [rsp+48]

; 74   :     memcpy( buffer, sym->name, sym->name_size + 1 );

	mov	rax, QWORD PTR sym$[rsp]
	movzx	eax, BYTE PTR [rax+72]
	inc	eax
	cdqe
	mov	r8, rax
	mov	rax, QWORD PTR sym$[rsp]
	mov	rdx, QWORD PTR [rax+8]
	mov	rcx, QWORD PTR buffer$[rsp]
	call	memcpy

; 75   :     return( sym->name_size );

	mov	rax, QWORD PTR sym$[rsp]
	movzx	eax, BYTE PTR [rax+72]

; 76   : }

	add	rsp, 32					; 00000020H
	pop	rdi
	ret	0
VoidMangler ENDP
_TEXT	ENDS
; Function compile flags: /Odtp /RTCsu
; File d:\hjwasm\hjwasm2.13.1s\hjwasm2.13.1s\mangle.c
_TEXT	SEGMENT
sym$ = 48
buffer$ = 56
ms64_decorate PROC

; 175  : {

	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	push	rdi
	sub	rsp, 32					; 00000020H
	mov	rdi, rsp
	mov	ecx, 8
	mov	eax, -858993460				; ccccccccH
	rep stosd
	mov	rcx, QWORD PTR [rsp+48]

; 176  :     memcpy( buffer, sym->name, sym->name_size + 1 );

	mov	rax, QWORD PTR sym$[rsp]
	movzx	eax, BYTE PTR [rax+72]
	inc	eax
	cdqe
	mov	r8, rax
	mov	rax, QWORD PTR sym$[rsp]
	mov	rdx, QWORD PTR [rax+8]
	mov	rcx, QWORD PTR buffer$[rsp]
	call	memcpy

; 177  :     return( sym->name_size );

	mov	rax, QWORD PTR sym$[rsp]
	movzx	eax, BYTE PTR [rax+72]

; 178  : }

	add	rsp, 32					; 00000020H
	pop	rdi
	ret	0
ms64_decorate ENDP
_TEXT	ENDS
; Function compile flags: /Odtp /RTCsu
; File d:\hjwasm\hjwasm2.13.1s\hjwasm2.13.1s\mangle.c
_TEXT	SEGMENT
name$ = 32
changes$ = 40
tv71 = 44
sym$ = 64
buffer$ = 72
ow_decorate PROC

; 137  : {

	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	push	rdi
	sub	rsp, 48					; 00000030H
	mov	rdi, rsp
	mov	ecx, 12
	mov	eax, -858993460				; ccccccccH
	rep stosd
	mov	rcx, QWORD PTR [rsp+64]

; 138  :     char                *name;
; 139  :     enum changes        changes = NORMAL;

	mov	DWORD PTR changes$[rsp], 0

; 140  : 
; 141  :     if( sym->isproc ) {

	mov	rax, QWORD PTR sym$[rsp]
	movzx	eax, BYTE PTR [rax+41]
	shr	al, 3
	and	al, 1
	movzx	eax, al
	test	eax, eax
	je	SHORT $LN4@ow_decorat

; 142  :         changes |= USCORE_BACK;

	mov	eax, DWORD PTR changes$[rsp]
	or	eax, 2
	mov	DWORD PTR changes$[rsp], eax

; 143  :     } else {

	jmp	SHORT $LN5@ow_decorat
$LN4@ow_decorat:

; 144  :         switch( sym->mem_type ) {

	mov	rax, QWORD PTR sym$[rsp]
	mov	eax, DWORD PTR [rax+36]
	mov	DWORD PTR tv71[rsp], eax
	cmp	DWORD PTR tv71[rsp], 129		; 00000081H
	jl	SHORT $LN7@ow_decorat
	cmp	DWORD PTR tv71[rsp], 130		; 00000082H
	jle	SHORT $LN6@ow_decorat
	cmp	DWORD PTR tv71[rsp], 192		; 000000c0H
	je	SHORT $LN6@ow_decorat
	jmp	SHORT $LN7@ow_decorat
$LN6@ow_decorat:

; 145  :         case MT_NEAR:
; 146  :         case MT_FAR:
; 147  :         case MT_EMPTY:
; 148  :             changes |= USCORE_BACK;

	mov	eax, DWORD PTR changes$[rsp]
	or	eax, 2
	mov	DWORD PTR changes$[rsp], eax

; 149  :             break;

	jmp	SHORT $LN2@ow_decorat
$LN7@ow_decorat:

; 150  :         default:
; 151  :             changes |= USCORE_FRONT;

	mov	eax, DWORD PTR changes$[rsp]
	or	eax, 1
	mov	DWORD PTR changes$[rsp], eax
$LN2@ow_decorat:
$LN5@ow_decorat:

; 152  :         }
; 153  :     }
; 154  : 
; 155  :     name = buffer;

	mov	rax, QWORD PTR buffer$[rsp]
	mov	QWORD PTR name$[rsp], rax

; 156  : 
; 157  :     if( changes & USCORE_FRONT )

	mov	eax, DWORD PTR changes$[rsp]
	and	eax, 1
	test	eax, eax
	je	SHORT $LN8@ow_decorat

; 158  :         *name++ = '_';

	mov	rax, QWORD PTR name$[rsp]
	mov	BYTE PTR [rax], 95			; 0000005fH
	mov	rax, QWORD PTR name$[rsp]
	inc	rax
	mov	QWORD PTR name$[rsp], rax
$LN8@ow_decorat:

; 159  :     memcpy( name, sym->name, sym->name_size + 1 );

	mov	rax, QWORD PTR sym$[rsp]
	movzx	eax, BYTE PTR [rax+72]
	inc	eax
	cdqe
	mov	r8, rax
	mov	rax, QWORD PTR sym$[rsp]
	mov	rdx, QWORD PTR [rax+8]
	mov	rcx, QWORD PTR name$[rsp]
	call	memcpy

; 160  :     name += sym->name_size;

	mov	rax, QWORD PTR sym$[rsp]
	movzx	eax, BYTE PTR [rax+72]
	mov	rcx, QWORD PTR name$[rsp]
	add	rcx, rax
	mov	rax, rcx
	mov	QWORD PTR name$[rsp], rax

; 161  :     if( changes & USCORE_BACK ) {

	mov	eax, DWORD PTR changes$[rsp]
	and	eax, 2
	test	eax, eax
	je	SHORT $LN9@ow_decorat

; 162  :         *name++ = '_';

	mov	rax, QWORD PTR name$[rsp]
	mov	BYTE PTR [rax], 95			; 0000005fH
	mov	rax, QWORD PTR name$[rsp]
	inc	rax
	mov	QWORD PTR name$[rsp], rax

; 163  :         *name = NULLC;

	mov	rax, QWORD PTR name$[rsp]
	mov	BYTE PTR [rax], 0
$LN9@ow_decorat:

; 164  :     }
; 165  :     return( name - buffer );

	mov	rax, QWORD PTR buffer$[rsp]
	mov	rcx, QWORD PTR name$[rsp]
	sub	rcx, rax
	mov	rax, rcx

; 166  : }

	add	rsp, 48					; 00000030H
	pop	rdi
	ret	0
ow_decorate ENDP
_TEXT	ENDS
; Function compile flags: /Odtp /RTCsu
; File d:\hjwasm\hjwasm2.13.1s\hjwasm2.13.1s\mangle.c
_TEXT	SEGMENT
sym$ = 48
buffer$ = 56
ms32_decorate PROC

; 117  : {

	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	push	rdi
	sub	rsp, 32					; 00000020H
	mov	rdi, rsp
	mov	ecx, 8
	mov	eax, -858993460				; ccccccccH
	rep stosd
	mov	rcx, QWORD PTR [rsp+48]

; 118  :     return ( sprintf( buffer, "@%s@%u", sym->name, ((struct dsym *)sym)->e.procinfo->parasize ) );

	mov	rax, QWORD PTR sym$[rsp]
	mov	rax, QWORD PTR [rax+96]
	mov	r9d, DWORD PTR [rax+32]
	mov	rax, QWORD PTR sym$[rsp]
	mov	r8, QWORD PTR [rax+8]
	lea	rdx, OFFSET FLAT:$SG10657
	mov	rcx, QWORD PTR buffer$[rsp]
	call	sprintf

; 119  : }

	add	rsp, 32					; 00000020H
	pop	rdi
	ret	0
ms32_decorate ENDP
_TEXT	ENDS
; Function compile flags: /Odtp /RTCsu
; File d:\hjwasm\hjwasm2.13.1s\hjwasm2.13.1s\mangle.c
_TEXT	SEGMENT
sym$ = 16
langtype$ = 24
mangle_type$ = 32
SetMangler PROC

; 255  : {

$LN4:
	mov	QWORD PTR [rsp+24], r8
	mov	DWORD PTR [rsp+16], edx
	mov	QWORD PTR [rsp+8], rcx
	push	rdi

; 256  : #if MANGLERSUPP
; 257  :     mangle_func mangler;
; 258  : #endif
; 259  : 
; 260  :     if( langtype != LANG_NONE )

	cmp	DWORD PTR langtype$[rsp], 0
	je	SHORT $LN2@SetMangler

; 261  :         sym->langtype = langtype;

	mov	rax, QWORD PTR sym$[rsp]
	mov	ecx, DWORD PTR langtype$[rsp]
	mov	DWORD PTR [rax+76], ecx
$LN2@SetMangler:

; 262  : 
; 263  : #if MANGLERSUPP
; 264  :     mangler = GetMangler( mangle_type );
; 265  :     if( mangler == NULL ) {
; 266  :         /* nothing to do */
; 267  :     } else if( sym->mangler == NULL ) {
; 268  :         sym->mangler = mangler;
; 269  :     } else if( sym->mangler != mangler ) {
; 270  :         EmitErr( CONFLICTING_MANGLER, sym->name );
; 271  :     }
; 272  : #endif
; 273  : }

	pop	rdi
	ret	0
SetMangler ENDP
_TEXT	ENDS
; Function compile flags: /Odtp /RTCsu
; File d:\hjwasm\hjwasm2.13.1s\hjwasm2.13.1s\mangle.c
_TEXT	SEGMENT
mangler$ = 32
tv65 = 40
tv68 = 48
tv71 = 56
sym$ = 80
buffer$ = 88
Mangle	PROC

; 212  : {

$LN16:
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	push	rdi
	sub	rsp, 64					; 00000040H
	mov	rdi, rsp
	mov	ecx, 16
	mov	eax, -858993460				; ccccccccH
	rep stosd
	mov	rcx, QWORD PTR [rsp+80]

; 213  :     mangle_func mangler;
; 214  : 
; 215  :     switch( sym->langtype ) {

	mov	rax, QWORD PTR sym$[rsp]
	mov	eax, DWORD PTR [rax+76]
	mov	DWORD PTR tv65[rsp], eax
	mov	eax, DWORD PTR tv65[rsp]
	dec	eax
	mov	DWORD PTR tv65[rsp], eax
	cmp	DWORD PTR tv65[rsp], 6
	ja	$LN9@Mangle
	movsxd	rax, DWORD PTR tv65[rsp]
	lea	rcx, OFFSET FLAT:__ImageBase
	mov	eax, DWORD PTR $LN15@Mangle[rcx+rax*4]
	add	rax, rcx
	jmp	rax
$LN4@Mangle:

; 216  :     case LANG_C:
; 217  :         /* leading underscore for C? */
; 218  :         mangler = Options.no_cdecl_decoration ? VoidMangler : UScoreMangler;

	movzx	eax, BYTE PTR Options+133
	test	eax, eax
	je	SHORT $LN11@Mangle
	lea	rax, OFFSET FLAT:VoidMangler
	mov	QWORD PTR tv68[rsp], rax
	jmp	SHORT $LN12@Mangle
$LN11@Mangle:
	lea	rax, OFFSET FLAT:UScoreMangler
	mov	QWORD PTR tv68[rsp], rax
$LN12@Mangle:
	mov	rax, QWORD PTR tv68[rsp]
	mov	QWORD PTR mangler$[rsp], rax

; 219  :         break;

	jmp	SHORT $LN2@Mangle
$LN5@Mangle:

; 220  :     case LANG_SYSCALL:
; 221  :         mangler = VoidMangler;

	lea	rax, OFFSET FLAT:VoidMangler
	mov	QWORD PTR mangler$[rsp], rax

; 222  :         break;

	jmp	SHORT $LN2@Mangle
$LN6@Mangle:

; 223  :     case LANG_STDCALL:
; 224  :         mangler = ( Options.stdcall_decoration == STDCALL_NONE ) ? VoidMangler : StdcallMangler;

	movzx	eax, BYTE PTR Options+134
	cmp	eax, 1
	jne	SHORT $LN13@Mangle
	lea	rax, OFFSET FLAT:VoidMangler
	mov	QWORD PTR tv71[rsp], rax
	jmp	SHORT $LN14@Mangle
$LN13@Mangle:
	lea	rax, OFFSET FLAT:StdcallMangler
	mov	QWORD PTR tv71[rsp], rax
$LN14@Mangle:
	mov	rax, QWORD PTR tv71[rsp]
	mov	QWORD PTR mangler$[rsp], rax

; 225  :         break;

	jmp	SHORT $LN2@Mangle
$LN7@Mangle:

; 226  :     case LANG_PASCAL:
; 227  :     case LANG_FORTRAN:
; 228  :     case LANG_BASIC:
; 229  :         mangler = UCaseMangler;

	lea	rax, OFFSET FLAT:UCaseMangler
	mov	QWORD PTR mangler$[rsp], rax

; 230  :         break;

	jmp	SHORT $LN2@Mangle
$LN8@Mangle:

; 231  :     case LANG_FASTCALL:          /* registers passing parameters */
; 232  :         mangler = fcmanglers[ModuleInfo.fctype];

	movsxd	rax, DWORD PTR ModuleInfo+376
	lea	rcx, OFFSET FLAT:fcmanglers
	mov	rax, QWORD PTR [rcx+rax*8]
	mov	QWORD PTR mangler$[rsp], rax

; 233  :         break;

	jmp	SHORT $LN2@Mangle
$LN9@Mangle:

; 234  :     default: /* LANG_NONE */
; 235  : #if MANGLERSUPP
; 236  :         mangler = sym->mangler;
; 237  :         if( mangler == NULL )
; 238  :             mangler = GetMangler( Options.default_name_mangler );
; 239  :         if( mangler == NULL )
; 240  : #endif
; 241  :             mangler = VoidMangler;

	lea	rax, OFFSET FLAT:VoidMangler
	mov	QWORD PTR mangler$[rsp], rax
$LN2@Mangle:

; 242  :         break;
; 243  :     }
; 244  : #if MANGLERSUPP
; 245  :     sym->mangler = mangler;
; 246  : #endif
; 247  :     return( mangler( sym, buffer ) );

	mov	rdx, QWORD PTR buffer$[rsp]
	mov	rcx, QWORD PTR sym$[rsp]
	call	QWORD PTR mangler$[rsp]

; 248  : }

	add	rsp, 64					; 00000040H
	pop	rdi
	ret	0
$LN15@Mangle:
	DD	$LN4@Mangle
	DD	$LN5@Mangle
	DD	$LN6@Mangle
	DD	$LN7@Mangle
	DD	$LN7@Mangle
	DD	$LN7@Mangle
	DD	$LN8@Mangle
Mangle	ENDP
_TEXT	ENDS
; Function compile flags: /Odtp /RTCsu
; File c:\program files (x86)\windows kits\10\include\10.0.10150.0\ucrt\stdio.h
;	COMDAT sprintf
_TEXT	SEGMENT
_Result$ = 32
_ArgList$ = 56
_Buffer$ = 96
_Format$ = 104
sprintf	PROC						; COMDAT

; 1776 : {

$LN3:
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	mov	QWORD PTR [rsp+24], r8
	mov	QWORD PTR [rsp+32], r9
	push	rdi
	sub	rsp, 80					; 00000050H
	mov	rdi, rsp
	mov	ecx, 20
	mov	eax, -858993460				; ccccccccH
	rep stosd
	mov	rcx, QWORD PTR [rsp+96]

; 1777 :     int _Result;
; 1778 :     va_list _ArgList;
; 1779 :     __crt_va_start(_ArgList, _Format);

	lea	rax, QWORD PTR _Format$[rsp+8]
	mov	QWORD PTR _ArgList$[rsp], rax

; 1780 : 
; 1781 :     #pragma warning(push)
; 1782 :     #pragma warning(disable: 4996) // Deprecation
; 1783 :     _Result = _vsprintf_l(_Buffer, _Format, NULL, _ArgList);

	mov	r9, QWORD PTR _ArgList$[rsp]
	xor	r8d, r8d
	mov	rdx, QWORD PTR _Format$[rsp]
	mov	rcx, QWORD PTR _Buffer$[rsp]
	call	_vsprintf_l
	mov	DWORD PTR _Result$[rsp], eax

; 1784 :     #pragma warning(pop)
; 1785 : 
; 1786 :     __crt_va_end(_ArgList);

	mov	QWORD PTR _ArgList$[rsp], 0

; 1787 :     return _Result;

	mov	eax, DWORD PTR _Result$[rsp]

; 1788 : }

	mov	edi, eax
	mov	rcx, rsp
	lea	rdx, OFFSET FLAT:sprintf$rtcFrameData
	call	_RTC_CheckStackVars
	mov	eax, edi
	add	rsp, 80					; 00000050H
	pop	rdi
	ret	0
sprintf	ENDP
_TEXT	ENDS
; Function compile flags: /Odtp /RTCsu
; File c:\program files (x86)\windows kits\10\include\10.0.10150.0\ucrt\stdio.h
;	COMDAT _vsprintf_l
_TEXT	SEGMENT
_Buffer$ = 64
_Format$ = 72
_Locale$ = 80
_ArgList$ = 88
_vsprintf_l PROC					; COMDAT

; 1455 : {

$LN3:
	mov	QWORD PTR [rsp+32], r9
	mov	QWORD PTR [rsp+24], r8
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	push	rdi
	sub	rsp, 48					; 00000030H
	mov	rdi, rsp
	mov	ecx, 12
	mov	eax, -858993460				; ccccccccH
	rep stosd
	mov	rcx, QWORD PTR [rsp+64]

; 1456 :     #pragma warning(push)
; 1457 :     #pragma warning(disable: 4996) // Deprecation
; 1458 :     return _vsnprintf_l(_Buffer, (size_t)-1, _Format, _Locale, _ArgList);

	mov	rax, QWORD PTR _ArgList$[rsp]
	mov	QWORD PTR [rsp+32], rax
	mov	r9, QWORD PTR _Locale$[rsp]
	mov	r8, QWORD PTR _Format$[rsp]
	mov	rdx, -1
	mov	rcx, QWORD PTR _Buffer$[rsp]
	call	_vsnprintf_l

; 1459 :     #pragma warning(pop)
; 1460 : }

	add	rsp, 48					; 00000030H
	pop	rdi
	ret	0
_vsprintf_l ENDP
_TEXT	ENDS
; Function compile flags: /Odtp /RTCsu
; File c:\program files (x86)\windows kits\10\include\10.0.10150.0\ucrt\stdio.h
;	COMDAT _vsnprintf_l
_TEXT	SEGMENT
_Result$ = 48
tv74 = 52
_Buffer$ = 80
_BufferCount$ = 88
_Format$ = 96
_Locale$ = 104
_ArgList$ = 112
_vsnprintf_l PROC					; COMDAT

; 1385 : {

$LN5:
	mov	QWORD PTR [rsp+32], r9
	mov	QWORD PTR [rsp+24], r8
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	push	rdi
	sub	rsp, 64					; 00000040H
	mov	rdi, rsp
	mov	ecx, 16
	mov	eax, -858993460				; ccccccccH
	rep stosd
	mov	rcx, QWORD PTR [rsp+80]

; 1386 :     int const _Result = __stdio_common_vsprintf(

	call	__local_stdio_printf_options
	mov	rax, QWORD PTR [rax]
	or	rax, 1
	mov	rcx, QWORD PTR _ArgList$[rsp]
	mov	QWORD PTR [rsp+40], rcx
	mov	rcx, QWORD PTR _Locale$[rsp]
	mov	QWORD PTR [rsp+32], rcx
	mov	r9, QWORD PTR _Format$[rsp]
	mov	r8, QWORD PTR _BufferCount$[rsp]
	mov	rdx, QWORD PTR _Buffer$[rsp]
	mov	rcx, rax
	call	QWORD PTR __imp___stdio_common_vsprintf
	mov	DWORD PTR _Result$[rsp], eax

; 1387 :         _CRT_INTERNAL_LOCAL_PRINTF_OPTIONS | _CRT_INTERNAL_PRINTF_LEGACY_VSPRINTF_NULL_TERMINATION,
; 1388 :         _Buffer, _BufferCount, _Format, _Locale, _ArgList);
; 1389 : 
; 1390 :     return _Result < 0 ? -1 : _Result;

	cmp	DWORD PTR _Result$[rsp], 0
	jge	SHORT $LN3@vsnprintf_
	mov	DWORD PTR tv74[rsp], -1
	jmp	SHORT $LN4@vsnprintf_
$LN3@vsnprintf_:
	mov	eax, DWORD PTR _Result$[rsp]
	mov	DWORD PTR tv74[rsp], eax
$LN4@vsnprintf_:
	mov	eax, DWORD PTR tv74[rsp]

; 1391 : }

	add	rsp, 64					; 00000040H
	pop	rdi
	ret	0
_vsnprintf_l ENDP
_TEXT	ENDS
; Function compile flags: /Odtp /RTCsu
; File c:\program files (x86)\windows kits\10\include\10.0.10150.0\ucrt\corecrt_stdio_config.h
;	COMDAT __local_stdio_printf_options
_TEXT	SEGMENT
__local_stdio_printf_options PROC			; COMDAT

; 73   : {

$LN3:
	push	rdi

; 74   :     static unsigned __int64 _OptionsStorage;
; 75   :     return &_OptionsStorage;

	lea	rax, OFFSET FLAT:?_OptionsStorage@?1??__local_stdio_printf_options@@9@9 ; `__local_stdio_printf_options'::`2'::_OptionsStorage

; 76   : }

	pop	rdi
	ret	0
__local_stdio_printf_options ENDP
_TEXT	ENDS
END
