//
//  main.swift
//  SampleOfBreakingConstant
//
//  Created by Tomohiro Kumagai on 10/23/18.
//  Copyright © 2018 Tomohiro Kumagai. All rights reserved.
//

let value = 100
let object = Sub(convenience: value)

print("\n")
print("🌻🌻🌻 A property named `constant` is defined using `let` keyword in the class named `Sub`.")
print("🌻🌻🌻 Tried to initialize to assign a value `\(value)` to `constant`. 🤔")
print("🌻🌻🌻 But `constant` was initialized by `\(object.constant)`. 😧")
