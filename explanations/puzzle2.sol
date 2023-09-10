// for evm-puzzle 7

/**
 * The key point of this puzzle is that the runtime code needs to return 10 bytes, that's all
 */
object "Simple" {
    code {
        datacopy(0, dataoffset("runtime"), datasize("runtime"))
        return(0, datasize("runtime"))        
    }

    object "runtime" {
        
        code {
            mstore(0x00, 0x112233445566778899aa)
            return(0x16, 0x0a)
        }
    }
}