// for evm-puzzle 7

/**
 * The key point of this puzzle in the runtime code
 * we needs to set 0xaa to slot5
 */
object "Simple" {
    code {
        datacopy(0, dataoffset("runtime"), datasize("runtime"))
        return(0, datasize("runtime"))        
    }

    object "runtime" {
        
        code {
            sstore(0x05, 0xaa)
        }
    }
}