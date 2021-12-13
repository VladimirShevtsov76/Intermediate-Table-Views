//
//  DetailTableViewController.swift
//  Intermediate Table Views
//
//  Created by Vladimir Shevtsov on 01.12.2021.
//

import UIKit

class DetailTableViewController: UITableViewController {
    
    @IBOutlet weak var button:         UIBarButtonItem!
    @IBOutlet weak var emojiTextField: UITextField!
    @IBOutlet weak var nameTextField:  UITextField!
    @IBOutlet weak var descTextField:  UITextField!
    
    var emoji = Emoji(emoji: "", name: "", desc: "")
    
    override func viewDidLoad() {
        
        emojiTextField.delegate = self
        
        emojiTextField.text     = emoji.emoji
        nameTextField.text      = emoji.name
        descTextField.text      = emoji.desc
        
        textFieldChanged()
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "saveSegue" else { return }
        
        emoji = Emoji(
            emoji: emojiTextField.text ?? "",
            name:  nameTextField.text  ?? "",
            desc:  descTextField.text  ?? ""
        )
    }
    
    @IBAction func textFieldChanged() {
        button.isEnabled = !(emojiTextField.text ?? "").isEmpty
    }

}

extension DetailTableViewController: UITextFieldDelegate {
    
}
