//
//  Sub.swift
//  SampleOfBreakingConstant
//
//  Created by Tomohiro Kumagai on 10/23/18.
//  Copyright © 2018 Tomohiro Kumagai. All rights reserved.
//

class Sub : Base {
    
    let constant: Int
    
    /*
     ⛄️ プログラマーは Designated Initializer を実装して、
     ⛄️ ここでは期待通りの値で、定数 `constant` が初期化される。
     */
    override init(designated _: Int) {
        
        let print = makeLogFunctionFor(.sub, .designated)
        
        print("➡️ Did Enter to SUB's overrided DESIGNATED.")
        
        self.constant = 0
        print("📝 Did assign 0 to `self.constant`. <⛄️>")
        
        print("    Will call BASE's DESIGNATED. (super.init)");
        super.init(designated: 0)
        print("    Did call BASE's DESIGNATED.");

        print("🔅 Assigned value of `self.constant` is \(self.constant). <⛄️>")

        print("↩️ Will Exit from SUB's overrided DESIGNATED.")
    }
    
    /*
     ☀️ プログラマーは Designated Initializer を実装したつもりなのに、
     ☀️ 親の初期化が終わると、ここで設定しておいた定数 `constant` の値が
     ☀️ 別の値に変化していることがポイント。
     */
    override init(convenience value: Int) {
        
        let print = makeLogFunctionFor(.sub, .convenience)

        print("➡️ Did Enter to SUB's overrided CONVENIENCE.")
        print("⚠️ This SUB's CONVENIENCE was overrided as DESIGNATED in Swift !!")
        
        self.constant = value
        print("📝 Did assign \(value) to `self.constant`. <☀️>")

        print("    Will call BASE's CONVENIENCE. (super.init)");
        super.init(convenience: value)
        print("    Did call BASE's CONVENIENCE.");
        
        print("🔅 Assigned value of `self.constant` is \(self.constant). <☀️>")
        
        print("↩️ Will Exit from SUB's overrided CONVENIENCE.")
    }
}
