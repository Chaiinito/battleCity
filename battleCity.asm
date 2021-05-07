.data

	colorTank:	.word 0x00FFFF00
	colorEtank1	.word 0x00F5F5F5
	colorEtank2	.word 0x002E8B57
	ColorEtank3	.word 0x00FF0000
	
	colorBullet:	.word 0x00FFFFFF
	colorBrick:	.word 0x00FF3300
	colorBlanco:	.word 0x00FFFFFF
	backgroundColor:.word 0x00000000
	
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
		li $a1, 28
		lw $a2, colorBlanco
		li $a3, 24
		jal DrawHorizontalLine
		
		li $a0, 22      
		li $a1, 28		
		lw $a2, colorBlanco	
		li $a3, 33	
		jal DrawVerticalLine
		
		#E
		li $a0, 26      
		li $a1, 28		
		lw $a2, colorBlanco	
		li $a3, 33	
		jal DrawVerticalLine
		
		li $a0, 26
		li $a1, 28
		lw $a2, colorBlanco
		li $a3, 29
		jal DrawHorizontalLine
		
		li $a0, 26
		li $a1, 31
		lw $a2, colorBlanco
		li $a3, 29
		jal DrawHorizontalLine
		
		li $a0, 26
		li $a1, 33
		lw $a2, colorBlanco
		li $a3, 29
		jal DrawHorizontalLine
		
		#C
		li $a0, 32
		li $a1, 28
		lw $a2, colorBlanco
		li $a3, 34
		jal DrawHorizontalLine
		
		li $a0, 32
		li $a1, 33
		lw $a2, colorBlanco
		li $a3, 34
		jal DrawHorizontalLine
		
		li $a0, 31     
		li $a1, 29		
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
	
	
	PRESS_E:
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
	
		#E
		li $a0, 44      
		li $a1, 58		
		lw $a2, colorBlanco	
		li $a3, 62	
		jal DrawVerticalLine
	
		li $a0, 45
		li $a1, 58
		lw $a2, colorBlanco
		li $a3, 46
		jal DrawHorizontalLine
		
		li $a0, 45
		li $a1, 60
		lw $a2, colorBlanco
		li $a3, 45
		jal DrawHorizontalLine
		
		li $a0, 45
		li $a1, 62
		lw $a2, colorBlanco
		li $a3, 46
		jal DrawHorizontalLine
PressA:
		lw $t1, 0xFFFF0004		# check to see which key has been pressed
		beq $t1, 0x00000065, InicioDelJuego # presiona e (minuscula exclusivamente)
		
		li $a0, 250	#
		li $v0, 32	# pause for 250 milisec
		syscall		#
		
		j SelectMode    # Jump back to the top of the wait loop
		
		sw $zero, 0xFFFF0000		# clear the button pushed bit


InicioDelJuego:

	li $a0, 1			#Carga 1 en $a0		
	sw $a0, PrimeraPartida		#Guarda 1 en PrimeraPartida, de esta manera sabemos que ya se dio al menos una partida

	
	# Coordenadas iniciales del jugador
	li $t0, 1
	sw $t0, PtankX
	li $t0, 31
	sw $t0, PtankY
	li $t0, 50
	sw $t0, velocidad
	li $t0, 63
	sw $t0, Etank1X
	sw $t0, Etank2X
	sw $t0, Etank3X
	li $t0, 11
	sw $t0, Etank1Y
	li $t0, 38
	sw $t0, Etank2Y
	li $t0, 62
	sw $t0, EtankY

	jal ClearBoard
				
DrawTank:
	# objective: look at the direction, draw a point on the correct side, erase a point on the correct side
	beq $a3, 0x02000000, down
	bne $a3, 0x01000000, NoMove
	up:
		# erase bottom point
   		move $t2, $a2
   		move $t1, $a1
   		addi $a1, $a1, 5	# the bottom point
		lw $a2, backgroundColor
		addi $sp, $sp, -4
   		sw $ra, 0($sp)   	# saves $ra on stack
		jal DrawPoint
		lw $ra, 0($sp)		# put return back
   		addi $sp, $sp, 4	# change stack back
   		move $a1, $t1	# put back top y position
   		move $a2, $t2	# put back color
   		
		# move top y up (as long as its not at the top)
		beq $a1, 0, NoMove
		addi $a1, $a1, -1
		j Move
	down:
		# erase top point
		move $t1, $a2
		lw $a2, backgroundColor
		addi $sp, $sp, -4
   		sw $ra, 0($sp)   	# saves $ra on stack
		jal DrawPoint
		lw $ra, 0($sp)		# put return back
   		addi $sp, $sp, 4	# change stack back
   		move $a2, $t1	# put back color
   		
		# move down top y (as long as bottom is not at bottom)
		beq $a1, 26, NoMove	# height is 31 - 5 = 26
		addi $a1, $a1, 1
		j Move
	NoMove:
		# else do nothing, make sure the direction is nothing
		li $a3, 0
	Move:
		li $t0, 6
	StartPLoop:
		subi $t0, $t0, 1
		addu $t1, $a1, $t0
		
		# Converts to memory address
		sll $t1, $t1, 6   # multiply y-coordinate by 64 (length of the field)
		addu $v0, $a0, $t1
		sll $v0, $v0, 2
		addu $v0, $v0, $gp
		
		sw $a2, ($v0)
		beqz $t0, EndPLoop
		j StartPLoop
	EndPLoop:		
		jr $ra

# $a2 contains the score of the player
# $a3 contains the column of the leftmost scoring dot.
# Using this information, draws along the top of the screen to display a player's score			

NewRound:

		# Initialize all the regesters for a new iteration of the gameplay loop
		li $t0, 1
		li $t1, -1
		sw $t0, ySpeed
		sw $t1, yDir
		sw $zero, compSpeed 	# reset compCount and compSpeed to 0 for first collision
		sw $zero, compCount
		
		li $s0, 0 	# 0x01000000 up; 0x02000000 down; 0 stay
		li $s1, 0	# 0x01000000 up; 0x02000000 down; 0 stay
		lw $s2, xDir	# wait this long before you move over 1 x
		lw $s3, ySpeed	# wait this long before you move over 1 y
		li $s4, 13
		li $s5, 13
		li $s6, 32
		li $s7, 0

		jal ClearBoard
		
		lw $a2, P1Score
		li $a3, 1
		jal DrawScore
		lw $a2, P2Score
		li $a3, 54
		jal DrawScore
		
		li $a0, 13
		move $a1, $s4
		lw $a2, colorOne
		jal DrawPaddle
		
		li $a0, 50
		move $a1, $s5
		lw $a2, colorTwo
		jal DrawPaddle

		li $a0, 1000	#
		li $v0, 32	# pause for 1 second
		syscall		#


DrawPoint:
		sll $t0, $a1, 6   # multiply y-coordinate by 64 (length of the field)
		addu $v0, $a0, $t0
		sll $v0, $v0, 2
		addu $v0, $v0, $gp
		sw $a2, ($v0)		# draw the color to the location
		
		jr $ra


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
		
		
		
DibujarScore: 
	# Draw Ship
	li $a0, 1
	lw $a0, PtankX		# Carga en a0 la coordenada X de jugador
	lw $a1, PtankY 	# Carga en a0 la coordenada Y de jugador
	jal ObtenerCoordenadas
	move $a0, $v0		# Copia coordenada a a0, ya que estan guardadas en v0
	lw $a1, shipColor	# Almacena el color del jugador
	jal DibujarPixel		# Dibuja el color en el pixel deseado

	
	# Dibuja lander
	li $a0, 1
	lw $a0, Etank1X		# Carga en a0 la coordenada X de jugador
	lw $a1, Etank1Y		# Carga en a0 la coordenada Y de jugador
	jal ObtenerCoordenadas
	move $a0, $v0		# Copia coordenada a a0, ya que estan guardadas en v0
	lw $a1, ColorDorado	# Almacena el color del enemigo 1
	jal DibujarPixel		# Dibuja el color en el pixel deseado
	
	# Dibuja bomber
	li $a0, 1
	lw $a0, Etank2X		# Carga en a0 la coordenada X de jugador
	lw $a1, Etank2Y		# Carga en a0 la coordenada Y de jugador
	jal ObtenerCoordenadas
	move $a0, $v0		# Copia coordenada a a0, ya que estan guardadas en v0
	lw $a1, enemigoColor	# Almacena el color del enemigo 2
	jal DibujarPixel		# Dibuja el color en el pixel deseado
	
	# Dibuja ovni
	li $a0, 1
	lw $a0, Etank3X		# Carga en a0 la coordenada X de jugador
	lw $a1, Etank3Y		# Carga en a0 la coordenada Y de jugador
	jal ObtenerCoordenadas
	move $a0, $v0		# Copia coordenada a a0, ya que estan guardadas en v0
	lw $a1, enemigoColor	# Almacena el color del enemigo 3
	jal DibujarPixel		# Dibuja el color en el pixel deseado





ObtenerCoordenadas:
	lw $v0, anchoPantalla	# Obtiene el ancho de la pantalla
	mul $v0, $v0, $a1	# Multiplica el ancho por la posicion en Y
	add $v0, $v0, $a0	# Le suma al resultado anterior la posicion en X
	mul $v0, $v0, 4		# Multiplica por 4 para obtener direccion
	add $v0, $v0, $gp	# Suma un puntero de la pantalla en la coordenada
	jr $ra			# 
		


DibujarPixel:
	sw $a1, ($a0)	# Llena la coordenada con el valor especifico
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
		


ClearBoard:
		lw $t0, backgroundcolor
		li $t1, 8192 # The number of pixels in the display
	StartCLoop:
		subi $t1, $t1, 4
		addu $t2, $t1, $gp
		sw $t0, ($t2)
		beqz $t1, EndCLoop
		j StartCLoop
	EndCLoop:
		jr $ra










