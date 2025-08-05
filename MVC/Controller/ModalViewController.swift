//
//  ModalViewController.swift
//  MVC
//
//  Created by Larisa Clemenceau on 02/08/25.
//

import UIKit

class ModalViewController: UIViewController {
    
    var pokemon: Pokemon?
    
    @IBOutlet weak var pokemonLabel: UILabel!
    @IBOutlet weak var pokemonImageView: UIImageView!
    @IBOutlet weak var movementLabel: UILabel!
    @IBOutlet weak var skillLabel: UILabel!
    
    
    @IBOutlet weak var contentStackView: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let pokemon = pokemon {
            pokemonLabel.text = pokemon.name
            pokemonImageView.image = UIImage(named: String(pokemon.image))
            movementLabel.text = "Movimiento: \(pokemon.movement)"
            skillLabel.text = "Habilidad: \(pokemon.skill)"
        }

        // Do any additional setup after loading the view.
    }
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        
        coordinator.animate(alongsideTransition: { _ in
            let isLandscape = size.width > size.height
            self.contentStackView.axis = isLandscape ? .horizontal : .vertical
        }, completion: nil)
    }
    
    @IBAction func exitTapped(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
