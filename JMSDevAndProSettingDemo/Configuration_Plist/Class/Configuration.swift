//
//  Configuration.swift
//  DevAndProSettingDemo
//
//  Created by james on 15/4/10.
//  Copyright (c) 2015年 james. All rights reserved.
//

import UIKit
import Foundation

private let ConfigurationSettingKey = "Configuration Setting";

private let configurationData = Configuration.getConfigurationData();

class Configuration {
    // 类中只能存放静态计算属性，不允许有静态存储属性
//    class var configurationData: Dictionary<String,String> {
//        get{
//            return ["":""];
//        }
//        set {
//            var dd = ["":""];
//        }
//        
////        return ["":""];
//    }
    
    private class func getConfigurationData() -> Dictionary<String,AnyObject> {
        let bundle = NSBundle.mainBundle();
        let configurationValue: AnyObject? = bundle.objectForInfoDictionaryKey(ConfigurationSettingKey);

        if (configurationValue != nil) {
            if (configurationValue is String) {
                let configurationFileName:String = configurationValue as! String!;
                if (!configurationFileName.isEmpty) {
                    let plistPath = bundle.pathForResource(configurationFileName, ofType: "plist")!;
                    
                    if (!plistPath.isEmpty) {
                        return NSDictionary(contentsOfFile: plistPath) as! Dictionary;
                    }
                }
            }
        }
        
        return [:];
    }
    
    class func getObjectForKey(key:String) -> AnyObject {
        if (!configurationData.isEmpty) {
            if (configurationData.indexForKey(key) != nil) {
                return configurationData[key]!;
            }
        }
        
        return "";
    }
}
