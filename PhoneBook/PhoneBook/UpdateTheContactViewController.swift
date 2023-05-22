

import UIKit

class UpdateTheContactViewController: UIViewController {
    let context = appDelegate.persistentContainer.viewContext

    @IBOutlet weak var personNameTextFiedl: UITextField!
    @IBOutlet weak var personNumberTextFiedl: UITextField!

    var Person:Contacts?

    override func viewDidLoad() {
        super.viewDidLoad()
        if let p = Person {
            personNameTextFiedl.text = p.person_name
            personNumberTextFiedl.text = p.person_number
        }
     }
    

 
    
    @IBAction func update(_ sender: Any) {
        
        if  let p = Person , let name =  personNameTextFiedl.text , let number = personNumberTextFiedl.text {
           
 
            p.person_name = name
            p.person_number = number
            
            appDelegate.saveContext()
        }
    }
    
}
