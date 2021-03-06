 .data 
	agent:		.word 0x00000000
	#agent identifica cual elemento (jugador o enemigo) está manejando la funcion
	#0 es el jugador
	#1 es enemigo 1
	#2 es enemigo 2
	#3 es enemigo 3
	#4 es enemigo 4
	
	#Jugador 
	Ptankx:		.word 18
	Ptanky:		.word 59 
	playerDir:	.word 0x00000000
	colorTank:	.word 0x00FFFF00
	playerState: 	.word 0x00ffff00
	
	#Enemigo 1
	Etank1x:	.word 63
	Etank1y:	.word 11
	enemy1Dir:	.word 0x00000000
	colorEtank1:	.word 0x00F5F5F5
	enemy1State: 	.word 0x00ffff00
	
	#Enemigo 2
	Etank2x:	.word 63 
	Etank2y:	.word 38
	enemy2Dir:	.word 0x00000000	
	colorEtank2:	.word 0x002E8B57
	enemy2State: 	.word 0x00ffff00
	
	#Enemigo 3
	Etank3x:	.word 63
	Etank3y:	.word 62
	enemy3Dir:	.word 0x00000000	
	colorEtank3:	.word 0x00FF0000
	enemy3State: 	.word 0x00ffff00
	
	#Enemigo 4	
	Etank4x:	.word 0x00000000
	Etank4y:	.word 0x00000000
	enemy4Dir:	.word 0x00000000	
	colorEtank4:	.word 0x00ffff00
	enemy4State: 	.word 0x00ffff00
	
		
	#bala jugador
	playerBulletActive:	.word 0
	playerBulletPosX:	.word 0
	playerBulletPosY:	.word 0
	playerBulletDir:	.word 0
		
	
	colorBrick:	.word 0x00DD571C
	colorBlack:	.word 0x00000000
	colorBlanco:	.word 0x00FFFFFF
	colorWhite:	.word 0x00FFFFFF
	colorSilver: 	.word 0x00D3D3D3
	colorGreen:	.word 0x00008000
	backgroundColor:.word 0x00000000  
	map:		.word 1
	
	
.text
	
NewGame:
	jal ClearBoard
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
		lw $t1, 0xFFFF0004		#Verifica la tecla que ha sido presionada
		beq $t1, 0x00000031, BeginGame  #se presiona el 1
		
		li $a0, 250    #
		li $v0, 32     #Pausa por 20ms
		syscall	       #
		
		j SelectMode
		
BeginGame: 
		sw $zero, 0xFFFF0000    #Limpia el botón 
		jal ClearBoard
DrawFrames: 
	#Se dibujan los bordes grises
	li $a0, 0
	li $a1, 0
	lw $a2, colorSilver
	li $a3, 63
	jal DrawHorizontalLine
	
	
	li $a0, 0
	li $a1, 63
	lw $a2, colorSilver
	li $a3, 63
	jal DrawHorizontalLine
	
	li $a0, 0
	li $a1, 0
	lw $a2, colorSilver
	li $a3, 63
	jal DrawVerticalLine
	
	li $a0, 1
	li $a1, 0
	lw $a2, colorSilver
	li $a3, 63
	jal DrawVerticalLine
	
	li $a0, 53
	li $a1, 0
	lw $a2, colorSilver
	li $a3, 63
	jal DrawVerticalLine
							
	li $a0, 54
	li $a1, 0
	lw $a2, colorSilver
	li $a3, 63
	jal DrawVerticalLine		
	
	li $a0, 55
	li $a1, 0
	lw $a2, colorSilver
	li $a3, 63
	jal DrawVerticalLine
	
	li $a0, 56
	li $a1, 0
	lw $a2, colorSilver
	li $a3, 63
	jal DrawVerticalLine	
	
	li $a0, 57
	li $a1, 0
	lw $a2, colorSilver
	li $a3, 63
	jal DrawVerticalLine	
	
	li $a0, 58
	li $a1, 0
	lw $a2, colorSilver
	li $a3, 63
	jal DrawVerticalLine
	
	li $a0, 59
	li $a1, 0
	lw $a2, colorSilver
	li $a3, 63
	jal DrawVerticalLine
	
	li $a0, 60
	li $a1, 0
	lw $a2, colorSilver
	li $a3, 63
	jal DrawVerticalLine
	
	li $a0, 61
	li $a1, 0
	lw $a2, colorSilver
	li $a3, 63
	jal DrawVerticalLine
	
	li $a0, 62
	li $a1, 0
	lw $a2, colorSilver
	li $a3, 63
	jal DrawVerticalLine
	
	li $a0, 63
	li $a1, 0
	lw $a2, colorSilver
	li $a3, 63
	jal DrawVerticalLine
	
	
DrawMap:
	DrawMap1:
	lw $t0, map
	bne $t0, 1, DrawMap2
	jal Map1
		
				
	DrawMap2:
		
DrawObjects: 
	#lw $t0, playerBulletActive
	#beq $t0, 0, continue
	
	#continue:
	 	

	#jal MoveBullets
	
	
	#bloqueVerde:
		#li $a0, 30
		#li $a1, 32
		#jal DrawGreenBlock

#Espera y lee los botones	
Begin_standby:
		li $t0, 0x00000002  #carga 25 en el contador para stabndby -50ms 
		
Standby:
		jal MoveBullets
	
	
	#bloqueVerde
		li $a0, 30
		li $a1, 32
		jal DrawGreenBlock
		
		blez $t0, EndStandby
		li $a0, 10
		li $v0, 32 #pasusa por 10 ms
		syscall
		
		addi $t0, $t0, -1 # contador 
		
		lw $t1, 0xFFFF0000 #verifica si la tecla fue presionada
		blez $t1, Standby
		
		jal KeyPressed   # Ve qué fue presionado
		sw $zero, 0xFFFF0000  # limpia el botón que fue presionado
		j Standby
		
EndStandby:
		j DrawObjects
		


KeyPressed:
#cambia la direccion del jugador dependiendo de la tecla presionada
		addi $sp, $sp, -4
		sw $ra, 0($sp)
		lw $a0, 0xFFFF0004
		
		
	Move_Up:	
		bne $a0, 119, Move_Down #w
		li $a0, 0
		li $a1, 0
		jal MoveAgent

		j Key_Done	
	
	
	Move_Down:		
		bne $a0, 115, Move_Left #s
		li $a0, 0
		li $a1, 1
		jal MoveAgent

		j Key_Done	
	
	Move_Left:	
		bne $a0, 97, Move_Right #a
		li $a0, 0
		li $a1, 2
		jal MoveAgent

		j Key_Done

	Move_Right:	
		bne $a0, 100, Key_Shoot #d
		li $a0, 0
		li $a1, 3
		jal MoveAgent
		j Key_Done
		
	Key_Shoot:	
		bne $a0, 32, Key_None
		lw $t0, playerBulletActive
		beq $t0, 1, Key_Done
		li $t0, 1
		sw $t0, playerBulletActive
		lw $t0, playerDir
		sw $t0, playerBulletDir
		
		bulletUpDir:
			bne $t0, 0, bulletDownDir
			lw $t1, Ptankx
			addi $t1, $t1, 1
			sw $t1, playerBulletPosX
			move $a0, $t1
			lw $t1, Ptanky
			addi $t1, $t1, -1
			sw $t1, playerBulletPosY
			move $a1, $t1,
			lw $a2, colorWhite
			addi $a3, $a0, 1
			jal DrawHorizontalLine 
			
			j Key_Done
			
		bulletDownDir:
			bne $t0, 1, bulletLeftDir
			lw $t1, Ptankx
			addi $t1, $t1, 1
			sw $t1, playerBulletPosX
			move $a0, $t1 
			lw $t1, Ptanky                                                                                                              
			addi $t1, $t1, 4
			sw $t1, playerBulletPosY
			move $a1, $t1
			lw $a2, colorWhite
			addi $a3, $a0, 1
			jal DrawHorizontalLine 
			
			j Key_Done
			
		bulletLeftDir:
			bne $t0, 2, bulletRightDir
			lw $t1, Ptankx
			addi $t1, $t1, -1
			sw $t1, playerBulletPosX
			move $a0, $t1
			lw $t1, Ptanky
			addi $t1, $t1, 1
			sw $t1, playerBulletPosY
			move $a1, $t1
			lw $a2, colorWhite
			addi $a3, $a1, 1
			jal DrawVerticalLine
				
			j Key_Done
			
		bulletRightDir:
			bne $t0, 3, Key_Done
			lw $t1, Ptankx
			addi $t1, $t1, 4
			sw $t1, playerBulletPosX
			move $a0, $t1
			lw $t1, Ptanky
			addi $t1, $t1, 1
			sw $t1, playerBulletPosY
			move $a1, $t1	
			lw $a2, colorWhite
			addi $a3, $a1, 1
			jal DrawVerticalLine
			j Key_Done	
			
		j Key_Done	

	Key_None:	
			#no hace nada 


	Key_Done:	
		lw $ra, 0($sp)	
		addi $sp, $sp, -4
		jr $ra    #return 

		
				
MoveBullets:
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	movePlayerBullet:
		lw $s0 playerBulletActive
		bne $s0, 1, moveEnemyBullet
		lw $s0 playerBulletDir
		moveBulletUp:
			bne $s0, 0, moveBulletDown
			lw $s1, playerBulletPosX
			lw $s2, playerBulletPosY
			
			move $a0, $s1
			move $a1, $s2
			lw $a2, colorBlack
			addi $a3, $a0, 1
			jal DrawHorizontalLine
			
			
			addi $s2, $s2, -1
			sw $s2, playerBulletPosY
			
			checkOrangeColUpLeft:
				move $a0, $s1
				move $a1, $s2
				jal LoadColor
				lw $t0, colorBrick
				bne $v0, $t0, checkOrangeColUpRight
				move $a0, $s1
				move $a1, $s2
				lw $a2, colorBlack
				move $a3, $a0
				jal DrawHorizontalLine
				li $t0, 0
				sw $t0, playerBulletActive
		
			checkOrangeColUpRight:
				addi $a0, $s1, 1
				move $a1, $s2
				jal LoadColor
				lw $t0, colorBrick
				bne $v0, $t0, checkSilverColUpLeft
				addi $a0, $s1, 1
				move $a1, $s2
				lw $a2, colorBlack
				move $a3, $a0
				jal DrawHorizontalLine
				li $t0, 0
				sw $t0, playerBulletActive
				j doneMoveBullet
			
			checkSilverColUpLeft:
				move $a0, $s1
				move $a1, $s2
				jal LoadColor
				lw $t0, colorSilver
				bne $v0, $t0, checkSilverColUpRight
				move $a0, $s1
				move $a1, $s2
				lw $a2, colorSilver
				move $a3, $a0
				jal DrawHorizontalLine
				li $t0, 0
				sw $t0, playerBulletActive
				
				
			checkSilverColUpRight:
				addi $a0, $s1, 1
				move $a1, $s2
				jal LoadColor
				lw $t0, colorSilver
				bne $v0, $t0, bulletUp
				addi $a0, $s1, 1
				move $a1, $s2
				lw $a2, colorSilver
				move $a3, $a0
				jal DrawHorizontalLine
				li $t0, 0
				sw $t0, playerBulletActive
				j doneMoveBullet
				
			j doneMoveBullet
			
			bulletUp:
				lw $t0, playerBulletActive
				bne $t0, 1, doneMoveBullet
				move $a0, $s1
				move $a1, $s2
				lw $a2, colorWhite
				addi $a3, $a0, 1
				jal DrawHorizontalLine
				j doneMoveBullet
			 
		moveBulletDown:
			bne $s0, 1, moveBulletLeft
			lw $s1, playerBulletPosX
			lw $s2, playerBulletPosY
		 	
			move $a0, $s1
			move $a1, $s2
			lw $a2, colorBlack
			addi $a3, $a0, 1
			jal DrawHorizontalLine
			
			
			addi $s2, $s2, 1
			sw $s2, playerBulletPosY
			
			
			checkOrangeColDownLeft:
				move $a0, $s1
				move $a1, $s2
				jal LoadColor
				lw $t0, colorBrick
				bne $v0, $t0, checkOrangeColDownRight
				move $a0, $s1
				move $a1, $s2
				lw $a2, colorBlack
				move $a3, $a0
				jal DrawHorizontalLine
				li $t0, 0
				sw $t0, playerBulletActive

			checkOrangeColDownRight:
				addi $a0, $s1, 1
				move $a1, $s2
				jal LoadColor
				lw $t0, colorBrick
				bne $v0, $t0, checkSilverColDownLeft
				addi $a0, $s1, 1
				move $a1, $s2
				lw $a2, colorBlack

				jal DrawPoint
				li $t0, 0
				sw $t0, playerBulletActive
				j doneMoveBullet
			
			checkSilverColDownLeft:
				move $a0, $s1
				move $a1, $s2
				jal LoadColor
				lw $t0, colorSilver
				bne $v0, $t0, checkSilverColDownRight
				move $a0, $s1
				move $a1, $s2
				lw $a2, colorSilver
				move $a3, $a0
				jal DrawHorizontalLine
				li $t0, 0
				sw $t0, playerBulletActive
				
				
			checkSilverColDownRight:
				addi $a0, $s1, 1
				move $a1, $s2
				jal LoadColor
				lw $t0, colorSilver
				bne $v0, $t0, bulletDown
				addi $a0, $s1, 1
				move $a1, $s2
				lw $a2, colorSilver
				move $a3, $a0
				jal DrawHorizontalLine
				li $t0, 0
				sw $t0, playerBulletActive
				j doneMoveBullet

			j doneMoveBullet
			
			bulletDown:
				lw $t0, playerBulletActive
				bne $t0, 1, doneMoveBullet
				move $a0, $s1
				move $a1, $s2
				lw $a2, colorWhite
				addi $a3, $a0, 1
				jal DrawHorizontalLine
				j doneMoveBullet
			
		moveBulletLeft:
			bne $s0, 2, moveBulletRight
			lw $s1, playerBulletPosX
			lw $s2, playerBulletPosY
			
			move $a0, $s1
			move $a1, $s2
			lw $a2, colorBlack
			addi $a3, $a1, 1
			jal DrawVerticalLine
			
			addi $s1, $s1, -1
			sw $s1, playerBulletPosX
			
			
			checkOrangeColLeftUp:
				move $a0, $s1
				move $a1, $s2
				jal LoadColor
				lw $t0, colorBrick
				bne $v0, $t0, checkOrangeColLeftDown
				move $a0, $s1
				move $a1, $s2
				lw $a2, colorBlack
				addi $a3, $a1, 0
				jal DrawVerticalLine
				li $t0, 0
				sw $t0, playerBulletActive
				
			checkOrangeColLeftDown:
				move $a0, $s1
				addi $a1, $s2, 1 
				jal LoadColor
				lw $t0, colorBlack
				lw $t0, colorBrick
				bne $v0, $t0, checkSilverColLeftUp
				move $a0, $s1
				addi $a1, $s2, 1
				lw $a2, colorBlack
				move $a3, $a1
				jal DrawVerticalLine
				li $t0, 0
				sw $t0, playerBulletActive
				j doneMoveBullet
			
			checkSilverColLeftUp:
				move $a0, $s1
				move $a1, $s2
				jal LoadColor
				lw $t0, colorSilver
				bne $v0, $t0, checkSilverColLeftDown
				move $a0, $s1
				move $a1, $s2
				lw $a2, colorSilver
				move $a3, $a1
				jal DrawVerticalLine
				li $t0, 0
				sw $t0, playerBulletActive
				
			checkSilverColLeftDown:
				move $a0, $s1
				addi $a1, $s2, 1 
				jal LoadColor
				lw $t0, colorSilver
				bne $v0, $t0, bulletLeft
				move $a0, $s1
				addi $a1, $s2, 1
				lw $a2, colorSilver
				move $a3, $a1
				jal DrawVerticalLine
				li $t0, 0
				sw $t0, playerBulletActive
				j doneMoveBullet

			
			bulletLeft:
				lw $t0, playerBulletActive
				bne $t0, 1, doneMoveBullet
				move $a0, $s1
				move $a1, $s2
				lw $a2, colorWhite
				addi $a3, $a1, 1
				jal DrawVerticalLine
				j doneMoveBullet
			
		moveBulletRight:
			bne $s0, 3, doneMoveBullet
			lw $s1, playerBulletPosX
			lw $s2, playerBulletPosY
			
			move $a0, $s1
			move $a1, $s2
			lw $a2, colorBlack
			addi $a3, $a1, 1
			jal DrawVerticalLine
			
			
			addi $s1, $s1, 1
			sw $s1, playerBulletPosX
			
			
			checkOrangeColRightUp:
				move $a0, $s1
				move $a1, $s2
				jal LoadColor
				lw $t0, colorBrick
				bne $v0, $t0, checkOrangeColRightDown
				move $a0, $s1
				move $a1, $s2
				lw $a2, colorBlack
				addi $a3, $a1, 0
				jal DrawVerticalLine
				li $t0, 0
				sw $t0, playerBulletActive
				
			checkOrangeColRightDown:
				move $a0, $s1
				addi $a1, $s2, 1 
				jal LoadColor
				lw $t0, colorBlack
				lw $t0, colorBrick
				bne $v0, $t0, checkSilverColRightUp
				move $a0, $s1
				addi $a1, $s2, 1
				lw $a2, colorBlack
				move $a3, $a1
				jal DrawVerticalLine
				li $t0, 0
				sw $t0, playerBulletActive
				j doneMoveBullet
			
			checkSilverColRightUp:
				move $a0, $s1
				move $a1, $s2
				jal LoadColor
				lw $t0, colorSilver
				bne $v0, $t0, checkSilverColRightDown
				move $a0, $s1
				move $a1, $s2
				lw $a2, colorSilver
				move $a3, $a1
				jal DrawVerticalLine
				li $t0, 0
				sw $t0, playerBulletActive
				
				
			checkSilverColRightDown:
				move $a0, $s1
				addi $a1, $s2, 1 
				jal LoadColor
				lw $t0, colorSilver
				bne $v0, $t0, bulletRight
				move $a0, $s1
				addi $a1, $s2, 1
				lw $a2, colorSilver
				move $a3, $a1
				jal DrawVerticalLine
				li $t0, 0
				sw $t0, playerBulletActive
				j doneMoveBullet

			
			bulletRight:
				lw $t0, playerBulletActive
				bne $t0, 1, doneMoveBullet
				move $a0, $s1
				move $a1, $s2
				lw $a2, colorWhite
				addi $a3, $a1, 1
				jal DrawVerticalLine
				j doneMoveBullet
	moveEnemyBullet:
	
			
	doneMoveBullet:
		
		lw $ra, 0($sp)
		addi $sp, $sp, 4
		jr $ra																																																																
		
#Move Agent va a cambiar la direccion del tanque, y va a tratar de moverlo en la direccion
# $a0 es el agente
# $a1 es la nueva direccion

MoveAgent:
	addi $sp, $sp, -12
	sw $ra, 0($sp)
	sw $a0, 4($sp)
	sw $a1, 8($sp)
	
	MoveAgentPlayer:
		bne $a0, 0, MoveAgentEnemy1
		lw $t1, playerDir
		beq $a1, $t1, AdvanceTank
		lw $a0, Ptankx
		lw $a1, Ptanky
		jal EraseTank
		
		lw $a0, 4($sp)
		lw $a1, 8($sp)
		
		move $a3, $a1 
		sw $a3, playerDir # se guarda en memoria la nueva direccion 
		lw $a0, Ptankx
		lw $a1, Ptanky
		lw $a2, playerState
		
		jal DrawTank# dibujamos el tanque en la nueva direccion 
	
		AdvanceTank:# si es posible tratamos de mover el tanque en la nueva direccion 
			j MoveAgentDone
	
	
	MoveAgentEnemy1:
		bne $a0, 1, MoveAgentEnemy2
		
	MoveAgentEnemy2:
		bne $a0, 2, MoveAgentEnemy3
			
	MoveAgentEnemy3:
		bne $a0, 3, MoveAgentEnemy4		
						
	MoveAgentEnemy4:
		bne $a0, 4, MoveAgentPlayerBullet
		
	MoveAgentPlayerBullet:
		bne $a0, 5, MoveAgentDone
	
		
		
	MoveAgentDone:	
	lw $ra, 0($sp)
	addi $sp, $sp, 12
	
	
#dada una direccion, el agente tratará de moverse hacia adelante si es posible
# $a0 Agent	
TryMoveAgent:
			
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	
	TryMoveAgentPlayer:
		bne $a0, 0, TryMoveAgentEnemy1
		lw $t0, playerDir
		
		PlayerMoveUp:	
			bne $t0, 0, PlayerMoveDown
			
			lw $a0, Ptankx
			lw $a1, Ptanky
			jal EraseTank
			
			#hace la prueba para ver si hay colision
			li $a0, 0 #el jugador
			li $a1, 0 # requerido para recursividad 	
			jal CheckCollision
			bne $v0, 0, DrawPositionUp
			
			lw $t1, Ptanky
			addi $t1, $t1, -1
			sw $t1, Ptanky
			
			DrawPositionUp:	
				lw $a0, Ptankx
				lw $a1, Ptanky
				lw $a2, playerState
				lw $a3, playerDir
				jal DrawTank #se dibuja el tanque en la nueva direccion 
				j TryMoveAgentDone

		PlayerMoveDown:
			bne $t0, 1, PlayerMoveLeft
			
			lw $a0, Ptankx
			lw $a1, Ptanky
			jal EraseTank
			
			
			#Prueba para ver si hay colision
			li $a0, 0# el jugador
			li $a1, 0#Requerido para recursividad
			jal CheckCollision
			bne $v0, 0, DrawPositionDown
			
			lw $t1, Ptanky
			addi $t1, $t1, 1
			sw $t1, Ptanky
				
			DrawPositionDown:	
				lw $a0, Ptankx
				lw $a1, Ptanky
				lw $a2, playerState
				lw $a3, playerDir
				jal DrawTank
				j TryMoveAgentDone
			
		PlayerMoveLeft:
			bne $t0, 2, PlayerMoveRight
			
			lw $a0, Ptankx
			lw $a1, Ptanky
			jal EraseTank
			
			li $a0, 0
			li $a1, 0
			jal CheckCollision
			bne $v0, 0, DrawPositionLeft
			
			lw $t1, Ptankx
			addi $t1, $t1, -1
			sw $t1, Ptankx
			
			DrawPositionLeft:	
				lw $a0, Ptankx
				lw $a1, Ptanky
				lw $a2, playerState
				lw $a3, playerDir
				jal DrawTank
				j TryMoveAgentDone
				
						
		PlayerMoveRight:
			bne $t0, 3, TryMoveAgentDone
						
			lw $a0, Ptankx
			lw $a1, Ptanky
			jal EraseTank
			
			li $a0, 0
			li $a1, 0
			jal CheckCollision
			
			bne $v0, 0, DrawPositionRight
			lw $t1, Ptankx
			addi $t1, $t1, 1
			sw $t1, Ptankx
			
			DrawPositionRight:	
				lw $a0, Ptankx
				lw $a1, Ptanky
				lw $a2, playerState
				lw $a3, playerDir
				jal DrawTank  # dibujamos el tanque en la nueva direccion 
				j TryMoveAgentDone
				
				
	TryMoveAgentEnemy1:
		bne $a0, 1, TryMoveAgentEnemy2
	TryMoveAgentEnemy2:
		bne $a0, 2, TryMoveAgentEnemy3
	TryMoveAgentEnemy3:
		bne $a0, 3, TryMoveAgentEnemy4
	TryMoveAgentEnemy4:
		bne $a0, 4, TryMoveAgentDone

	TryMoveAgentDone:
		lw $ra, 0($sp)
		addi $sp, $sp, 4
			
# $a0 x position
# $a1 y position
# $a2 the color
# $a3 direction

DrawTank: 
	addi $sp, $sp, -12
	sw $ra, 0($sp)
	sw $a0, 4($sp)
	sw $a1, 8($sp)
	PlayerUp:
		bne $a3, 0 , PlayerDown
		addi $a0, $a0, 1 #  offset a la derecha
		#para la primera linea la coordenada no cambia 
		addi $a3, $a0, 1
		jal DrawHorizontalLine
		
		lw $a0, 4($sp)#recupera el valor original de x
		lw $a1, 8($sp)
		addi $a1, $a1,1 
		addi $a3, $a0, 3
		jal DrawHorizontalLine
		
		lw $a0, 4($sp)
		lw $a1, 8($sp)
		addi $a1, $a1, 2
		addi $a3, $a0, 3
		jal DrawHorizontalLine
		
		lw $a0, 4($sp)
		lw $a1, 8($sp)
		addi $a1, $a1, 3
		addi $a3, $a0, 3
		jal DrawHorizontalLine
		
		
		j EndDraw
		
	PlayerDown:	
		bne $a3, 1, PlayerLeft
		
		addi $a0, $a0, 1
		addi $a1, $a1, 3
		addi $a3, $a0, 1
		jal DrawHorizontalLine
		
		lw $a0, 4($sp)
		lw $a1, 8($sp)
		addi $a1, $a1,1 
		addi $a3, $a0, 3
		jal DrawHorizontalLine
		
		lw $a0, 4($sp)
		lw $a1, 8($sp)
		addi $a1, $a1, 2
		addi $a3, $a0, 3
		jal DrawHorizontalLine
		
		lw $a0, 4($sp)
		lw $a1, 8($sp)
		addi $a3, $a0, 3
		jal DrawHorizontalLine
		
		
		j EndDraw
		
	PlayerLeft:
		bne $a3, 2, PlayerRight
	
		addi $a0, $a0, 1
		addi $a3, $a0, 2
		jal DrawHorizontalLine
		
		lw $a0, 4($sp)
		lw $a1, 8($sp)
		addi $a1, $a1,1 
		addi $a3, $a0, 3
		jal DrawHorizontalLine
		
		lw $a0, 4($sp)
		lw $a1, 8($sp)
		addi $a1, $a1, 2
		addi $a3, $a0, 3
		jal DrawHorizontalLine
		
		lw $a0, 4($sp)
		lw $a1, 8($sp)
		addi $a0, $a0, 1
		addi $a1, $a1, 3
		addi $a3, $a0, 2
		jal DrawHorizontalLine

		j EndDraw
		
	PlayerRight:	
		bne $a3, 3, EndDraw
		

		addi $a3, $a0, 2
		jal DrawHorizontalLine
		
		lw $a0, 4($sp)
		lw $a1, 8($sp)
		addi $a1, $a1,1 
		addi $a3, $a0, 3
		jal DrawHorizontalLine
		
		lw $a0, 4($sp)
		lw $a1, 8($sp)
		addi $a1, $a1, 2
		addi $a3, $a0, 3
		jal DrawHorizontalLine
		
		lw $a0, 4($sp)
		lw $a1, 8($sp)
		addi $a1, $a1, 3
		addi $a3, $a0, 2
		jal DrawHorizontalLine
		
		#addi $sp,$sp, 8
		
		j EndDraw
			
										
	EndDraw: 	
		lw $ra, 0($sp)		
		addi $sp, $sp, 12																			
		jr $ra		
										

# $a0 pos x
# $a1 pos y 
EraseTank: 
	addi $sp, $sp, -12
	sw $ra, 0($sp)
	sw $a0, 4($sp)
	sw $a1, 8($sp)
	
	lw $a0, 4($sp)
	lw $a1, 8($sp)
	li $a2, 0
	addi $a3, $a0, 3
	jal DrawHorizontalLine
	
	lw $a0, 4($sp)
	lw $a1, 8($sp)
	addi $a1, $a1, 1
	li $a2, 0
	addi $a3, $a0, 3
	jal DrawHorizontalLine
	
	lw $a0, 4($sp)
	lw $a1, 8($sp) 
	addi $a1, $a1, 2 
	li $a2, 0
	addi $a3, $a0, 3
	jal DrawHorizontalLine
	
	lw $a0, 4($sp)
	lw $a1, 8($sp)
	addi $a1, $a1, 3
	li $a2, 0
	addi $a3, $a0, 3
	jal DrawHorizontalLine
								
	EndErase: 	
	lw $ra, 0($sp)		
	addi $sp, $sp, 12																			
	jr $ra	

#$a0 agente
#$a1 debe ser 0
CheckCollision:
	addi $sp, $sp, -12
	sw $ra, 0($sp)
	sw $a0, 4($sp)
	sw $a1, 8($sp)
	
	beq $a1, $a1, CheckCol
	addi $a1, $a1, 1
	jal CheckCollision
	
	CheckCol:
		PlayerCol:
			bne $a0, 0, EnemyCol
			lw $a0, Ptankx
			lw $a1, Ptanky
			li $a2, 4
			lw $a3, playerDir
			jal CollisionDirection
			j CheckCollisionDone
			
			
	EnemyCol:
			bne $a0, 1, Enemy2Col			
	Enemy2Col:
			bne $a0, 2, Enemy3Col	
	Enemy3Col:
			bne $a0, 3, Enemy4Col	
	Enemy4Col:
			bne $a0, 4, CheckCollisionDone
			
					
	CheckCollisionDone:						
		lw $ra, 0($sp)
		addi $sp, $sp, 12
		jr $ra
			
# $a0 x
# $a1 y 
# $a2 tipo
# $a3 direccion
CollisionDirection:
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	CollUp:
		bne $a3, 0, CollDown
		#Ajusta la coordenada para arriba 
		addi $a1, $a1, -1
		Pixel0Up:
			jal LoadColor
			beq $v0, 0, Pixel1Up
			li $v0, 1
			j CollDone
		
		Pixel1Up:
			addi $a0, $a0, 1
			jal LoadColor
			beq $v0, 0, Pixel2Up
			li $v0, 1
			j CollDone
		Pixel2Up:
			addi $a0, $a0, 1
			jal LoadColor
			beq $v0, 0, Pixel3Up
			li $v0, 1
			j CollDone		
		Pixel3Up:
			addi $a0, $a0, 1
			jal LoadColor
			beq $v0, 0, NoCollUp
			li $v0, 1
			j CollDone		
		
		NoCollUp:
			li $v0, 0
			j CollDone
		
		
		
	CollDown:
		bne $a3, 1,CollLeft
		
		#Ajusta la coordenada
		addi $a1, $a1, 4
		Pixel0Down:
			jal LoadColor
			beq $v0, 0, Pixel1Down
			li $v0, 1
			j CollDone
		
		Pixel1Down:
			addi $a0, $a0, 1
			jal LoadColor
			beq $v0, 0, Pixel2Down
			li $v0, 1
			j CollDone
		Pixel2Down:
			addi $a0, $a0, 1
			jal LoadColor
			beq $v0, 0, Pixel3Down
			li $v0, 1
			j CollDone		
		Pixel3Down:
			addi $a0, $a0, 1
			jal LoadColor
			beq $v0, 0, NoCollDown
			li $v0, 1
			j CollDone		
		
		NoCollDown:
			li $v0, 0
			j CollDone

	CollLeft:
		bne $a3, 2, CollRight
		addi $a0, $a0, -1
		Pixel0Left:
			jal LoadColor
			beq $v0, 0, Pixel1Left
			li $v0, 1
			j CollDone
		
		Pixel1Left:
			addi $a1, $a1, 1
			jal LoadColor
			beq $v0, 0, Pixel2Left
			li $v0, 1
			j CollDone
		Pixel2Left:
			addi $a1, $a1, 1
			jal LoadColor
			beq $v0, 0, Pixel3Left
			li $v0, 1
			j CollDone		
		Pixel3Left:
			addi $a1, $a1, 1
			jal LoadColor
			beq $v0, 0, NoCollLeft
			li $v0, 1
			j CollDone		
		
		NoCollLeft:
			li $v0, 0
			j CollDone
		

	CollRight:
		bne $a3, 3, CollDone
		addi $a0, $a0, 4
		Pixel0Right:
			jal LoadColor
			beq $v0, 0, Pixel1Right
			li $v0, 1
			j CollDone
		
		Pixel1Right:
			addi $a1, $a1, 1
			jal LoadColor
			beq $v0, 0, Pixel2Right
			li $v0, 1
			j CollDone
		Pixel2Right:
			addi $a1, $a1, 1
			jal LoadColor
			beq $v0, 0, Pixel3Right
			li $v0, 1
			j CollDone		
		Pixel3Right:
			addi $a1, $a1, 1
			jal LoadColor
			beq $v0, 0, NoCollRight
			li $v0, 1
			j CollDone		
		
		NoCollRight:
			li $v0, 0
			j CollDone	
	
	
	CollDone:
	lw $ra, 0($sp) 
	addi $sp, $sp, 4
	jr $ra
	

#a0 x
# a1 y	
LoadColor:
	sll $t0, $a1, 6
	addu $v0, $a0, $t0
	sll $v0, $v0, 2
	addu $v0, $v0, $gp
	lw $v0, 0($v0)
	jr $ra
		
	
	
# a0 pos x
# a1 pos y
#a2 color 	
DrawPoint: 
		sll $t0,$a1,6
		addu $v0, $a0, $t0
		sll $v0, $v0, 2
		addu $v0, $v0, $gp
		sw $a2, ($v0)
		
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

	
ClearBoard:
		lw $t0, backgroundColor
		li $t1, 16384 # The number of pixels in the display
	StartCLoop:
		subi $t1, $t1, 4
		addu $t2, $t1, $gp
		sw $t0, ($t2)
		beqz $t1, EndCLoop
		j StartCLoop
	EndCLoop:
		jr $ra

# $a0 pos x
# $a1 pos y
DrawOrangeBlock:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
		
	lw $a2, colorBrick
	addi $a3, $a0, 3
	jal DrawHorizontalLine
		
	addi $a1, $a1, 1
	lw $a2, colorBrick
	addi $a3, $a0, 3
	jal DrawHorizontalLine
		
	addi $a1, $a1, 1
	lw $a2, colorBrick
	addi $a3, $a0, 3
	jal DrawHorizontalLine
		
	addi $a1, $a1, 1
	lw $a2, colorBrick
	addi $a3, $a0, 3
	jal DrawHorizontalLine
		
	lw $ra, 0($sp)
	addi $sp, $sp, 4		
		
	jr $ra
	
	
DrawGreenBlock:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
		
	lw $a2, colorGreen
	addi $a3, $a0, 3
	jal DrawHorizontalLine
		
	addi $a1, $a1, 1
	lw $a2, colorGreen
	addi $a3, $a0, 3
	jal DrawHorizontalLine
		
	addi $a1, $a1, 1
	lw $a2, colorGreen
	addi $a3, $a0, 3
	jal DrawHorizontalLine
		
	addi $a1, $a1, 1
	lw $a2, colorGreen
	addi $a3, $a0, 3
	jal DrawHorizontalLine
		
	lw $ra, 0($sp)
	addi $sp, $sp, 4		
		
	jr $ra
	
DrawSilverBlock:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
		
	lw $a2, colorSilver
	addi $a3, $a0, 3
	jal DrawHorizontalLine
		
	addi $a1, $a1, 1
	lw $a2, colorSilver
	addi $a3, $a0, 3
	jal DrawHorizontalLine
		
	addi $a1, $a1, 1
	lw $a2, colorSilver
	addi $a3, $a0, 3
	jal DrawHorizontalLine
		
	addi $a1, $a1, 1
	lw $a2, colorSilver
	addi $a3, $a0, 3
	jal DrawHorizontalLine
		
	lw $ra, 0($sp)
	addi $sp, $sp, 4		
		
	jr $ra
	
Map1: 
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	
	li $a0, 6
	li $a1, 55
	jal DrawOrangeBlock
	
	li $a0, 6
	li $a1, 51
	jal DrawOrangeBlock
	
	li $a0, 6
	li $a1, 47
	jal DrawOrangeBlock
	
	li $a0, 6
	li $a1, 43
	jal DrawOrangeBlock
	
	li $a0, 6
	li $a1, 5
	jal DrawOrangeBlock

	li $a0, 6
	li $a1, 9
	jal DrawOrangeBlock
	
	li $a0, 6
	li $a1, 13
	jal DrawOrangeBlock
	
	li $a0, 6
	li $a1, 17
	jal DrawOrangeBlock
	
	li $a0, 6
	li $a1 21
	jal DrawOrangeBlock
	
	li $a0, 14
	li $a1, 5
	jal DrawOrangeBlock

	li $a0, 14
	li $a1, 9
	jal DrawOrangeBlock
	
	li $a0, 14
	li $a1, 13
	jal DrawOrangeBlock
	
	li $a0, 14
	li $a1, 17
	jal DrawOrangeBlock
	
	li $a0, 14
	li $a1 21
	jal DrawOrangeBlock
	
	
	li $a0, 14
	li $a1, 55
	jal DrawOrangeBlock
	
	li $a0, 14
	li $a1, 51
	jal DrawOrangeBlock
	
	li $a0, 14
	li $a1, 47
	jal DrawOrangeBlock
	
	li $a0, 14
	li $a1, 43
	jal DrawOrangeBlock
	
	
	li $a0, 23
	li $a1, 57
	lw $a2, colorBrick
	li $a3, 62
	jal DrawVerticalLine
	
	li $a0, 24
	li $a1, 57
	lw $a2, colorBrick
	li $a3, 62
	jal DrawVerticalLine
	
	li $a0, 23
	li $a1, 56 
	lw $a2, colorBrick
	addi $a3, $a0, 8
	jal DrawHorizontalLine
	
	li $a0, 23
	li $a1, 55
	lw $a2, colorBrick
	addi $a3, $a0, 8
	jal DrawHorizontalLine
	
	li $a0, 30
	li $a1, 57
	lw $a2, colorBrick
	li $a3, 62
	jal DrawVerticalLine
	
	li $a0, 31
	li $a1, 57
	lw $a2, colorBrick
	li $a3, 62
	jal DrawVerticalLine
	
	
	li $a0, 37
	li $a1, 55
	jal DrawOrangeBlock
	
	li $a0, 37
	li $a1, 51
	jal DrawOrangeBlock
	
	li $a0, 37
	li $a1, 47
	jal DrawOrangeBlock
	
	li $a0, 37
	li $a1, 43
	jal DrawOrangeBlock
	#
	
	li $a0, 37
	li $a1, 5
	jal DrawOrangeBlock
	
	li $a0, 37
	li $a1, 9
	jal DrawOrangeBlock
	
	li $a0, 37
	li $a1, 13
	jal DrawOrangeBlock
	
	li $a0, 37
	li $a1, 17
	jal DrawOrangeBlock
	
	li $a0, 37
	li $a1, 21
	jal DrawOrangeBlock
	#
	
	#
	
	li $a0, 29
	li $a1, 5
	jal DrawOrangeBlock
	
	li $a0, 29
	li $a1, 9
	jal DrawOrangeBlock
	
	li $a0, 29
	li $a1, 13
	jal DrawOrangeBlock
	
	li $a0, 29
	li $a1, 17
	jal DrawOrangeBlock
	
	li $a0, 29
	li $a1, 29
	jal DrawOrangeBlock
	#
	
	#
	
	li $a0, 21
	li $a1, 5
	jal DrawOrangeBlock
	
	li $a0, 21
	li $a1, 9
	jal DrawOrangeBlock
	
	li $a0, 21
	li $a1, 13
	jal DrawOrangeBlock
	
	li $a0, 21
	li $a1, 17
	jal DrawOrangeBlock
	
	li $a0, 21
	li $a1, 29
	jal DrawOrangeBlock
	
	#
	li $a0, 25
	li $a1, 13
	jal DrawSilverBlock
	
	li $a0, 2
	li $a1, 35
	jal DrawSilverBlock
	
	li $a0, 49
	li $a1, 35
	jal DrawSilverBlock
	#
	
	li $a0, 45
	li $a1, 5
	jal DrawOrangeBlock
	
	li $a0, 45
	li $a1, 9
	jal DrawOrangeBlock
	
	li $a0, 45
	li $a1, 13
	jal DrawOrangeBlock
	
	li $a0, 45
	li $a1, 17
	jal DrawOrangeBlock
	
	li $a0, 45
	li $a1, 21
	jal DrawOrangeBlock
	#
	
	li $a0, 45
	li $a1, 55
	jal DrawOrangeBlock
	
	li $a0, 45
	li $a1, 51
	jal DrawOrangeBlock
	
	li $a0, 45
	li $a1, 47
	jal DrawOrangeBlock
	
	li $a0, 45
	li $a1, 43
	jal DrawOrangeBlock
	
	
	li $a0, 10
	li $a1, 35
	jal DrawOrangeBlock
	
	li $a0, 14
	li $a1, 35
	jal DrawOrangeBlock
	
		
	li $a0, 37
	li $a1, 35
	jal DrawOrangeBlock
	
	li $a0, 14
	li $a1, 35
	jal DrawOrangeBlock
	
	li $a0, 41
	li $a1, 35
	jal DrawOrangeBlock
	
	
	#Aguila 
	
	li $a0, 26
	li $a1, 59
	lw $a2, colorSilver
	jal DrawPoint
	
	li $a0, 28
	li $a1, 59
	lw $a2, colorSilver
	jal DrawPoint
	
	li $a0, 27
	li $a1, 60
	lw $a2, colorSilver
	jal DrawPoint
	
	li $a0, 26
	li $a1, 61
	lw $a2, colorSilver
	jal DrawPoint
	
	li $a0, 28
	li $a1, 61
	lw $a2, colorSilver
	jal DrawPoint



	
	lw $ra, 0($sp)
	addi $sp, $sp, 4	
	
			
	jr $ra
