//
//  ViewController.swift
//  ECEOpenSDKDemoSwift
//
//  Created by 郭明亮 on 2021/9/18.
//

import UIKit
import ECEOpenSDK

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func startButtonClick(_ sender: Any) {
        /// 评测id，请求自有服务器获取
        let evaluationId:Int = 1
        /// token，请求自有服务器获取
        let token:String = ""
        
        let vc = ECESDKManager.createPage(withEvaluationId: evaluationId, token: token)
        let nav = UINavigationController(rootViewController: vc)
        nav.modalPresentationStyle = .fullScreen
        self.present(nav, animated: true, completion: nil)
    }
    
}

