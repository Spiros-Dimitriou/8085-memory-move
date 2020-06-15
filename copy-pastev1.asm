LOW:    CALL NEXT


NEXT:   POP H
		DCX H
		DCX H
		DCX H
		CALL HIGH
BACK:   POP B
		INX SP
		INX SP
        LXI D,3000H

LABEL1: MOV A,B
        CMP H
        JZ LABEL2
        MOV A,M
        XCHG
        MOV M,A
        XCHG
        INX D
        INX H
        JMP LABEL1

LABEL2: MOV A,C
        CMP L
        JZ LABEL3
        MOV A,M
        XCHG
        MOV M,A
        XCHG
        INX H
        INX D
        JMP LABEL2

LABEL3: MOV A,M
        XCHG
        MOV M,A
		JMP SKIP
		
		
HIGH:   CALL BACK
SKIP:	HLT