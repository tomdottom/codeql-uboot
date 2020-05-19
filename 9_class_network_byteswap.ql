import cpp

class NetworkByteSwap extends Expr {
  NetworkByteSwap() {
    exists(MacroInvocation mi |
      (
        mi.getMacroName() = "ntohs" or
        mi.getMacroName() = "ntohl" or
        mi.getMacroName() = "ntohll"
      ) and
      this = mi.getExpr()
    )
  }
}

from NetworkByteSwap n
select n, "Network byte swap"
