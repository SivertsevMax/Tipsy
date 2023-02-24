import UIKit

struct CalculateTipsBrain {
    
    var percentForSplit: Float = 10
    var splitTimes: Float = 2
    var billTotal: Float = 0
    
    mutating func billTotal(_ enteredNumb: String) {
        billTotal = Float(enteredNumb) ?? 0
    }
    
    mutating func selectTipPressed(_ tips: String) {
        percentForSplit = Float(tips) ?? 1
        print(percentForSplit)
    }
    
    mutating func selectPeople(_ splite: Double) {
        splitTimes = Float(splite)
    }
    
    func showSplitBill() -> String{
        let value = billTotal / splitTimes * percentForSplit / 100
        return "\(String(format: "%.2f", value))"
    }
    
    func showInfoAboutSpliting() -> String {
        var informat = String()
        if percentForSplit == 0 {
            informat = "You don't give tip."
        } else {
            informat = "Split between \(Int(splitTimes)) people, with \(Int(percentForSplit))% tip."
        }
        return informat
    }
}
