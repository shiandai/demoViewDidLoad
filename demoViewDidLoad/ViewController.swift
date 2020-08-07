//
//  ViewController.swift
//  demoViewDidLoad
//
//  Created by Owen on 2020/8/5.
//

import UIKit
import SpriteKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //增加跳舞view
        let danceImageView = UIImageView(frame: CGRect(x: 7, y: 50, width: 400, height: 800))
        let danceImage = UIImage.animatedImageNamed("danceimage-", duration: 4)
        danceImageView.image = danceImage
        view.addSubview(danceImageView)
        
        //增加漸層view
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.frame
        gradientLayer.colors = [UIColor.green.cgColor, UIColor.white.cgColor, UIColor.red.cgColor]
        gradientLayer.locations = [0, 0.8, 1]
        view.layer.insertSublayer(gradientLayer, at: 0)
        
        let starEmitterCell = CAEmitterCell()
        starEmitterCell.contents = UIImage(named: "star-2")?.cgImage
        starEmitterCell.birthRate = 2
        starEmitterCell.lifetime = 8
        starEmitterCell.velocity = 100
        starEmitterCell.yAcceleration = 30
        starEmitterCell.scale = 0.2
        starEmitterCell.scaleRange = 0.1
        starEmitterCell.spin = 0.5
        starEmitterCell.spinRange = 1
        starEmitterCell.emissionRange = CGFloat.pi
        let starEmitterLayer = CAEmitterLayer()
        starEmitterLayer.emitterCells = [starEmitterCell]
        view.layer.addSublayer(starEmitterLayer)
    }
    
}

