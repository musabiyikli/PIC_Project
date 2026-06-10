
; PICBASIC PRO(TM) Compiler 2.60, (c) 1998, 2009 microEngineering Labs, Inc. All Rights Reserved. 
_USED			EQU	1

	INCLUDE	"C:\PBP\16F628.INC"

RAM_START       		EQU	00020h
RAM_END         		EQU	0014Fh
RAM_BANKS       		EQU	00003h
BANK0_START     		EQU	00020h
BANK0_END       		EQU	0007Fh
BANK1_START     		EQU	000A0h
BANK1_END       		EQU	000EFh
BANK2_START     		EQU	00120h
BANK2_END       		EQU	0014Fh
EEPROM_START    		EQU	02100h
EEPROM_END      		EQU	0217Fh

R0              		EQU	RAM_START + 000h
R1              		EQU	RAM_START + 002h
R2              		EQU	RAM_START + 004h
R3              		EQU	RAM_START + 006h
R4              		EQU	RAM_START + 008h
R5              		EQU	RAM_START + 00Ah
R6              		EQU	RAM_START + 00Ch
R7              		EQU	RAM_START + 00Eh
R8              		EQU	RAM_START + 010h
FLAGS           		EQU	RAM_START + 012h
GOP             		EQU	RAM_START + 013h
RM1             		EQU	RAM_START + 014h
RM2             		EQU	RAM_START + 015h
RR1             		EQU	RAM_START + 016h
RR2             		EQU	RAM_START + 017h
_PORTL           		EQU	 PORTB
_PORTH           		EQU	 PORTA
_TRISL           		EQU	 TRISB
_TRISH           		EQU	 TRISA
#define _PORTB??0        	 PORTB, 000h
	INCLUDE	"FLIP_F~1.MAC"
	INCLUDE	"C:\PBP\PBPPIC14.LIB"

	MOVE?CB	000h, TRISB
	MOVE?CT	000h, _PORTB??0

	LABEL?L	_X	
	MOVE?CT	001h, _PORTB??0
	PAUSE?C	001F4h
	MOVE?CT	000h, _PORTB??0
	PAUSE?C	001F4h
	GOTO?L	_X
	END?	

	END
