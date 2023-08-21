//
//  ThirdVC.swift
//  HM14Navigation
//
//  Created by Вадим Игнатенко on 21.08.23.
//

import UIKit

final class ThirdVC: UIViewController {
    var dataString: String?
    @IBOutlet private var lblOutlet: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        lblOutlet.text = dataString
    }

    @IBAction private func closeAction(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
}
