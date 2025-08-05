//
//  PokemonViewController.swift
//  MVC
//
//  Created by Larisa Clemenceau on 02/08/25.
//

import UIKit

class PokemonViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    let dataManager = PokemonDataManager()

    override func viewDidLoad() {
        super.viewDidLoad()//esto se ejecuta cuando el view se carga

        // Do any additional setup after loading the view.
        dataManager.fetch()
        //print("# de pokemones: ", dataManager.count())
        print("# de pokemones: \(dataManager.count()) ")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showModal",
           let modalVC = segue.destination as? ModalViewController,
           let indexPath = sender as? IndexPath {
            
            let selectedPokemon = dataManager.getPokemons(at: indexPath.row)
            modalVC.pokemon = selectedPokemon
        }
    }
}

extension PokemonViewController: UITableViewDataSource, UITableViewDelegate { //UITableViewDataSource, UITableViewDelegate son protocolos y me servirán para más instrucciones/funcionalidad
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataManager.count()
    }
    
//        func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//            return "Pokemones"
//        }
    
     func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 100
        }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let imageView = UIImageView(image: UIImage(named: "Pokemon"))
        imageView.contentMode = .scaleAspectFit
        return imageView
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! PokemonCell
        
        let pokemon = dataManager.getPokemons(at: indexPath.row)
        
        cell.pokemonLabel.text = pokemon.name
        cell.pokemonImage.image = UIImage(named: String(describing: pokemon.image))
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "showModal", sender: indexPath)
    }

}
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

