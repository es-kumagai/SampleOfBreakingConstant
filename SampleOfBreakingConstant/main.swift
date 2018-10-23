//
//  main.swift
//  SampleOfBreakingConstant
//
//  Created by Tomohiro Kumagai on 10/23/18.
//  Copyright © 2018 Tomohiro Kumagai. All rights reserved.
//

import Foundation

let value = 100

print("🌻🌻🌻 Try to initialize with object.constant = ", value, "🙂", "\n")
let object = Sub(convenience: value)
print("\n🌻🌻🌻 But initialized by object.constant =", object.constant, "🤔")
