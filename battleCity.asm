.data 

	colorTank:	.word 0x00FFFF00
	colorEtank1:	.word 0x00F5F5F5
	colorEtank2:	.word 0x002E8B57
	colorEtank3:	.word 0x00FF0000
	
	colorBullet:	.word 0x00FFFFFF
	colorBrick:	.word 0x00FF3300
	colorBlanco:	.word 0x00FFFFFF
	backgroundColor:.word 0x00000000
	Begin	:	.word 0
	velocidad: 	.word 50
	
	
	Ptankx:		.word 0
	Ptanky:		.word 31
	Etank1x:	.word 63
	Etank1y:	.word 11
	Etank2x:	.word 63 
	Etank2y:	.word 38
	Etank3x:	.word 63
	Etank3y:	.word 62
	anchoPantalla:	.word 64
	
	
.text
	jal ClearBoard
NewGame:
	BATTLE_CITY:
	#BATTLE CITY
		#B
        	li $a0, 05
        	li $a1, 03
        	lw $a2, colorBrick
        	li $a3, 09
        	jal DrawVerticalLine

        	li $a0, 08
        	li $a1, 04
        	lw $a2, colorBrick
        	li $a3, 05
        	jal DrawVerticalLine

        	li $a0, 08
        	li $a1, 07
        	lw $a2, colorBrick
        	li $a3, 08
        	jal DrawVerticalLine
        	
        	li $a0, 05
        	li $a1, 03
        	lw $a2, colorBrick
        	li $a3, 07
        	jal DrawHorizontalLine

        	li $a0, 05
        	li $a1, 06
        	lw $a2, colorBrick 
        	li $a3, 07
        	jal DrawHorizontalLine

		li $a0, 05
        	li $a1, 09
        	lw $a2, colorBrick
        	li $a3, 07
        	jal DrawHorizontalLine
	
		#A
		li $a0, 10     
		li $a1, 04		
		lw $a2, colorBrick	
		li $a3, 09	
		jal DrawVerticalLine
		
		li $a0, 13    
		li $a1, 04		
		lw $a2, colorBrick	
		li $a3, 09	
		jal DrawVerticalLine
		
		li $a0, 11
		li $a1, 03
		lw $a2, colorBrick
		li $a3, 12
		jal DrawHorizontalLine
	
		li $a0, 11
		li $a1, 06
		lw $a2, colorBrick
		li $a3, 12
		jal DrawHorizontalLine
	
	
		#T
		li $a0, 14
		li $a1, 03
		lw $a2, colorBrick
		li $a3, 18
		jal DrawHorizontalLine
		
		li $a0, 16   
		li $a1, 03		
		lw $a2, colorBrick	
		li $a3, 09	
		jal DrawVerticalLine
		
		#T
		li $a0, 20
		li $a1, 03
		lw $a2, colorBrick
		li $a3, 24
		jal DrawHorizontalLine
		
		li $a0, 22     
		li $a1, 03		
		lw $a2, colorBrick	
		li $a3, 09	
		jal DrawVerticalLine
	
		#L		
		li $a0, 26
		li $a1, 09
		lw $a2, colorBrick
		li $a3, 29
		jal DrawHorizontalLine
		
		li $a0, 26      
		li $a1, 03		
		lw $a2, colorBrick	
		li $a3, 09	
		jal DrawVerticalLine
	
		#E
		li $a0, 31      
		li $a1, 03		
		lw $a2, colorBrick	
		li $a3, 09	
		jal DrawVerticalLine
		
		li $a0, 31
		li $a1, 03
		lw $a2, colorBrick
		li $a3, 34
		jal DrawHorizontalLine
		
		li $a0, 31
		li $a1, 06
		lw $a2, colorBrick
		li $a3, 33
		jal DrawHorizontalLine
		
		li $a0, 31
		li $a1, 09
		lw $a2, colorBrick
		li $a3, 34
		jal DrawHorizontalLine
	

		#C
		li $a0, 41
		li $a1, 03
		lw $a2, colorBrick
		li $a3, 43
		jal DrawHorizontalLine
		
		li $a0, 41
		li $a1, 09
		li $a3, 43
		jal DrawHorizontalLine
		
		li $a0, 40      
		li $a1, 04		
		lw $a2, colorBrick	
		li $a3, 08	
		jal DrawVerticalLine	

		#I
		li $a0, 45
		li $a1, 03
		lw $a2, colorBrick
		li $a3, 49
		jal DrawHorizontalLine
		
		li $a0, 45
		li $a1, 09
		lw $a2, colorBrick
		li $a3, 49
		jal DrawHorizontalLine
		
		li $a0, 47      
		li $a1, 04		
		lw $a2, colorBrick	
		li $a3, 08	
		jal DrawVerticalLine	

		#T
		li $a0, 51
		li $a1, 03
		lw $a2, colorBrick
		li $a3, 55
		jal DrawHorizontalLine
		
		li $a0, 53      
		li $a1, 04		
		lw $a2, colorBrick	
		li $a3, 09	
		jal DrawVerticalLine
		
		#Y
		
		li $a0, 57
		li $a1, 03
		lw $a2, colorBrick
		jal DrawPoint
		
		li $a0, 58
		li $a1, 04
		lw $a2, colorBrick
		jal DrawPoint
		
		li $a0, 60
		li $a1, 04
		lw $a2, colorBrick
		jal DrawPoint
		
		li $a0, 61
		li $a1, 03
		lw $a2, colorBrick
		jal DrawPoint
		
		li $a0, 59      
		li $a1, 05		
		lw $a2, colorBrick	
		li $a3, 09	
		jal DrawVerticalLine

Nombres:	
	#NICOLAS
		#N
		li $a0, 05     
		li $a1, 13		
		lw $a2, colorBlanco	
		li $a3, 19	
		jal DrawVerticalLine	
		
		li $a0, 06     
		li $a1, 14		
		lw $a2, colorBlanco	
		li $a3, 15	
		jal DrawVerticalLine

		li $a0, 07      
		li $a1, 15		
		lw $a2, colorBlanco	
		li $a3, 16	
		jal DrawVerticalLine
	
		li $a0, 08      
		li $a1, 17		
		lw $a2, colorBlanco	
		li $a3, 18	
		jal DrawVerticalLine
		
		li $a0, 09      
		li $a1, 13		
		lw $a2, colorBlanco	
		li $a3, 19	
		jal DrawVerticalLine

		#I
		li $a0, 11
		li $a1, 13
		lw $a2, colorBlanco
		li $a3, 15
		jal DrawHorizontalLine
		
		li $a0, 11
		li $a1, 19
		lw $a2, colorBlanco
		li $a3, 15
		jal DrawHorizontalLine
		
		li $a0, 13      
		li $a1, 13		
		lw $a2, colorBlanco	
		li $a3, 19	
		jal DrawVerticalLine	

		#C
		li $a0, 18
		li $a1, 13
		lw $a2, colorBlanco
		li $a3, 20
		jal DrawHorizontalLine
		
		li $a0, 18
		li $a1, 19
		lw $a2, colorBlanco
		li $a3, 20
		jal DrawHorizontalLine
		
		li $a0, 17      
		li $a1, 14		
		lw $a2, colorBlanco	
		li $a3, 18	
		jal DrawVerticalLine	
		
		#O
		li $a0, 22      
		li $a1, 14		
		lw $a2, colorBlanco	
		li $a3, 18	
		jal DrawVerticalLine	
		
		li $a0, 25      
		li $a1, 14		
		lw $a2, colorBlanco	
		li $a3, 18	
		jal DrawVerticalLine
		
		li $a0, 23
		li $a1, 13
		lw $a2, colorBlanco
		li $a3, 24
		jal DrawHorizontalLine
		
		li $a0, 23
		li $a1, 19
		lw $a2, colorBlanco
		li $a3, 24
		jal DrawHorizontalLine		
	
	
		#Y
		
		li $a0, 28
		li $a1, 13
		lw $a2, colorBlanco
		jal DrawPoint
		
		li $a0, 29
		li $a1, 14
		lw $a2, colorBlanco
		jal DrawPoint
		
		li $a0, 31
		li $a1, 14
		lw $a2, colorBlanco
		jal DrawPoint
		
		li $a0, 32
		li $a1, 13
		lw $a2, colorBlanco
		jal DrawPoint
		
		li $a0, 30      
		li $a1, 15		
		lw $a2, colorBlanco	
		li $a3, 19	
		jal DrawVerticalLine
		
	#JOSELYN
		#J
		
		li $a0, 35
		li $a1, 19
		lw $a2, colorBlanco
		li $a3, 36
		jal DrawHorizontalLine
		
		li $a0, 37      
		li $a1, 13		
		lw $a2, colorBlanco	
		li $a3, 18	
		jal DrawVerticalLine
		
		li $a0, 34
		li $a1, 18
		lw $a2, colorBlanco
		jal DrawPoint
		
		li $a0, 34
		li $a1, 17
		lw $a2, colorBlanco
		jal DrawPoint
        	
		#O
		li $a0, 39      
		li $a1, 14		
		lw $a2, colorBlanco	
		li $a3, 18	
		jal DrawVerticalLine	
		
		li $a0, 42      
		li $a1, 14		
		lw $a2, colorBlanco	
		li $a3, 18	
		jal DrawVerticalLine
		
		li $a0, 40
		li $a1, 13
		lw $a2, colorBlanco
		li $a3, 41
		jal DrawHorizontalLine
		
		li $a0, 40
		li $a1, 19
		lw $a2, colorBlanco
		li $a3, 41
		jal DrawHorizontalLine	
			
		#S
		li $a0, 45
		li $a1, 13
		lw $a2, colorBlanco
		li $a3, 47
		jal DrawHorizontalLine
		
		li $a0, 45
		li $a1, 16
		lw $a2, colorBlanco
		li $a3, 46
		jal DrawHorizontalLine
		
		li $a0, 44
		li $a1, 19
		lw $a2, colorBlanco
		li $a3, 46
		jal DrawHorizontalLine
		
		li $a0, 44      
		li $a1, 14
		lw $a2, colorBlanco	
		li $a3, 15	
		jal DrawVerticalLine	
		
		li $a0, 47     
		li $a1, 17		
		lw $a2, colorBlanco	
		li $a3, 18	
		jal DrawVerticalLine

		#S
		li $a0, 50
		li $a1, 13
		lw $a2, colorBlanco
		li $a3, 52
		jal DrawHorizontalLine
		
		li $a0, 50
		li $a1, 16
		lw $a2, colorBlanco
		li $a3, 51
		jal DrawHorizontalLine
		
		li $a0, 49
		li $a1, 19
		lw $a2, colorBlanco
		li $a3, 51
		jal DrawHorizontalLine
		
		li $a0, 49      
		li $a1, 14
		lw $a2, colorBlanco	
		li $a3, 15	
		jal DrawVerticalLine	
		
		li $a0, 52     
		li $a1, 17		
		lw $a2, colorBlanco	
		li $a3, 18	
		jal DrawVerticalLine
		
		
	TEC:
	
		#T
		li $a0, 20
		li $a1, 27
		lw $a2, colorBlanco
		li $a3, 24
		jal DrawHorizontalLine
		
		li $a0, 22      
		li $a1, 27		
		lw $a2, colorBlanco	
		li $a3, 33	
		jal DrawVerticalLine
		
		#E
		li $a0, 26      
		li $a1, 27		
		lw $a2, colorBlanco	
		li $a3, 33	
		jal DrawVerticalLine
		
		li $a0, 26
		li $a1, 27
		lw $a2, colorBlanco
		li $a3, 29
		jal DrawHorizontalLine
		
		li $a0, 26
		li $a1, 30
		lw $a2, colorBlanco
		li $a3, 28
		jal DrawHorizontalLine
		
		li $a0, 26
		li $a1, 33
		lw $a2, colorBlanco
		li $a3, 29
		jal DrawHorizontalLine
		
		#C
		li $a0, 32
		li $a1, 27
		lw $a2, colorBlanco
		li $a3, 34
		jal DrawHorizontalLine
		
		li $a0, 32
		li $a1, 33
		lw $a2, colorBlanco
		li $a3, 34
		jal DrawHorizontalLine
		
		li $a0, 31     
		li $a1, 28		
		lw $a2, colorBlanco	
		li $a3, 32	
		jal DrawVerticalLine	
		
	DIGITALES:
		#D
		li $a0, 12      
		li $a1, 35		
		lw $a2, colorBlanco	
		li $a3, 41	
		jal DrawVerticalLine	
		
		li $a0, 13
		li $a1, 35
		lw $a2, colorBlanco
		li $a3, 14
		jal DrawHorizontalLine
		
		li $a0, 13
		li $a1, 41
		lw $a2, colorBlanco
		li $a3, 14
		jal DrawHorizontalLine
				
		li $a0, 15      
		li $a1, 36		
		lw $a2, colorBlanco	
		li $a3, 40	
		jal DrawVerticalLine	
		
		#I
		li $a0, 17
		li $a1, 35
		lw $a2, colorBlanco
		li $a3, 19
		jal DrawHorizontalLine
		
		li $a0, 17
		li $a1, 41
		lw $a2, colorBlanco
		li $a3, 19
		jal DrawHorizontalLine
		
		li $a0, 18      
		li $a1, 36		
		lw $a2, colorBlanco	
		li $a3, 40	
		jal DrawVerticalLine	
		
		#G
		li $a0, 21     
		li $a1, 36		
		lw $a2, colorBlanco	
		li $a3, 40	
		jal DrawVerticalLine	
		
		li $a0, 22
		li $a1, 41
		lw $a2, colorBlanco
		li $a3, 24
		jal DrawHorizontalLine
					
		li $a0, 22
		li $a1, 35
		lw $a2, colorBlanco
		li $a3, 24
		jal DrawHorizontalLine
		
		li $a0, 24     
		li $a1, 38		
		lw $a2, colorBlanco	
		li $a3, 40	
		jal DrawVerticalLine
		
		li $a0, 23
		li $a1, 38
		lw $a2, colorBlanco
		li $a3, 23
		jal DrawHorizontalLine
		
		#I
		li $a0, 26
		li $a1, 35
		lw $a2, colorBlanco
		li $a3, 28
		jal DrawHorizontalLine
		
		li $a0, 26
		li $a1, 41
		lw $a2, colorBlanco
		li $a3, 28
		jal DrawHorizontalLine
		
		li $a0, 27      
		li $a1, 36		
		lw $a2, colorBlanco	
		li $a3, 40	
		jal DrawVerticalLine	
		
		#T
		li $a0, 30
		li $a1, 35
		lw $a2, colorBlanco
		li $a3, 32
		jal DrawHorizontalLine
		
		li $a0, 31      
		li $a1, 36		
		lw $a2, colorBlanco	
		li $a3, 41	
		jal DrawVerticalLine	
		
		#A
		li $a0, 34     
		li $a1, 36		
		lw $a2, colorBlanco	
		li $a3, 41	
		jal DrawVerticalLine
		
		li $a0, 37    
		li $a1, 36		
		lw $a2, colorBlanco	
		li $a3, 41	
		jal DrawVerticalLine
		
		li $a0, 35
		li $a1, 35
		lw $a2, colorBlanco
		li $a3, 36
		jal DrawHorizontalLine
	
		li $a0, 35
		li $a1, 38
		lw $a2, colorBlanco
		li $a3, 36
		jal DrawHorizontalLine
		
		#L		
		li $a0, 40
		li $a1, 41
		lw $a2, colorBlanco
		li $a3, 43
		jal DrawHorizontalLine
		
		li $a0, 40      
		li $a1, 35		
		lw $a2, colorBlanco	
		li $a3, 40	
		jal DrawVerticalLine
		
		#E
		li $a0, 45      
		li $a1, 35		
		lw $a2, colorBlanco	
		li $a3, 41	
		jal DrawVerticalLine	
		
		li $a0, 46
		li $a1, 35
		lw $a2, colorBlanco
		li $a3, 48
		jal DrawHorizontalLine
		
		li $a0, 46
		li $a1, 41
		lw $a2, colorBlanco
		li $a3, 48
		jal DrawHorizontalLine
		
		li $a0, 46
		li $a1, 38
		lw $a2, colorBlanco
		li $a3, 47
		jal DrawHorizontalLine
		
		#S
		
		li $a0, 51
		li $a1, 38
		lw $a2, colorBlanco
		li $a3, 52
		jal DrawHorizontalLine
		
		li $a0, 50
		li $a1, 41
		lw $a2, colorBlanco
		li $a3, 52
		jal DrawHorizontalLine
		
		li $a0, 51
		li $a1, 35
		lw $a2, colorBlanco
		li $a3, 53
		jal DrawHorizontalLine
		
		li $a0, 50      
		li $a1, 36		
		lw $a2, colorBlanco	
		li $a3, 37	
		jal DrawVerticalLine
		
		li $a0, 53      
		li $a1, 39		
		lw $a2, colorBlanco	
		li $a3, 40	
		jal DrawVerticalLine
	
	PRESS1:
		#P
		li $a0, 21      
		li $a1, 58		
		lw $a2, colorBlanco	
		li $a3, 62	
		jal DrawVerticalLine
	
		li $a0, 22
		li $a1, 58
		lw $a2, colorBlanco
		li $a3, 23
		jal DrawHorizontalLine
		
		li $a0, 23
		li $a1, 59
		lw $a2, colorBlanco
		li $a3, 23
		jal DrawHorizontalLine
		
		li $a0, 22
		li $a1, 60
		lw $a2, colorBlanco
		li $a3, 23
		jal DrawHorizontalLine
		
		#R
		li $a0, 25      
		li $a1, 58		
		lw $a2, colorBlanco	
		li $a3, 62	
		jal DrawVerticalLine
	
		li $a0, 26
		li $a1, 58
		lw $a2, colorBlanco
		li $a3, 27
		jal DrawHorizontalLine
		
		li $a0, 27
		li $a1, 59
		lw $a2, colorBlanco
		li $a3, 27
		jal DrawHorizontalLine
		
		li $a0, 26
		li $a1, 60
		lw $a2, colorBlanco
		li $a3, 27
		jal DrawHorizontalLine
		
		li $a0, 26
		li $a1, 61
		lw $a2, colorBlanco
		li $a3, 26
		jal DrawHorizontalLine
		
		li $a0, 27
		li $a1, 62
		lw $a2, colorBlanco
		li $a3, 27
		jal DrawHorizontalLine
		
		#E
		li $a0, 29      
		li $a1, 58		
		lw $a2, colorBlanco	
		li $a3, 62	
		jal DrawVerticalLine
	
		li $a0, 30
		li $a1, 58
		lw $a2, colorBlanco
		li $a3, 31
		jal DrawHorizontalLine
		
		li $a0, 30
		li $a1, 60
		lw $a2, colorBlanco
		li $a3, 30
		jal DrawHorizontalLine
		
		li $a0, 30
		li $a1, 62
		lw $a2, colorBlanco
		li $a3, 31
		jal DrawHorizontalLine
		
		#S
		li $a0, 33      
		li $a1, 59		
		lw $a2, colorBlanco	
		li $a3, 59	
		jal DrawVerticalLine
		
		li $a0, 35      
		li $a1, 61		
		lw $a2, colorBlanco	
		li $a3, 61	
		jal DrawVerticalLine
	
		li $a0, 34
		li $a1, 58
		lw $a2, colorBlanco
		li $a3, 35
		jal DrawHorizontalLine
		
		li $a0, 33
		li $a1, 62
		lw $a2, colorBlanco
		li $a3, 34
		jal DrawHorizontalLine
		
		li $a0, 34
		li $a1, 60
		lw $a2, colorBlanco
		li $a3, 34
		jal DrawHorizontalLine
		
		#S

		li $a0, 38
		li $a1, 58
		lw $a2, colorBlanco
		li $a3, 39
		jal DrawHorizontalLine
		
		li $a0, 37
		li $a1, 62
		lw $a2, colorBlanco
		li $a3, 38
		jal DrawHorizontalLine
		
		li $a0, 38
		li $a1, 60
		lw $a2, colorBlanco
		li $a3, 38
		jal DrawHorizontalLine
		
		li $a0, 39
		li $a1, 61
		lw $a2, colorBlanco
		li $a3, 39
		jal DrawHorizontalLine
		
		li $a0, 37
		li $a1, 59
		lw $a2, colorBlanco
		li $a3, 37
		jal DrawHorizontalLine
	
		#1
		li $a0, 44      
		li $a1, 58		
		lw $a2, colorBlanco	
		li $a3, 62	
		jal DrawVerticalLine
	

		li $a0, 43
		li $a1, 62
		lw $a2, colorBlanco
		li $a3, 45
		jal DrawHorizontalLine
		
		
		li $a0, 43
		li $a1, 58
		lw $a2, colorBlanco
		jal DrawPoint

SelectMode:
		lw $t1, 0xFFFF0004
		beq $t1, 0x00000031, BeginGame
		
		li $a0, 250
		li $v0, 32
		syscall
		
		j SelectMode
		
BeginGame:
		sw $zero, 0xFFFF0000
		jal ClearBoard
		
		li $s0, 32
		li $s1, 32
		lw $s2, colorTank
		li $s3, 0
		jal DrawPlayer
		
		
		
# $a0 x position
# $a1 y position
# $a2 the color
# $a3 direction

DrawPlayer:
	playerUp:
		bne $a3, 0 , PlayerDown
		
		addi $sp, $sp, -8
		sw $a1, 4($sp)
		sw $a0, 0($sp)
		addi $a0, $a0, 1
		addi $a3, $a0, 1
		jal DrawHorizontalLine
		
		lw $a0, 0($sp)
		lw $a1, 4($sp)
		addi $a1, $a1,1 
		addi $a3, $a0, 3
		jal DrawHorizontalLine
		
		lw $a0, 0($sp)
		lw $a1, 4($sp)
		addi $a1, $a1, 2
		addi $a3, $a0, 3
		jal DrawHorizontalLine
		
		lw $a0, 0($sp)
		lw $a1, 4($sp)
		addi $a1, $a1, 3
		addi $a3, $a0, 3
		jal DrawHorizontalLine
		
		addi $sp,$sp, 8
		
		j EndDraw
		
	PlayerDown:	
		bne $a3, 1, PlayerLeft
		
		addi $sp, $sp, -8
		sw $a1, 4($sp)
		sw $a0, 0($sp)
		
		addi $a0, $a0, 1
		addi $a1, $a1, 3
		addi $a3, $a0, 1
		jal DrawHorizontalLine
		
		lw $a0, 0($sp)
		lw $a1, 4($sp)
		addi $a1, $a1,1 
		addi $a3, $a0, 3
		jal DrawHorizontalLine
		
		lw $a0, 0($sp)
		lw $a1, 4($sp)
		addi $a1, $a1, 2
		addi $a3, $a0, 3
		jal DrawHorizontalLine
		
		lw $a0, 0($sp)
		lw $a1, 4($sp)
		addi $a3, $a0, 3
		jal DrawHorizontalLine
		
		addi $sp,$sp, 8
		
		j EndDraw
		
	PlayerLeft:
		bne $a3, 2, PlayerRight
		
		addi $sp, $sp, -8
		sw $a1, 4($sp)
		sw $a0, 0($sp)
		
		addi $a0, $a0, 1
		addi $a3, $a0, 2
		jal DrawHorizontalLine
		
		lw $a0, 0($sp)
		lw $a1, 4($sp)
		addi $a1, $a1,1 
		addi $a3, $a0, 3
		jal DrawHorizontalLine
		
		lw $a0, 0($sp)
		lw $a1, 4($sp)
		addi $a1, $a1, 2
		addi $a3, $a0, 3
		jal DrawHorizontalLine
		
		lw $a0, 0($sp)
		lw $a1, 4($sp)
		addi $a0, $a0, 1
		addi $a1, $a1, 3
		addi $a3, $a0, 2
		jal DrawHorizontalLine
		
		addi $sp,$sp, 8
		
		j EndDraw
		
	PlayerRight:	
		bne $a3, 3, EndDraw
		
		addi $sp, $sp, -8
		sw $a1, 4($sp)
		sw $a0, 0($sp)
		

		addi $a3, $a0, 2
		jal DrawHorizontalLine
		
		lw $a0, 0($sp)
		lw $a1, 4($sp)
		addi $a1, $a1,1 
		addi $a3, $a0, 3
		jal DrawHorizontalLine
		
		lw $a0, 0($sp)
		lw $a1, 4($sp)
		addi $a1, $a1, 2
		addi $a3, $a0, 3
		jal DrawHorizontalLine
		
		lw $a0, 0($sp)
		lw $a1, 4($sp)
		addi $a1, $a1, 3
		addi $a3, $a0, 2
		jal DrawHorizontalLine
		
		addi $sp,$sp, 8
			
										
	EndDraw: 																						
		jr $ra	



DrawPoint:
		sll $t0, $a1, 6   # multiply y-coordinate by 64 (length of the field)
		addu $v0, $a0, $t0
		sll $v0, $v0, 2
		addu $v0, $v0, $gp
		sw $a2, ($v0)		# draw the color to the location
		
		jr $ra

# $a0 the x starting coordinate
# $a1 the y coordinate
# $a2 the color
# $a3 the x ending coordinate
DrawHorizontalLine:
		
		addi $sp, $sp, -4
   		sw $ra, 0($sp)
		
		sub $t9, $a3, $a0
		move $t1, $a0
		
	HorizontalLoop:
		
		add $a0, $t1, $t9
		jal DrawPoint
		addi $t9, $t9, -1
		
		bge $t9, 0, HorizontalLoop
		
		lw $ra, 0($sp)		# put return back
   		addi $sp, $sp, 4
   		
   		
   		jr $ra
		
# $a0 the x coordinate
# $a1 the y starting coordinate
# $a2 the color
# $a3 the y ending coordinate

DrawVerticalLine:

		addi $sp, $sp, -4
   		sw $ra, 0($sp)
		
		sub $t9, $a3, $a1
		move $t1, $a1
		
	VerticalLoop:
		
		add $a1, $t1, $t9
		jal DrawPoint
		addi $t9, $t9, -1
		
		bge $t9, 0, VerticalLoop
		
		lw $ra, 0($sp)		# put return back
   		addi $sp, $sp, 4
   		
		jr $ra
Begin_standby:
		li $t0, 0x00000002
		
Standby:
		blez $t0, EndStandby
		li $a0,10
		li $v0, 32
		syscall
		
		addi $t0, $t0, -1
		
		lw $t1, 0xFFFF0000
		blez $t1, Standby
		
		jal KeyPressed
		sw $zero, 0xFFFF0000
		j Standby
		
EndStandby:
		j Begin_standby
		


KeyPressed:
		lw $a0, 0xFFFF0004
		
		
Move_Up:	
		bne $a0, 19, Move_Down
		move $a0, $s0
		move $a1, $s1
		move $a2, $s2
		li $a3, 0
		jal DrawPlayer

		j Key_Done	
	
	
	Move_Down:		
		bne $a0, 115, Move_Left
		move $a0, $s0
		move $a1, $s1
		move $a2, $s2
		li $a3, 1
		jal DrawPlayer

		j Key_Done	
	
	
	
	Move_Left:	
		bne $a0, 97, Move_Right
		move $a0, $s0
		move $a1, $s1
		move $a2, $s2
		li $a3, 2
		jal DrawPlayer

		j Key_Done



	Move_Right:	
		bne $a0, 100, Key_Done
		move $a0, $s0
		move $a1, $s1
		move $a2, $s2
		li $a3, 3
		jal DrawPlayer
		j Key_Done

	Key_None:	



	Key_Done:	
		jr $ra


ClearBoard:
		lw $t0, backgroundColor
		li $t1, 32768 # The number of pixels in the display
	StartCLoop:
		subi $t1, $t1, 4
		addu $t2, $t1, $gp
		sw $t0, ($t2)
		beqz $t1, EndCLoop
		j StartCLoop
	EndCLoop:
		jr $ra
