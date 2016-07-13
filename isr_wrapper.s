.globl   isr_wrapper
.align   4
 
isr_wrapper:
    pushad
    cld /* C code following the sysV ABI requires DF to be clear on function entry */
    call interrupt_handler
    popad
    iret