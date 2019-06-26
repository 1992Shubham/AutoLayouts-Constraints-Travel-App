//
//  TicketViewController.swift
//  Travel App
//
//  Created by SHUBHAM AGARWAL on 22/06/19.
//  Copyright © 2019 SHUBHAM AGARWAL. All rights reserved.
//

import UIKit

class TicketViewController: UIViewController {

    @IBOutlet weak var btnRound: UIButton!
    @IBOutlet weak var btnOneWay: UIButton!
    @IBOutlet weak var backView: UIView!
    @IBOutlet weak var btnMulti: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btnRound.designButton(borderWidth: 0, borderColor: .clear)
        btnOneWay.designButton(borderWidth: 0, borderColor: .clear)
        btnMulti.designButton(borderWidth: 0, borderColor: .clear)
        backView.designView(borderWidth: 0.5, borderColor: #colorLiteral(red: 0.6666666865, green: 0.6666666865, blue: 0.6666666865, alpha: 1))
    }
    
    @IBAction func onClickRound(_ sender: Any) {
        changeButtonColor(roundColor: #colorLiteral(red: 0.2666666667, green: 0.7333333333, blue: 1, alpha: 1), roundTxtColor: .white)
    }
    
    @IBAction func onClickOneWay(_ sender: Any) {
        changeButtonColor(oneWayColor: #colorLiteral(red: 0.2666666667, green: 0.7333333333, blue: 1, alpha: 1), oneWayTxtColor: .white)

    }
    
    @IBAction func onClickMulti(_ sender: Any) {
        changeButtonColor(multiColor: #colorLiteral(red: 0.2666666667, green: 0.7333333333, blue: 1, alpha: 1), multiTxtColor: .white)

    }
    
    func changeButtonColor(roundColor: UIColor = .white , oneWayColor: UIColor = .white, multiColor: UIColor = .white, roundTxtColor: UIColor = #colorLiteral(red: 0.2666666667, green: 0.7333333333, blue: 1, alpha: 1), oneWayTxtColor: UIColor = #colorLiteral(red: 0.2666666667, green: 0.7333333333, blue: 1, alpha: 1), multiTxtColor: UIColor = #colorLiteral(red: 0.2666666667, green: 0.7333333333, blue: 1, alpha: 1)) {
        
        btnRound.backgroundColor = roundColor
        btnOneWay.backgroundColor = oneWayColor
        btnMulti.backgroundColor = multiColor
        
        btnRound.setTitleColor(roundTxtColor, for: .normal)
        btnOneWay.setTitleColor(oneWayTxtColor, for: .normal)
        btnMulti.setTitleColor(multiTxtColor, for: .normal)
    }
}
