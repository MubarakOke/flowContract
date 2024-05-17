pub contract Registry {
  pub var registers: {String: Register}

  pub struct Register {
    pub let lastname: String
    pub let firstname: String
    pub let account: Address
    pub let phoneNo: UInt64
    

    init(_lastname: String, _firstname: String, _account: Address, _phoneNo: UInt64) {
      self.lastname = _lastname
      self.firstname = _firstname
      self.account = _account
      self.phoneNo = _phoneNo
    }
  }

  pub fun addRegister(lastname: String, firstname: String, account: Address, phoneNo: UInt64){
    let newRegister = Register(_lastname: lastname, _firstname: firstname, _account: account, _phoneNo: phoneNo,)
    self.registers[lastname] = newRegister
  }

  init() {
    self.registers = {}
  }
}