//
//  TableViewController.swift
//  Intermediate Table Views
//
//  Created by Vladimir Shevtsov on 01.12.2021.
//

import UIKit

class TableViewController: UITableViewController {
    
    var emojis = [Emoji]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        emojis = Emoji.load()

        navigationItem.leftBarButtonItem = editButtonItem
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
 
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell  = tableView.dequeueReusableCell(withIdentifier: "EmojiList", for: indexPath) as! TableViewCell
        
        let row   = indexPath.row
        let emoji = emojis[row]

        cell.emojiLabel.text = emoji.emoji
        cell.nameLabel.text  = emoji.name
        cell.descLabel.text  = emoji.desc

        return cell
    }
    
    // MARK: - UITableViewDelegate
    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .delete
    }
    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            emojis.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            print(#function)
        }    
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print(#function)
        
        guard segue.identifier == "EmojiDetailSegue" else { return }
        guard let controller   = segue.destination as? DetailTableViewController else { return }
        guard let path         = tableView.indexPathForSelectedRow else { return }
        
        let row   = path.row
        let emoji = emojis[row]
        
        controller.navigationItem.title = "Edit"
        controller.emoji                = emoji
        
        print(#function)
    }
    
    @IBAction func reset(seg: UIStoryboardSegue) {
        guard seg.identifier == "saveSegue" else { return }
        guard let controller = seg.source as? DetailTableViewController else { return }
        
        let emoji = controller.emoji
        
        if let path = tableView.indexPathForSelectedRow {
            emojis[path.row] = emoji
            tableView.deselectRow(at: path, animated: false)
        } else {
            emojis.append(emoji)
        }
        
        tableView.reloadData()
    }

}
