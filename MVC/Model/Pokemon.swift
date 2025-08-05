//ESTRUCTURA para modelos
//  Pokemon.swift
//  MVC
//
//  Created by Larisa Clemenceau on 02/08/25.
//
struct Pokemon {
    let image : Int
    let name : String
    let movement : String
    let skill : String
    //agregar caracteristicas en tarea
    
    init(imageId: Int, name: String, movement: String, skill: String) {
        self.image = imageId
        self.name = name
        self.movement = movement
        self.skill = skill
    }
}
import Foundation
