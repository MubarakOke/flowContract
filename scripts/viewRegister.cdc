import Registry from 0x05

pub fun main(lastname: String): Registry.Register {
  return Registry.registers[lastname]!
}