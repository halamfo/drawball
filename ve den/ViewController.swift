//
//  ViewController.swift
//  ve den
//
//  Created by Dân Tơi on 6/2/16.
//  Copyright © 2016 Dân Tơi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var txtsobong: UITextField!
    @IBAction func btndraw(sender: AnyObject) {
        for view in self.view.subviews {
            if view is UIImageView{
            view.removeFromSuperview()
            }
        }
        let sobong : Int = Int(txtsobong.text!)!
        vebong(sobong)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func vebong(sobong:Int){
        for indexx in 0...sobong-1{
            for indexy in 0...sobong-1{
                let image = UIImage(named: "green")
                let ball = UIImageView(image: image)
                ball.center = CGPointMake(20 + CGFloat(indexx) * spacex(sobong), CGFloat(indexy) * spacey(sobong)+80)
                self.view.addSubview(ball)
            }
        }
    }
    func spacex(sobong:Int) ->CGFloat {
        let space = ((self.view.bounds.size.width - 40))/CGFloat(sobong-1)
        return space
    }
    func spacey(sobong:Int) ->CGFloat{
        let space = ((self.view.bounds.size.height - 120))/CGFloat(sobong-1)
        return space

    }
}

