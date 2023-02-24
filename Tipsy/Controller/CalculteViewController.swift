import UIKit

class CalculateViewController: UIViewController {
    
    var calculateVC = CalculateTipsBrain()
    
    @IBOutlet weak var billTotalValue: UITextField!
    @IBOutlet weak var chooseSplit: UILabel!
    @IBOutlet var zeroPctChan: UIButton!
    @IBOutlet var tenPctChan: UIButton!
    @IBOutlet var twentyPctChan: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func billChange(_ sender: UITextField) {
        calculateVC.billTotal(sender.text ?? "1000")
        billTotalValue.endEditing(true)
        
    }
    
    @IBAction func selectTipPressed(_ sender: UIButton) {
        calculateVC.selectTipPressed(sender.restorationIdentifier ?? "0")
        isSelectCanseled(sender)
    }
    
    @IBAction func selectPeople(_ sender: UIStepper) {
        calculateVC.selectPeople(sender.value)
        chooseSplit.text = "\(Int(sender.value))"
    }
    
    @IBAction func showResultButtonPressed(_ sender: UIButton) {
        billTotalValue.endEditing(true)
        self.performSegue(withIdentifier: "show result", sender: self)
        
    }
    
    func isSelectCanseled(_ sender: UIButton) {
        zeroPctChan.isSelected = false
        tenPctChan.isSelected = false
        twentyPctChan.isSelected = false
        sender.isSelected = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any? ) {
        if segue.identifier == "show result" {
            let destinationVC = segue.destination as! ShowResultViewController
            destinationVC.result = calculateVC.showSplitBill()
            destinationVC.information = calculateVC.showInfoAboutSpliting()
        }
    }
}

