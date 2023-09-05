//
//  TextFieldViewController.swift
//  tension
//
//  Created by Іван Штурхаль on 05.09.2023.
//

import UIKit

// вписати протокол yes
// додати аутлет yes
// вписати делегат yes
// додати кнопку збережено yes

//клас, де вносять інфо, віддає

// протокол
protocol TextFieldViewDelegate: AnyObject {
    func setNewName(name: String)
}

class TextFieldViewController: UIViewController {

// лейбл, куди будуть вносити інформацію, і переносити на інший екран
    @IBOutlet weak var myTextLabel: UITextField!
// збереження даних з лейбла, безпечний анврап
    var textOut: String {
        myTextLabel.text ?? ""
    }
// вкати делегат, вік змінна, опціональна
    weak var delegate: TextFieldViewDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    
// кнопка надсилання даних, з вказанням інформації для надсилання
    @IBAction func didSaveButtonPressed(_ sender: Any) {
        delegate?.setNewName(name: textOut)
        dismiss(animated: true)
    }
    

}
