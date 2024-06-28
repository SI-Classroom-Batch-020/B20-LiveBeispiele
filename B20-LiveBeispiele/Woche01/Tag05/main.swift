//
//  main.swift
//  Tag05
//
//  Created by Marianne Leal on 28.06.24.
//

// die main ist unser Eintrittspunkt/Startpunkt vom Programm.
// die main ist die einzige  Datei, die ausführbar ist, und den Play Button hat
// aus der main aus läuft das Programm, nur die main darf Funktionsaufrufe haben
// die main soll eigentlich möglichst schlank bleiben

import Foundation


print("Willkommen im Syntax Fitnessstudio!")

// Variablen / Konstanten anlegen
let userFirstName: String = "James Matthew"
var userLastName: String = "Washington Kennedy"
var userName: String = userFirstName + " " + userLastName
var userAge: UInt = 27
let userHeightInCm: Int = 185
let userHeightInM: Double = 1.85
var userWeight: Double = 90.9
var isMember: Bool = false

// neu zuweisen/überschreiben einer Variable
// James wird Mitglied
isMember = true

// Mathematische Operationen
// James gewinnt an Gewicht, weil er Muskelmasse aufgebaut hat
userWeight += 3 // in userWeight steht jetzt 93.9

userWeight /= 2
// oder: userWeight *= 0.5
print(userWeight) // wiegt jetzt 46.95

// Tupel mit Label
var james: (name: String, age: UInt, height: Double, weight: Double, isMember: Bool) = (userName,userAge,userHeightInM,userWeight,isMember)

print("Userdaten von James: \(james)")


// Zugriff auf Daten im Tupel mit . Punktoperator, Daten im Tupel aktualisieren
james.3 = 90.0
james.weight += 5.0
print("James wiegt jetzt \(james.weight) kg.")


// Groesse von m in cm umrechnen mit Typkonvertierung: nachkommastelle wird von Double zu Int abgeschnitten, deshalb: * 100 rechnen
// 1.85 * 100 = 185.0
// 185

var jamesHeightInCm: Int = Int(james.height*100) // oder james.2
print(jamesHeightInCm)

var jamesWeightAsString: String = String(james.weight) // "95.0"
// print(jamesWeightAsString + 10.0) // geht nicht mehr, String + Double ist nicht erlaubt



// String Operationen
// Länge von James Namen: .count

let jamesNameLength: Int = james.name.count
print("Länge von James Namen: \(jamesNameLength)")
print(james.name)
// ich will in James Namen alle ms mit ns ersetzen
// replacing gibt uns einen neuen String mit den ersetzten Buchstaben zurück
var janesName: String = james.name.replacing("m",with: "n").replacing("M",with: "N")
print(janesName)
james.name = janesName
print(james)

// maxReplacements: gibt an, wie viele m's wir ersetzen wollen. läuft von links nach rechts, dh nur das 1. n wird ersetzt
james.name = james.name.replacing("n",with: "m", maxReplacements: 1).replacing("N",with: "M")
print(james.name)


// Bonus
// startIndex:
let ersterIndex: String.Index = james.name.startIndex
// [ ] bedeuten: zugriff auf das element, das am index steht, das in den eckigen klammern steht
let firstLetter: Character = james.name[ersterIndex]


print("Erster Buchstabe von James: \(firstLetter)")
print("Erster Buchstabe von James: \(james.name.first!)")

// endIndex
// endIndex gibt uns leider nicht den letzten Index zurück, sondern den letzten Index + 1
let wrongLastIndex: String.Index = james.name.endIndex
//let wrongLastLetter: Character = james.name[wrongLastIndex] // FEHLER: String index is out of bounds
//print("Letzter Buchstabe von James: \(wrongLastLetter)")

print("Letzter Buchstabe von James: \(james.name.last!)")

// wir muessen uns abhilfe schaffen im umgang mit dem endIndex, da er immer out of bounds ist (also immer der eigentliche letzte index + 1). dazu benutzen wir die .index() Funktion, denn bei ihr können wir das before:-Label angeben, das sagt: nimm den index VOR dem endIndex

let jamesLastIndex: String.Index = james.name.index(before: wrongLastIndex)
print("Letzter Buchstabe von James: \(james.name[jamesLastIndex])")

print("Letzter Buchstabe von James: \(james.name[james.name.index(before: james.name.endIndex)])")

// .index() Funktion hat ein optionales Argument namens offsetBy. in dieses offsetBy kann man ein Int schreiben

let indexFourthLetter: String.Index = james.name.index(ersterIndex,offsetBy: 3)

print("4. Buchstabe in James Name: \(james.name[indexFourthLetter])")
//print("4. Buchstabe in James Name: \(james.name[3])")


// insert
// remove --> siehe beispiel Tag 4

// einen Teilstring aus einem String holen:
// holt alle Character EXKLUSIVE dem am angegebenen Index raus
print(james.name.substring(to: indexFourthLetter)) // Jam
