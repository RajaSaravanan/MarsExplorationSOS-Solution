//: Playground - noun: a place where people can play

import Cocoa

extension String {
    subscript (i: Int) -> String {
        return String(self[index(startIndex, offsetBy: i)])
    }
}
func findNonSOS(_ sosMsgs : String) -> (Int, String){
    /*
     Constraints:
     1 <= |S| <= 99
     |S| % 3 = 0
     S - uppercased
     */
    let sCount = sosMsgs.count
    if (sCount < 1 || sCount > 99 || sCount%3 != 0){
        return (0 , "NO SOS")
    }
    
    let totalSOSMsgs = sCount/3
    var formedSOS = ""
    for _ in 0..<totalSOSMsgs {
        formedSOS += "SOS"
    }

    if (formedSOS != sosMsgs){
        var nonSOSCount = 0
        var nonSOSString = ""
        for i in 0..<sCount
        {
            if (sosMsgs[i] != formedSOS[i]){
                nonSOSString += sosMsgs[i]
                nonSOSCount += 1
            }
        }
        return (nonSOSCount, nonSOSString)
    }
    return (0 , "PERFECT SOS")
}

/*Input Output*/
print("INPUT")
let input1 = "SOSSPSSQSSOR"
print(input1)
print("-------------")
print("OUTPUT")
let output1 = findNonSOS(input1)
print("NonSOS Count : \(output1.0) <----> NonSOS Strings : \(output1.1)")
print("-------------")
print("-------------")
print("INPUT2")
let input2 = "SOSSOSSOSSOS"
print(input2)
print("-------------")
print("OUTPUT")
let output2 = findNonSOS(input2)
print("NonSOS Count : \(output2.0) <----> NonSOS Strings : \(output2.1)")
print("-------------")
print("-------------")
print("INPUT3")
let input3 = "SOSSOT"
print(input3)
print("-------------")
print("OUTPUT")
let output3 = findNonSOS(input3)
print("NonSOS Count : \(output3.0) <----> NonSOS Strings : \(output3.1)")

