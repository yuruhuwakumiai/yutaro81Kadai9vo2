//
//  NextViewController.swift
//  yutaro81Kadai9up
//
//  Created by 橋元雄太郎 on 2021/11/12.
//

import UIKit

class NextViewController: UIViewController {
    private(set) var selectedPrefectureName: String?
    @IBAction private func tokyoButton(_ sender: Any) {
        exitBySegue(prefectureName: "東京都")
    }

    @IBAction private func kanagawaButton(_ sender: Any) {
        exitBySegue(prefectureName: "神奈川県")
    }

    @IBAction private func saitamaButton(_ sender: Any) {
        exitBySegue(prefectureName: "埼玉県")
    }

    @IBAction private func chibaButton(_ sender: Any) {
        exitBySegue(prefectureName: "千葉県")
    }

    private func exitBySegue(prefectureName: String) {
        selectedPrefectureName = prefectureName
        performSegue(withIdentifier: "first", sender: self)
    }
}

// 2021.11.12  修正考案1
//    import UIKit
//
//    class NextViewController: UIViewController {
//    @IBOutlet weak private var button1: UIButton!
//    @IBOutlet weak private var button2: UIButton!
//    @IBOutlet weak private var button3: UIButton!
//    @IBOutlet weak private var button4: UIButton!
//
//    var inputText: String?
//    private var timingData: Int = 0
//    override func viewDidLoad() {
//        super.viewDidLoad()
// for文の中でキャストを「！」を使わないで行う方法 をどうするか swftlint警告
//        for num in 1...4 {
//            (value(forKey: "button\(num)") as! UIButton).tag = num
//        }
//    }

//    @IBAction private func placeButton(_ sender: UIButton) {
//        timingData = sender.tag
//        switch timingData {
//        case 1:
//            inputText = "東京都"
//        case 2:
//            inputText = "神奈川県"
//        case 3:
//            inputText = "埼玉県"
//        case 4:
//            inputText = "千葉県"
//        default:
//            break
//        }
//    }
