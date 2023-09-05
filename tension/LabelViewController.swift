//
//  ViewController.swift
//  tension
//
//  Created by Іван Штурхаль on 05.09.2023.
//

import UIKit

// створити лейбл де буде зберігатись інформація
// підготовка переходу на інший екран
// розширення
// функція яка додає в пусту змінну текст

// клас, що приймає

class LabelViewController: UIViewController {

// лейбл, де буде зʼявлятись інформація з іншого екрану
    @IBOutlet weak var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
// підготовка екрану для відображення переданих даних
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let textVC = segue.destination as! TextFieldViewController
        textVC.delegate = self
    }

}
// розширення для делегата з описом функціі
extension LabelViewController: TextFieldViewDelegate {
    func setNewName(name: String) {
        myLabel.text = name
    }
}
