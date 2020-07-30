require 'ffi'

module MyLib
    extend FFI::Library
    ffi_lib './mult.so'
    attach_function :mult, [:int, :int], :int
end

puts "Meu resultado: #{MyLib.mult 11,2}"