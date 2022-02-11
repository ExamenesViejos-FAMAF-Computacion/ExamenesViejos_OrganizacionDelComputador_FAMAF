.data	
	laberinto: .dword 0x2b2d2d2d2d2d2d2b, 0x2b2d2d2d2d2d2d2d ,  0x20202020207c587c ,  0x7c2d20202020207c ,  0x202b2d2d207c207c ,  0x7c20202d2d2b207c ,  0x207c2020207c207c ,  0x7c202020207c207c ,  0x207c202d2d2b207c ,  0x2b2d2d20207c207c ,  0x207c20202020207c ,  0x7c232020207c2020 ,  0x2d2b2d2d2d2d2d2b ,  0x2b2d2d2d2d2b2d2d 
	estado: .dword 0x4e45204f4745554a, 0x21214f5352554320
	_stack_ptr: .dword _stack_end   // Get the stack pointer value from memmap definition

.text	// Configuracion del Stack Pointer
	ldr     X1, _stack_ptr  
        mov     sp, X1          

	// Limpiar X0 y X4 siempre de comenzar el programa
	MOV X0, XZR
	MOV X4, XZR
	
	LDR X0, =laberinto	 //X0 = Dirección base del arreglo "laberinto"
main:
 	//Aquí va el código de su programa
		
        //Instrucción NOP para acomodar la imagen
        ADD XZR, XZR, XZR
        ADD XZR, XZR, XZR
        ADD XZR, XZR, XZR

	b main


/*
arriba:

abajo:

derecha:

izquierda:

ganaste:

perdiste:

*/
