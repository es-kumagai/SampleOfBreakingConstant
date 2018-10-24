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
print("🌻🌻🌻 Tried to initialize to assign a value `\(value)` to `object.constant`. 🤔")
print("🌻🌻🌻 But `object.constant` was initialized by `\(object.constant)`. 😧")
