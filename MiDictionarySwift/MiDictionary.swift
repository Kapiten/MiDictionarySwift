//
//  MiDictionary.swift
//  MiDictionarySwift
//
//  Created by Admin on 2024/02/21.
//

import Foundation

open class MiDictionary: NSObject {
    public var allLabels: Array<String> = [];
    public var allValues: Array<Any?> = [];
    
    
    override init() {
        super.init()
    }
    
    init(data:Data) {
        super.init()
        
    }
    
    init(fromJson:String) {
        super.init()
//        
//        var json = try! JSONSerialization.jsonObject(with: JSONSerialization.data(withJSONObject: fromJson, options: []), options: []) as! [String:Any]
//        
//        for (key,value) in json {
//            
//        }
    }
    
    public func setValue(_ value: Any?, forLabel: String) {
        allLabels.append(forLabel)
        allValues.append(value)
    }
    
    public func getValue(forLabel:String) -> Any? {
        return allValues[allLabels.firstIndex(of: forLabel)!]
    }
}
