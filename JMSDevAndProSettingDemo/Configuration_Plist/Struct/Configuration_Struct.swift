//
//  Configuration.swift
//  DevAndProSettingDemo
//
//  Created by james on 15/4/10.
//  Copyright (c) 2015年 james. All rights reserved.
//

import UIKit

private let ConfigurationSettingKey = "Configuration Setting";

struct Configuration_Struct {
    private static var configurationData = Configuration_Struct.getConfigurationData();    // 这个就是静态存储属性
    
    private static func getConfigurationData() -> Dictionary<String,AnyObject> {
        let bundle = NSBundle.mainBundle();
        let configurationValue: AnyObject? = bundle.objectForInfoDictionaryKey(ConfigurationSettingKey);
        
        if (configurationValue != nil) {
            if (configurationValue is String) {
                let configurationFileName:String = configurationValue as! String!;
                if (!configurationFileName.isEmpty) {
                    let plistPath = bundle.pathForResource(configurationFileName, ofType: "plist")!;

                    if (!plistPath.isEmpty) {
                        return NSDictionary(contentsOfFile: plistPath) as! Dictionary<String,AnyObject>;
                    }
                }
            }
        }
        
        return [:];
    }
    
    static func getObjectForKey(key:String) -> AnyObject {
        if (!configurationData.isEmpty) {
            if (configurationData.indexForKey(key) != nil) {
                return configurationData[key]!;
            }
        }
        
        return "";
    }
}
