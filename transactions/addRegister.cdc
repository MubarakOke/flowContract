import Registry from 0x05

transaction(lastname: String, firsname: String, account: Address, phoneNo: UInt64) {

  prepare(acct: AuthAccount) {
    log(acct.address)
  }

  execute {
    Registry.addRegister(lastname: lastname, firstname: firsname, account: account, phoneNo: phoneNo)
    log("Register added")
  }
}