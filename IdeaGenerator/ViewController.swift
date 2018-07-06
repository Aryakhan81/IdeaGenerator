//
//  ViewController.swift
//  IdeaGenerator
//
//  Created by Arya Gharib on 7/2/18.
//  Copyright © 2018 Arya Gharib. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    //Strings that contain data for the labels
    let concepts: [String] = ["Facebook", "Instagram", "Gentlemen's Club", "Computer", "Crepery", "Confectionery", "People Magazine", "Newspaper", "Burj Khalifa", "Tinder"]
    let conjuncts: [String] = ["for", "ate", "dated", "licked", "had"]
    let subjects: [String] = ["a car", "vampires", "North Korea", "the guy next door", "robots", "some kids", "abc gum", "your mother", "Pennywise", "your roommate", "Siri"]
    
    //Random function for convienience
    func randomInt(upper: Int) -> Int{
        let upperBound = UInt32(upper)
        let randInt = Int(arc4random_uniform(upperBound))
        return randInt
    }
    
    //Connect UI to ViewController.swift
    @IBOutlet weak var initialLabel: UILabel!
    @IBOutlet weak var conjunction: UILabel!
    @IBOutlet weak var finalLabel: UILabel!
    @IBOutlet weak var generator: UIButton!
    @IBOutlet weak var newConjuction: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Generates the labels
    func generate(label: UILabel, list: [String]) {
        label.text = list[randomInt(upper: list.count)]
    }
    
    @IBAction func generateButtonTapped(_ sender: Any) {
        generate(label: initialLabel, list: concepts)
        generate(label: finalLabel, list: subjects)
    }
    @IBAction func newConjunctionButtonTapped(_ sender: Any) {
        generate(label: conjunction, list: conjuncts)
    }
    
}

