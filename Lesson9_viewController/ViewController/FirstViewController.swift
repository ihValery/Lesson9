//
//  ViewController.swift
//  Lesson9_viewController
//
//  Created by Валерий Игнатьев on 03.02.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let mySecondVC = segue.destination                                              //destination назначение куда мы идем
//        mySecondVC.navigationItem.title = segue.identifier                            //названию VC присваиваем значение нашего идентификатора segue
        mySecondVC.navigationItem.title = "My name is ..."
    }

}

