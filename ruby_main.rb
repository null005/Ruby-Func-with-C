require 'ffi'

module MyLib
    extend FFI::Library
    ffi_lib 'c'

    attach_function :printf, [:string], :int
end

MyLib.printf 'Hello World, using libc!'