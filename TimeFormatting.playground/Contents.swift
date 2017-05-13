//: Playground - noun: a place where people can play

import Foundation

//TimeFormat is a class that allows you to easily format the time in seconds into an hours:minutes:seconds structure. It is completely open source and is available at https://github.com/CosmosRedshift/TimeFormatter-Swift
// The repository contains both this playground as well as a .Swift version of the file, usable in actual projects more conveniently

class TimeFormat: NSObject {
    
    func format(timeInSeconds:Int) -> String{
        
        let hours = timeInSeconds/3600
        let minutes = (timeInSeconds%3600)/60
        let seconds = (timeInSeconds%3600)%60
        
        var secondString = ""
        var minuteString = ""
        var hourString = ""
        
        if hours >= 10 {
            hourString = String(hours)
        }else{
            hourString = "0\(hours)"
        }
        
        if minutes >= 10{
            minuteString = String(minutes)
        }else{
            minuteString = "0\(minutes)"
        }
        
        if seconds >= 10{
            secondString = String(seconds)
        }else{
            secondString = "0\(seconds)"
        }
        
        let timeString = "\(hourString):\(minuteString):\(secondString)"
        
        return timeString
    }
}

let timeInSeconds = 24564

//let formatter = TimeFormat()
//formatter.format(timeInSeconds: timeInSeconds)
