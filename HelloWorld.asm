section.text
            global main      ;should be declared for linker
main:                        ;tells linker the entry point                            
     mov edx,len             ;message length
     mov ecx,msg             ;message to write
     mov ebx,1               ;file descriptor(stdout)
     mov eax,4               ;sys_write(system call)
     int 0x80                ;calling kernel
     mov eax,1               ;sys_write(system call)
     int 0x80                ;call kernel
     
section .data
msg db 'Hello,world!',0xa    ;the string to be printed(under single quotes)
len equ $ -msg               ;length of string
