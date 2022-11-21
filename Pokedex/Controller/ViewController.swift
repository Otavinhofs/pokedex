//
//  ViewController.swift
//  Pokedex
//
//  Created by Julia Eileen Schäfer on 18/11/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    var pokemon: [Pokemon] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Pokedex"
        pokemon = jsonLink()
        self.tableView.dataSource = self
        self.tableView.delegate = self
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if let selectedIndexPath = self.tableView.indexPathForSelectedRow {
            self.tableView.deselectRow(at: selectedIndexPath, animated: animated)
        }
    }
        
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return pokemon.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell: CellTableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CellTableViewCell
            
            cell.configCell(pokemon[indexPath.row])
            return cell
        }
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            let storyBoard: UIStoryboard = UIStoryboard(name: "StatisticView", bundle: nil)
            let stactistViewScreen = storyBoard.instantiateViewController(withIdentifier: "SecondScreen") as! StactistViewController
            stactistViewScreen.pokemon = pokemon[indexPath.row]
            
            self.navigationController?.pushViewController(stactistViewScreen, animated: true)
            
        }
    }
    

