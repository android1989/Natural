//
//  Day.swift
//  Natural
//
//  Created by Andrew Hulsizer on 11/1/15.
//  Copyright © 2015 Swift Yeti. All rights reserved.
//

import UIKit

enum Discharge {
    case Dry
    case DampWithoutLubrication
    case WetWithoutLubrication
    case ShinyWithoutLubrication
    case Sticky
    case Tacky
    case Stretchy
    case DampWithLubrication
    case WetWithLubrication
    case ShinyWithLubrication
    
    func shortDescription() -> String {
        switch self {
        case .Dry:
            return "0"
        case .DampWithoutLubrication:
            return "2"
        case .WetWithoutLubrication:
            return "2W"
        case .ShinyWithoutLubrication:
            return "4"
        case .Sticky:
            return "6"
        case .Tacky:
            return "8"
        case .Stretchy:
            return "10"
        case .DampWithLubrication:
            return "10DL"
        case .WetWithLubrication:
            return "10SL"
        case .ShinyWithLubrication:
            return "10WL"
        }
    }
    
    func info() -> String {
        return "Fill out info for each type"
    }
    
    func question() -> String {
        return "What was the type of mucus for the day?"
    }

    func requiresSecondaryDescription() -> Bool {
        switch self {
        case .Sticky, .Tacky, .Stretchy:
            return true
        default:
            return false
        }
    }
    
    func requiresFrequency() -> Bool {
        return true
    }
}

enum DischargeDescription {
    case Brown
    case Cloudy
    case CloudyClear
    case Gummy
    case Clear
    case Lubricative
    case Pasty
    case Yellow
    
    func shortDescription() -> String {
        switch self {
        case .Brown:
            return "B"
        case .Cloudy:
            return "C"
        case .CloudyClear:
            return "C/K"
        case .Gummy:
            return "G"
        case .Clear:
            return "K"
        case .Lubricative:
            return "L"
        case .Pasty:
            return "P"
        case .Yellow:
            return "Y"
        }
    }
}

enum BleedingFlow {
    case Heavy
    case Moderate
    case Light
    case VeryLight
    case Brown
    case None
    
    func shortDescription() -> String {
        switch self {
        case .Heavy:
            return "H"
        case .Moderate:
            return "M"
        case .Light:
            return "L"
        case .VeryLight:
            return "VL"
        case .Brown:
            return "B"
        case .None:
            return "N/A"
        }
    }
    
    func question() -> String {
        return "Are you menstrating?"
    }
    
    func requiresMoreInformation() -> Bool {
        switch self {
        case .Heavy, .Moderate:
            return false
        default:
            return true
        }
    }
}

enum Frequency: String {
    case X1
    case X2
    case X3
    case AD
}

struct Day {
    let bleeding: BleedingFlow
    let primaryDischarge: Discharge?
    var secondaryDischarge: DischargeDescription?
    let frequency: Frequency?
    let note: String
}

/*
Are you menstrating?
    - YES
        - What was the flow?
            - H, M
                - Mark it Red and done

            - L, VL, B
                - Did you see any other discharge?
                    - YES
                        - 0 - 10WL
                            *if 6, 8, 10, then ask for yellow options
                            - What was the frequency
                    - NO
                        - Mark it Red and Done

    - NO
        - What was the discharge?
            - 0 - 10WL
                *if 6, 8, 10, then ask for yellow options
                - What was the frequency
*/