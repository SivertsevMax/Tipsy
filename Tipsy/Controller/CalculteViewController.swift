import UIKit

class CalculateViewController: UIViewController {

    @IBOutlet weak var peopleSelected: UILabel!
    @IBOutlet weak var payValue: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func showResultButtonPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "show result", sender: self)
    }
    
    @IBAction func selectPercent(_ sender: UIButton) {
    }
    
    @IBAction func selectPeople(_ sender: UIStepper) {
    }
    
    
    
    
}

