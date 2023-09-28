//
//  ThirdViewController.swift
//  SampleUI
//
//  Created by masaya.shimizu on 2023/09/28.
//

import Foundation
import UIKit

class ThirdViewController: UIViewController {

    //ボタンを生成する。外に置くことで他のメソッドから参照できるようにする。
    var navigationButton = UIButton()
    

    //Viewがセットされたとき
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad")
        
        //画面を真っ白にする
        view.backgroundColor = .green
        
        
    }
    
}


