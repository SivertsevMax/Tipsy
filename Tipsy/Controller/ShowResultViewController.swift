import UIKit

class ShowResultViewController: UIViewController {
    
    var result: String?
    var information: String?
    
    @IBOutlet weak var totalPerPerson: UILabel!
    @IBOutlet weak var informationOfResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        totalPerPerson.text = result
        informationOfResult.text = information
    }
    
    @IBAction func returnBack(_ sender: UIButton) {
        self.dismiss(animated: false)
    }
    
}
