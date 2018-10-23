//
//  Sub.swift
//  SampleOfBreakingConstant
//
//  Created by Tomohiro Kumagai on 10/23/18.
//  Copyright © 2018 Tomohiro Kumagai. All rights reserved.
//

private func report(nest level: NestLevel, init initType: InitializerType, message: String) {
    
    report(nest: level, class: .sub, init: initType, message: message)
}

class Sub : Base {
    
    let constant: Int
    
    /*
     ⛄️ プログラマーは Designated Initializer を実装して、
     ⛄️ ここでは期待通りの値で、定数 `constant` が初期化される。
     */
    override init(designated _: Int) {
        
        let level = NestLevel();
        let log = { report(nest: level, class: .sub, init: .designated, message: $0) }
        
        self.constant = 0
        
        log("➡️ Did Enter")
        log("🚩 Assigned self.constant to 0 ⛄️")
        
        super.init(designated: 0)
        
        log("🔎 self.constant is \(self.constant) ⛄️")
        log("↩️ Will Exit")
    }
    
    /*
     ☀️ プログラマーは Designated Initializer を実装したつもりなのに、
     ☀️ 親の初期化が終わると、ここで設定しておいた定数 `constant` の値が
     ☀️ 別の値に変化していることがポイント。
     */
    override init(convenience value: Int) {
        
        let level = NestLevel();
        let log = { report(nest: level, class: .sub, init: .convenience, message: $0) }
        
        log("➡️ Did Enter ⚠️ Overrided base's CONVENIENCE as DESIGNATED in Swift !!")
        self.constant = value
        
        log("🚩 Assigned self.constant to \(value) ☀️")
        super.init(convenience: value)
        
        log("🔎 self.constant is \(self.constant) ☀️")
        log("↩️ Will Exit")
    }
}
