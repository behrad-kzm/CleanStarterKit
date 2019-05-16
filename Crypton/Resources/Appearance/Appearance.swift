//
//  Appearance.swift
//  BarandeShow
//
//  Created by Behrad Kazemi on 11/21/18.
//  Copyright © 2018 Behrad Kazemi. All rights reserved.
//

import UIKit

enum Appearance {
    private enum hub {
        //        enum colors {
        //            static let midBlue = { return UIColor(rgb: 0x34AADC, alpha: 1.0) }
        //            static let midGreen = { return UIColor(rgb: 0x4CD964, alpha: 1.0) }
        //            static let midPurple = { return UIColor(red:0.425, green:0.577, blue:0.939, alpha:1.0) }
        //
        //        }
        //
        enum fonts {
            enum Bold {
                static let title = { return UIFont(name: "IRANYekanFaNum-Bold", size: 18)!}
                static let subtitle = { return UIFont(name: "IRANYekanFaNum-Bold", size: 14)!}
                static let middle = { return UIFont(name: "IRANYekanFaNum-Bold", size: 16)!}
                static let header = { return UIFont(name: "IRANYekanFaNum-Bold", size: 20)!}
                static let caption = { return UIFont(name: "IRANYekanFaNum-Bold", size: 12)!}
            }
            enum Regular {
                static let title = { return UIFont(name: "IRANYekanFaNum", size: 16)!}
                static let caption = { return UIFont(name: "IRANYekanFaNum", size: 14)!}
            }

        }
    }
    enum colors {
        enum blue {
            static let mid = { return UIColor(rgb: 0x34AADC, alpha: 1.0) }
            static let filled = { return UIColor(rgb: 0x2B7BBE, alpha: 1.0) }
            static let ocean = { return UIColor(rgb: 0x31B2C7, alpha: 1.0) }
            static let light = { return UIColor(rgb: 0x6CA8C7, alpha: 1.0)}
            static let sky = { return UIColor(rgb: 0x39A8E4, alpha: 1.0)}
            static let background = { return UIColor(rgb: 0xE4FCFE, alpha: 1.0)}
            
        }
        enum brown {
            static let light = { return UIColor(rgb: 0xC88A54, alpha: 1.0) }
        }
        enum red {
            static let mid = { return UIColor(rgb: 0xFF5A33, alpha: 1.0) }
            static let warn = { return UIColor(rgb: 0xD51313, alpha: 1.0) }
        }
        enum green {
            static let success = { return UIColor(rgb: 0x0BD318, alpha: 1.0) }
            static let successLight = { return UIColor(rgb: 0x87FC70, alpha: 1.0) }
            static let mid = { return UIColor(rgb: 0x4CD964, alpha: 1.0) }
        }
        enum gray {
            static let backgroundMid = { return UIColor(rgb: 0xF8F8F8, alpha: 1.0) }
            static let mid = { return UIColor(rgb: 0x7F7F7F, alpha: 1.0) }
            static let dark = { return UIColor(rgb: 0x43425D, alpha: 1.0) }
            static let textFilled = { return UIColor(rgb: 0x43425D, alpha: 1.0) }
            static let lightShadow = { return UIColor(rgb: 0x000000, alpha: 0.24) }
            
            
        }
        
        enum orange {
            static let light = { return UIColor(rgb: 0xFBB922, alpha: 1.0) }
            static let mid = { return UIColor(rgb: 0xFC9445, alpha: 1.0) }

        }
        
        static let midYellow = { return UIColor(rgb: 0xFFE459, alpha: 1.0) }
        static let midPurple = { return UIColor(red:0.425, green:0.577, blue:0.939, alpha:1.0) }
        static let whiteTextColor = { return UIColor(rgb: 0xFEFEFE, alpha: 1.0) }
        static let blackTextColor = { return UIColor(rgb: 0x202020, alpha: 1.0) }
        static let graySkeleton = { return UIColor(rgb: 0xCFCED4, alpha: 1.0) }
        
        static let purple = { return UIColor(rgb: 0xC644FC, alpha: 1.0) }
        

        static let yellow = { return UIColor(rgb: 0xffcc00, alpha: 1.0) }
        
    }
    enum gradients {
        enum blueTone {
            static let filledOcean = {return [colors.blue.filled().cgColor, colors.blue.ocean().cgColor]}
        }
        
        enum greenTone {
            static let filledLight = {return [colors.green.success().cgColor, colors.green.successLight().cgColor]}
        }
        
        enum orangeTone {
            static let filledLight = {return [colors.orange.light().cgColor, colors.orange.mid().cgColor]}
        }
    }
    
    enum fonts {
        struct buttons {
            static let defaultValue = { return Appearance.hub.fonts.Bold.subtitle()}
            static let small = { return Appearance.hub.fonts.Bold.caption()}
            
            
        }
        
        struct labels {
            static let defaultValue = { return Appearance.hub.fonts.Bold.subtitle()}
            static let title = { return Appearance.hub.fonts.Bold.title()}
            static let boldBig = { return Appearance.hub.fonts.Bold.header()}
            static let details = { return Appearance.hub.fonts.Bold.caption()}
            static let mid = { return Appearance.hub.fonts.Bold.middle()}
            static let subtitle = { return Appearance.hub.fonts.Bold.subtitle()}
            static let detailedInfo = { return Appearance.hub.fonts.Regular.title()}
            static let description = { return Appearance.hub.fonts.Regular.caption()}
        }
    }
}
