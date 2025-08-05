//
//  PokemonDataManager.swift
//  MVC
//
//  Created by Larisa Clemenceau on 02/08/25.
//

import Foundation

class PokemonDataManager {
    private var pokemons : [Pokemon] = []
    let pokemonDictionary: [Int: (name: String, movement: String, skill: String)] = [
        0: ("Wartortle", "Pistola de agua", "Agua"),
        1: ("Bulbasaur", "Látigo cepa", "Planta"),
        2: ("Blastoise", "Hidrobomba", "Agua"),
        3: ("Butterfree", "Tornado", "Bicho/Volador"),
        4: ("Ivysaur", "Hoja afilada", "Planta/Veneno"),
        5: ("Jigglypuff", "Golpe", "Normal/Hada"),
        6: ("Charmander", "Ascuas", "Fuego"),
        7: ("Meowth", "Arañazo", "Normal"),
        8: ("Alakazam", "Confusión", "Psíquico"),
        9: ("Pidgeotto", "Ataque ala", "Normal/Volador"),
        10: ("Raichu", "Impactrueno", "Eléctrico"),
        11: ("Rattata", "Ataque rápido", "Normal"),
        12: ("Vaporeon", "Pulso de agua", "Agua"),
        13: ("Jynx", "Rayo de hielo", "Hielo/Psíquico"),
        14: ("Venusaur", "Rayo solar", "Planta/Veneno"),
        15: ("Vulpix", "Lanzallamas", "Fuego"),
        16: ("Slowbro", "Psíquico", "Agua/Psíquico"),
        17: ("Seel", "Cola de agua", "Agua"),
        18: ("Fearow", "Picotazo", "Normal/Volador"),
        19: ("Wigglytuff", "Doble golpe", "Normal/Hada"),
        20: ("Scyther", "Cuchillada", "Bicho/Volador"),
        21: ("Golduck", "Surf", "Agua"),
        22: ("Lapras", "Golpe hielo", "Agua/Hielo"),
        23: ("Sandshrew", "Excavar", "Tierra")
    ]

    func fetch() {
        pokemons.removeAll()
        for id in pokemonDictionary.keys.sorted() {
            if let data = pokemonDictionary[id] {
                pokemons.append(Pokemon(
                    imageId: id,
                    name: data.name,
                    movement: data.movement,
                    skill: data.skill
                ))
            }
        }
    }
    func getPokemons(at index: Int) -> Pokemon{
        return pokemons[index]
        }
    func count() -> Int {
            return pokemons.count
        }
    }
    
