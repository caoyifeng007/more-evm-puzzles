// for evm-puzzle 7

/**
 * The key point of this puzzle in the runtim code
 * we needs to send all the ETH back to caller
 * So balance_before is equal to balance_after
 */
object "Simple" {
    
    code {
        datacopy(0, dataoffset("runtime"), datasize("runtime"))
        return(0, datasize("runtime"))
    }

    object "runtime" {
        
        code {
            let callValue := callvalue()
            let msgSender := caller()

            let success := call(gas(), msgSender, callValue, 0, 0, 0, 0)
        }
    }
}
