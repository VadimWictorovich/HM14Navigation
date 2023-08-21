//
//  FirstVC.swift
//  HM14Navigation
//
//  Created by Вадим Игнатенко on 21.08.23.
//

import UIKit

final class FirstVC: UIViewController {
    @IBOutlet private var lblOutlet: UILabel!
    
    @IBAction private func goToSecondVC(_ sender: UIButton) {
        performSegue(withIdentifier: "goToSecondVC", sender: "Hello from 1VC")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToSecondVC",
           let secondVC = segue.destination as? SecondVC,
           let dataString = sender as? String {
            secondVC.dataString = dataString
            secondVC.firstVC = self
        } else if segue.identifier == "goToFouthVC",
            let fouthVC = segue.destination as? FothVC {
            fouthVC.dataString = "Конец домашки"
        }
    }
    
    @IBAction private func goToThirdVC(_ sender: UIButton) {
        let vc = ThirdVC(nibName: "ThirdVC", bundle: nil)
        vc.dataString = "Hello from 1VC"
        vc.navigationItem.title = "XIB VC"
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction private func goToFouthWithoutSegue() {
        let storyboard = UIStoryboard(name: "SecondStoryboard", bundle: nil)
        guard let fouthVC = storyboard.instantiateViewController(withIdentifier: "FothVC") as? FothVC else { return }
        fouthVC.navigationItem.title = "4 VC"
        fouthVC.dataString = "Hello from 1VC"
        // navigationController?.pushViewController(fouthVC, animated: true)
        present(fouthVC, animated: true)
    }
    
    @IBAction private func unwindToFirstVC(_ unwindSegue: UIStoryboardSegue) {
        if let fouthVC = unwindSegue.source as? FothVC {
            lblOutlet.text = fouthVC.dataString
        }
    }
}
