//
//  CustomSecureUnarchiveFromDataTransformer.swift
//  CoreDataTest
//
//  Created by Vladimir Amiorkov on 28.10.23.
//

import Foundation

@objc(CustomSecureUnarchiveFromDataTransformer)
final class CustomSecureUnarchiveFromDataTransformer: NSSecureUnarchiveFromDataTransformer {
    
    override class var allowedTopLevelClasses: [AnyClass] {
        return [NSDateComponents.self]
    }
    
    static let name = NSValueTransformerName(rawValue: String(describing: CustomSecureUnarchiveFromDataTransformer.self))
    
    public static func register() {
        let transformer = CustomSecureUnarchiveFromDataTransformer()
        ValueTransformer.setValueTransformer(transformer, forName: name)
    }
}
