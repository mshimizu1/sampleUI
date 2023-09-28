//
//  SecondViewController.swift
//  SampleUI
//
//  Created by masaya.shimizu on 2023/09/28.
//

import Foundation
import UIKit

class SecondViewController: UIViewController {

    //ボタンを生成する。外に置くことで他のメソッドから参照できるようにする。
    var navigationButton = UIButton()
    
    //Viewがセットされたとき
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad")
        
        //画面を真っ白にする
        view.backgroundColor = .white
        
        //ボタンを作成
        navigationButton = UIButton(frame: CGRect(x: 10, y: 200, width: 300, height: 50))
        
        //ボタンの色を青にする
        navigationButton.backgroundColor = .blue
        
        // タップされたときの処理
        navigationButton.addTarget(self,
                  action: #selector(SecondViewController.navigationButtonTapped(sender:)),
                  for: .touchUpInside)
        
        //ボタンのタイトルを作る
        navigationButton.setTitle("Navigationで三番目を呼び出す", for: .normal)
        
        //ボタンを画面に貼り付ける
        view.addSubview(navigationButton)
        
    }
    
    @objc func navigationButtonTapped(sender : Any) {
        print("ボタンをタップされたよ")
        
        let nextView = ThirdViewController()
        
        self.navigationController?.pushViewController(nextView, animated: true)
        
    }

}

