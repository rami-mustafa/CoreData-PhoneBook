
import UIKit

class CreateContactViewController: UIViewController {
    let context = appDelegate.persistentContainer.viewContext

    @IBOutlet weak var personNameTextField: UITextField!
    @IBOutlet weak var personNumberTextFiedl: UITextField!
   
    override func viewDidLoad() {
        super.viewDidLoad()

     }
    

   
    @IBAction func Add(_ sender: Any) {
        
        
        
        if let name =  personNameTextField.text , let number = personNumberTextFiedl.text {
           
            let person = Contacts(context: context)
            
            person.person_name = name
            person.person_number = number
            
            
            appDelegate.saveContext()
        }
        
       
    }
    
}
