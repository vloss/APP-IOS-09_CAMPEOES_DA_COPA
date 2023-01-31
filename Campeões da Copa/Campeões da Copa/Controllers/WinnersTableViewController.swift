//
//  WinnersTableViewController.swift
//  Campeões da Copa
//
//  Created by Vinicius Loss on 30/01/23.
//

import UIKit

class WinnersTableViewController: UITableViewController {
    
    var worldsCups: [WorldCup] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadWorldCups()
    }
    
    // Metodo que vai carregar todos dados do json e salvar no array worldsCups
    func loadWorldCups(){
        // captura a URL do file json
        let fileURL     = Bundle.main.url(forResource: "winners.json", withExtension: nil)!
        let jsonData    = try! Data(contentsOf: fileURL)
        
        //do catch
        do{
            worldsCups = try JSONDecoder().decode([WorldCup].self, from: jsonData)
        } catch {
            print(error.localizedDescription)
        }
    }

    // MARK: - Table view data source

    // Quando for apenas uma seção, não é obrigatório o uso do metodo.
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    // Quantidade de linhas por seção, é passado o ID da section que pode ser criado um switch para dividir as quantidades por section.
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return worldsCups.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        // Configure the cell...

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
