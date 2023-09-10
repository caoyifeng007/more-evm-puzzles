// for evm-puzzle 7

/**
 * The key point of this puzzle in the init code
 * we needs to send half of the ETH to somewhere
 * So initial balance / contract balance will be 2
 */
object "Simple" {
    code {
        let callValue := callvalue()
        let sentValue := div(callValue, 2)

        let success := call(gas(), 0, sentValue, 0, 0, 0, 0)

    }
}