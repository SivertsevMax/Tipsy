import UIKit

class CalculateViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showResultButtonPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "show result", sender: self)
    }
    
}

