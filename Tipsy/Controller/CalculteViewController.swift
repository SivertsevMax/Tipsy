import UIKit

class CalculateViewController: UIViewController {
    
    var percentForSplit = 0
    var splitTimes = 2
    var billTotal = 0

    @IBOutlet weak var chooseSplit: UILabel!
    @IBOutlet weak var payValue: UITextField!
    @IBOutlet var selectTip: [UIButton]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func payValueEnter(_ sender: UITextField) {
        if let billTotal = sender.text {
            self.billTotal = Int(billTotal) ?? 0
        }
        print(billTotal)
    }
    
    @IBAction func showResultButtonPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "show result", sender: self)
        
    }
    
    @IBAction func selectTipPressed(_ sender: UIButton) {
        self.percentForSplit = Int(sender.restorationIdentifier ?? "0") ?? 0
        selectTip[0].isSelected = false
        selectTip[1].isSelected = false
        selectTip[2].isSelected = false
        sender.isSelected = true
        
    }
    
    @IBAction func selectPeople(_ sender: UIStepper) {
        chooseSplit.text = "\(Int(sender.value))"
        splitTimes = Int(sender.value)
        
    }
}

