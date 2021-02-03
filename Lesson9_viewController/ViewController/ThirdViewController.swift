//
//  ThirdViewController.swift
//  Lesson9_viewController
//
//  Created by Валерий Игнатьев on 03.02.2021.
//

import UIKit

class ThirdViewController: UIViewController {
    
    @IBOutlet var textFieldThirdVC: UITextField!
    
    var textsegueThirdVCtwo: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textFieldThirdVC.text = textsegueThirdVCtwo
    }
    @IBAction func passToTextAction(_ sender: UIButton) {
        textsegueThirdVCtwo = textFieldThirdVC.text                           //из текстового поля присваеваем значение которое и передадим
    }
    
//    @IBAction func actionButtonCloseThirdVC(_ sender: UIButton) {           //как пример метода для закрытыя (по кнопке) не передает данные!
//            dismiss(animated: true)                                         //сразу выгружает VC
//    }
    
    deinit {
        print("thirdVC выгрузился из памяти")
    }

}
