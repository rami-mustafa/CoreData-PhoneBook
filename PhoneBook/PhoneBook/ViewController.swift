

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var contactsTableView: UITableView!
    @IBOutlet weak var searchBar: UISearchBar!
    
    var list  = [String]()
       
       
       override func viewDidLoad() {
           super.viewDidLoad()
           
           list = ["ahmet ", "ali ", "yusuf","rami"]
           
           contactsTableView.dataSource = self
           contactsTableView.delegate = self
           
           searchBar.delegate = self
       }
       override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
           
       }

}

extension ViewController: UITableViewDataSource , UITableViewDelegate {
   
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personCell", for: indexPath) as! PersonCellTableViewCell
        cell.personWritingLabel.text = list[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "toDetail", sender: indexPath.row)
    }
    
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let deleteAction = UIContextualAction(style: .destructive, title: "Sil") {( contextualAction, view, boolValue )in
            print("çalıştı")
        }
        
        let updateAction = UIContextualAction(style: .normal, title: "Gunceleme") {( contextualAction, view, boolValue )in
 
            self.performSegue(withIdentifier: "toUpdate", sender: indexPath.row)

        }
        
        
        
        return UISwipeActionsConfiguration(actions: [deleteAction,updateAction])
       }
        
        
    }


extension ViewController:UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print("arama sonuç \(searchText)")
    }
    
}
