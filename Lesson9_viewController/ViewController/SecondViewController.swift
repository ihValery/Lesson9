//
//  SecondViewController.swift
//  Lesson9_viewController
//
//  Created by Валерий Игнатьев on 03.02.2021.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueThirdVCtwo" {                                 //определяем по какому переходу идем
            let myThirdVC = segue.destination as! ThirdViewController              //кастим что-бы достучаться до свойства
//            myThirdVC.textsegueThirdVCtwo = segue.identifier
            myThirdVC.textsegueThirdVCtwo = "My name is ...My name is ...My name is ..."
        }
    }
    
    @IBAction func myUnwindSegue(segue: UIStoryboardSegue) {
        let myThirdVC = segue.source as! ThirdViewController                      //источник данных (кто предоставляет)
        guard myThirdVC.textsegueThirdVCtwo == "" else {                          //если ничего не ввели то и значение не меняется (на пустую строку)
            return title = myThirdVC.textsegueThirdVCtwo
        }
    }
    
    deinit {                                                //деинициализатор - удаляет из памяти
        print("secondVC выгрузился из памяти")
    }

}
