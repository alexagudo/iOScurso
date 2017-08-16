//: Playground - noun: a place where people can play

import UIKit

var dicCadenas:[Int:String] = [1:"Uno",2:"Dos",3:"Tres",4:"Cuatro"]
var dicNumeros:[Int:Int] = [1:2, 5:10, 8:15, 3:4, 20:13]
let dicCadenaTipificada:[String:String] = ["Cinco":"5","Seis":"6","Ocho":"8"]


// Crear Dicionario con nombres de cada uno de su equipo

let Nombres:[String:String] = ["Alex":"Agudo", "Arturo":"Dias","Alejandro":"Solares"]

let pelicula:(pelicula:String, año:Double) = ("Tomorrowland",2015)
let peliculaInferida = ("Tomorrowland",2015,9)
let peliculax   :(pelicula:String, año:Double, rank:Int) = ("Tomorrowland",2015,9)


// Ciclos


var nombresx = ["Jose", "Pedro", "Pablo", "Sergio", "Andres", "Manuel"]

print(nombresx[0])
print(nombresx[1])
print(nombresx[2])
print(nombresx[3])
print(nombresx[4])
print(nombresx[5])

// Ciclos

var i = 0
for var i = 0; i < 5; i + 1 {
    print(nombresx[i])
}


