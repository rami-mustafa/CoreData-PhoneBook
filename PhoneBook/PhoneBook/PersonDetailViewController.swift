
import UIKit

class PersonDetailViewController: UIViewController {

    @IBOutlet weak var personNumberLabel: UILabel!
    @IBOutlet weak var personNameLabel: UILabel!
    
    var Person:Contacts?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let p = Person {
            personNameLabel.text = p.person_name
            personNumberLabel.text = p.person_number
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
