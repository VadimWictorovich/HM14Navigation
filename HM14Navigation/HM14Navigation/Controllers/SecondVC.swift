//
//  SecondVC.swift
//  HM14Navigation
//
//  Created by Вадим Игнатенко on 21.08.23.
//

import UIKit

class SecondVC: UIViewController {
    var dataString: String?
    weak var firstVC: FirstVC?
    @IBOutlet private var lblOutlet: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        lblOutlet.text = dataString
    }

    @IBAction private func closeAction(_ sender: UIButton) {
        firstVC?.navigationItem.title = "Hello from 2VC"
        dismiss(animated: true)
    }
}
