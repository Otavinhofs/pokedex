//
//  StactistViewController.swift
//  Pokedex
//
//  Created by Otávio da Silva on 21/11/22.
//

import UIKit

class StactistViewController: UIViewController {
    var pokemon: Pokemon?
    @IBOutlet weak var healthPokemon: UILabel!
    @IBOutlet weak var fullView: UIView!
    @IBOutlet weak var atackPokemon: UILabel!
    @IBOutlet weak var defencePokemon: UILabel!
    @IBOutlet weak var speedPokemon: UILabel!
    @IBOutlet weak var type2: UILabel!
    @IBOutlet weak var viewCorner: UIView!
    @IBOutlet weak var type1: UILabel!
    @IBOutlet weak var imagePokemon: UIImageView!
    @IBOutlet weak var namePokemon: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var colors =  UIColor(named: String((pokemon?.type[0].lowercased())!))
        verificationType()
        setValueSecondScreen()
        fullView.backgroundColor = colors?.withAlphaComponent(0.8)
        self.navigationController?.navigationBar.tintColor = .white
        viewCorner.layer.cornerRadius = 30
    }
    
    
    func setValueSecondScreen() {
        let hpValue = pokemon!.base.hp
        let atackValue = pokemon!.base.attack
        let defenceValue = pokemon!.base.defense
        let speedValue = pokemon!.base.speed
        namePokemon.text = pokemon?.name.english
        healthPokemon.text = String(hpValue)
        atackPokemon.text = String(atackValue)
        defencePokemon.text = String(defenceValue)
        speedPokemon.text = String(speedValue)
        imagePokemon.image = UIImage(named: String(format: "%03d", pokemon!.id))
    }
    func verificationType() {
        if pokemon!.type.count > 1 {
 
            type1.text = pokemon!.type[0]
            type2.text = pokemon!.type[1]
            type1.backgroundColor = UIColor(named: (pokemon!.type[0].lowercased()))
            type2.backgroundColor = UIColor(named: pokemon!.type[1].lowercased())
            type2.isHidden = false
            radius(type1)
            radius(type2)
            
        } else {
            type1.text = pokemon!.type[0]
            type2.isHidden = true
            type1.backgroundColor = UIColor(named: pokemon!.type[0].lowercased())
            radius(type1)
            radius(type2)

        }
    }
    func radius(_ label: UILabel) {
        label.layer.cornerRadius = 8
        label.layer.masksToBounds = true
    }

}
