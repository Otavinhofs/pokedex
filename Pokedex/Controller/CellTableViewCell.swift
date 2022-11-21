//
//  CellTableViewCell.swift
//  Pokedex
//
//  Created by Otávio da Silva on 18/11/22.
//

import UIKit

class CellTableViewCell: UITableViewCell {
    @IBOutlet weak var namePokemon: UILabel!
    @IBOutlet weak var viewBg: UIView!
    @IBOutlet weak var typePokemon: UILabel!
    @IBOutlet weak var imagePokemon: UIImageView!
    @IBOutlet weak var typePokemon2: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        viewBg?.layer.cornerRadius = 8
        viewBg?.layer.masksToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    func configCell(_ pokemon: Pokemon) {
        namePokemon.text = pokemon.name.english

        if pokemon.type.count > 1 {
 
            typePokemon.text = pokemon.type[0]
            typePokemon2.text = pokemon.type[1]
            typePokemon.backgroundColor = UIColor(named: pokemon.type[0].lowercased())
            typePokemon2.backgroundColor = UIColor(named: pokemon.type[1].lowercased())
            typePokemon2.isHidden = false
            radius(typePokemon)
            radius(typePokemon2)
            
        } else {
            typePokemon.text = pokemon.type[0]
            typePokemon2.isHidden = true
            typePokemon.backgroundColor = UIColor(named: pokemon.type[0].lowercased())
            
            radius(typePokemon)
            radius(typePokemon2)

        }
     
        imagePokemon.image = UIImage(named: String(format: "%03d", pokemon.id))
    }

    func radius(_ label: UILabel) {
        label.layer.cornerRadius = 8
        label.layer.masksToBounds = true
    }
}
