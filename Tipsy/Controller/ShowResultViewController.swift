import UIKit

class ShowResultViewController: UIViewController {
    
    @IBOutlet weak var totalPerPerson: UILabel!
    @IBOutlet weak var informationOfResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func returnBack(_ sender: UIButton) {
        self.dismiss(animated: false)
    }
    
}
