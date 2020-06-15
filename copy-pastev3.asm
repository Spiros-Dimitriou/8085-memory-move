        ;ORG 0000H

ARXH:   LXI H,0000H
        LXI B,03FFH
        LXI D,3000H

LABEL1: MOV A,B
        CMP H
        JZ LABEL2
        CALL MOVE
        JMP LABEL1

LABEL2: MOV A,C
        CMP L
        JZ LABEL3
        CALL MOVE
        JMP LABEL2

LABEL3: MOV A,M
        XCHG
        MOV M,A
        HLT

MOVE:   MOV A,M
        XCHG
        MOV M,A
        XCHG
        INX D
        INX H
		RET