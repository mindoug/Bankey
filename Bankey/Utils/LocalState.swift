//
//  LocalState.swift
//  Bankey
//
//  Created by Mindy Douglas on 4/18/22.
//
// Professional iOS Course JRasmusson - Udemy

import Foundation

public class LocalState {
    
    // remember whether user has onboarded and store locally
    
    private enum Keys: String {
        case hasOnboarded
    }
    
    public static var hasOnboarded: Bool {
        get {
            return UserDefaults.standard.bool(forKey: Keys.hasOnboarded.rawValue)
            // rawValue is how we get the string representation of an enum
    
        }
        set(newValue) {
            // pass in bool newValue and write to disk
            UserDefaults.standard.set(newValue, forKey: Keys.hasOnboarded.rawValue)
            UserDefaults.standard.synchronize()
        }
    }
}

