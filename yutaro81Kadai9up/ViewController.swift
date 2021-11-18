//
//  ViewController.swift
//  yutaro81Kadai9up
//
//  Created by 橋元雄太郎 on 2021/11/12.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak private var resultLabel: UILabel!

    @IBAction private func exitDone(segue: UIStoryboardSegue) {
        let nextVC = segue.source as? NextViewController
        resultLabel.text = nextVC?.selectedPrefectureName
    }

    @IBAction private func exit(segue: UIStoryboardSegue) {
    }
}
