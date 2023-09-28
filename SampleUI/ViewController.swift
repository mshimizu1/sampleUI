//
//  ViewController.swift
//  SampleUI
//
//  Created by masaya.shimizu on 2023/09/28.
//

//ライフサイクルについて
//https://ticklecode.com/uiviewcontrollerlifecycle/

//モーダル遷移について
//https://blog.asial.co.jp/1669/

//ナビゲーション遷移について
//https://blog.asial.co.jp/1669/

import UIKit

class ViewController: UIViewController {

    //ボタンを生成する。外に置くことで他のメソッドから参照できるようにする。
    var modalButton = UIButton()
    
    //ボタンを生成する。外に置くことで他のメソッドから参照できるようにする。
    var navigationButton = UIButton()
    

    //Viewがセットされたとき
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad")
        
        //画面を真っ白にする
        view.backgroundColor = .white
        
        //ボタンを作成
        modalButton = UIButton(frame: CGRect(x: 10, y: 200, width: 300, height: 50))
        
        //ボタンの色を赤にする
        modalButton.backgroundColor = .red
        
        // タップされたときの処理
        modalButton.addTarget(self,
                  action: #selector(ViewController.modalbuttonTapped(sender:)),
                  for: .touchUpInside)
        
        //ボタンのタイトルを作る
        modalButton.setTitle("モーダルでWebViewを呼び出す", for: .normal)
        
        //ボタンを画面に貼り付ける
        view.addSubview(modalButton)
        
        //
        
        //ボタンを作成
        navigationButton = UIButton(frame: CGRect(x: 10, y: 300, width: 300, height: 50))
        
        //ボタンの色を赤にする
        navigationButton.backgroundColor = .blue
        
        // タップされたときの処理
        navigationButton.addTarget(self,
                  action: #selector(ViewController.navigationButtonTapped(sender:)),
                  for: .touchUpInside)
        
        //ボタンのタイトルを作る
        navigationButton.setTitle("Navigationで次の画面を呼び出す", for: .normal)
        
        //ボタンを画面に貼り付ける
        view.addSubview(navigationButton)
        
    }
    
    @objc func modalbuttonTapped(sender : Any) {
        print("ボタンをタップされたよ")
        let vc = WebViewController()
        
        //モーダル遷移の色々
        vc.modalPresentationStyle = .formSheet
        
        present(vc, animated: true)
        
    }
    
    @objc func navigationButtonTapped(sender : Any) {
        print("ボタンをタップされたよ")
        
        let nextView = SecondViewController()
        self.navigationController?.pushViewController(nextView, animated: true)
        
    }
    
    //Viewが表示される直前
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear")
    }
    
    //Viewが表示されたあと
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("viewDidAppear")
    }
    
    //Viewが消える前(他のコントローラーに遷移)
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("viewWillDisappear")
    }
    
}

