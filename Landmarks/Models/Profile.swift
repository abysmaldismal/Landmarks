//
//  Profile.swift
//  Landmarks
//
//  Created by Arminius Atta on 05/10/2024.
//
/* Abstract: Add an edit mode to give users the ability to change their profile and express their personality */

import Foundation

struct Profile {
    var username: String
    var prefersNotifications = true
    var seasonalPhoto = Season.winter
    var goalDate = Date()
    
    static let `default` = Profile(username: "g_kumar")
        
    
    enum Season: String, CaseIterable, Identifiable {
        case spring = "🌷"
        case summer = "🌞"
        case autumn = "🍂"
        case winter = "☃️"

        var id: String { rawValue }
    }
}
