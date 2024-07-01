//
//  main.swift
//  Tag01-Vergleich-Verknüpfung-IfElse
//
//  Created by Marianne Leal on 01.07.24.
//

import Foundation

print("Willkommen zu Woche 2, Tag 1: Vergleichsoperatoren, Verknüpfungsoperatoren und If-Else!")

print("---Vergleichsoperatoren---")
// VERGLEICHSOPERATOREN
// nur mit den gleichen Datentypen nutzbar, ich kann nicht Int == String machen
// x == y - ist true, wenn x und y gleich sind
// x != y - ist true, wenn x und y NICHT gleich sind
// Vergleichsoperatoren mit Zahlen
let number10: Int = 10
var number2: Int = 2

let numberEqual: Bool = number2 == number10 // false, denn 2 == 10 stimmt nicht
let numbersNotEqua: Bool = number2 != number10 // true, denn 2 ist nicht gleich 10
let is10Bigger2: Bool = number10 > number2 // true, denn 10 ist größer als 2
let is2Bigger10: Bool = number2 > number10 // false, denn 2 ist nicht größer als 10
let is2BiggerEqual10: Bool = number2 >= number10 // false, denn 2 ist nicht groesser / gleich 10
let is2BiggerEqual2: Bool = number2 >= 2 // true, denn 2 ist grosser gleich 2

number2 = 10
let numbersStillNotEqual: Bool = number2 == number10 // true, denn 10 == 10 stimmt
let numbersStillEqual: Bool = number2 != number10 // false, denn 10 ist gleich 10, damit ist NICHT gleich falsch.
let number2GreaterEqual: Bool = number2 >= number10 // true. denn 10 ist groesser/gleich 10

// Wiederholung Typkonvertierung
let number10AsDouble: Double = Double(number10) // in beiden steht 10.0
let vergleich: Bool = number10AsDouble == Double(number10) // true
let vergleich2: Bool = number10AsDouble != Double(number10) // false



// Vergleichsoperatoren mit Strings
let string1: String = "Hallo"
let string2: String = "Moin"

let areStringsEqual: Bool = string1 == string2 // false, denn "Hallo" und "Moin" sind nicht gleich
let areStringsNotEqual: Bool = string1 != string2 // true, denn "Hallo" und "Moin" sind NICHT (=!) gleich


// Vergleichsopertoren mit Bool


// Zum suchen in einer Datei: Command + f

print("---Verknüpfungsoperatoren---")
// VERKNÜPFUNGSOPERATOREN
// Verknüpfungsoperatoren mit Bools

var isSunShining: Bool = true
let isNotRaining: Bool = true
let isSunNOTShining = !isSunShining
let isRaining: Bool = !isNotRaining

// &&: UND Operator, gibt nur true zurueck, wenn beide Seiten true sind
// ||: ODER Operator: gibt true zurueck, solange mind. eine Seite true ist. gibt nur false zurueck, wenn beide false sind.
// !: NICHT Operator: Negation, macht aus true false und aus false true. kehr jeweiligen Boolean ins Gegenteil um

let goSwimming: Bool = isSunShining && isNotRaining // true, weil beide seiten des && true sind

// 5 stunden sind vergangen, es ist kälter geworden, die sonne scheint nicht mehr

isSunShining = false

let goSwimmingLater: Bool = isSunShining && isNotRaining // false, weil nur die rechte seite des && true ist

let AreNumbersEqualWithVar: Bool = numbersStillEqual && 13 == 11 // false, denn numbersStillEqual ist false und 13 ist nicht = 11

// isSunShining ist false, isNotRaining ist true
let goOutside: Bool = isSunShining || isNotRaining // true, denn isNotRaining ist true und es reicht uns bei oder, wenn 1 Seite (1 Operand) true ist.

// Mac Tastatur: Option + 7 für ||
let bigComparison: Bool = isSunShining || ((goOutside || goSwimming) && (number10 >= number2)) // Gesamtpaket ergibt true

let notGoSwimming: Bool = !goSwimming // false


// Verknüpfungsoperatoren mit Vergleichsoperatoren
let temperature: Int = 25 // temperatur in celsiuis
let humidity: Int = 55 // luftfeuchtigkeit in prozent


let tempOver30: Bool = temperature > 30
let humidUnder50: Bool = humidity < 50

let isGoodWeatherWithVar: Bool = tempOver30 && humidUnder50 // exakt das gleiche wie die nächste Zeile:
let isGoodWeather: Bool = (temperature > 20) && (humidity < 50) // Wetter ist nicht gut, die Temperatur stimmt zwar aber es ist zu schwül

let isExtremeWeather: Bool = (temperature > 30) && (humidity > 60) // false, Wetter ist nicht extrem, da temperatur unter 30 ist und humidity auch unter 60 ist

let isNotHot: Bool = !(temperature < 30)


// VERZWEIGUNGEN
// Verwzweigung: if & else

// Shortcut für {}: Option + 8 oder 9

print("---Verzweigung: If-Else---")

// if else
let todaysTemp: Int = 30

if todaysTemp >= 25 {
    print("Das Wetter ist super, ganze \(todaysTemp) Grad!")
} else {
    print("Das Wetter ist nicht so schön, nur \(todaysTemp) Grad!")
}




// Verzweigung: else if
let ampel: String = "rot"

if (ampel == "grün"){
    print("Gib Gas!")
} else if (ampel == "rot"){
    print("Du musst bremsen, Ampel ist rot...")
} else if (ampel == "gelb"){
    print("Die Ampel ist gelb... auch lieber runter vom Gas")
} else {
    print("Dies ist keine Ampelfarbe...")
}

// hier geht der Code in jedem Fall weiter

let isUserLoggedIn: Bool = false

// Variante 1: im true fall Feed anzeigen
if isUserLoggedIn {
    print("Feed anzeigen...")
} else {
    print("Login anzeigen...")
}

// Variante 2: im false Fall Login anzeigen
if !isUserLoggedIn {
    print("Login anzeigen...")
} else {
    print("Feed anzeigen...")
}

// Beispiel aus den Folien:
let wahreBedingung = true
let falscheBedingung = false

// Beispiel dafür, dass else if ausgeführt wird.
if (falscheBedingung) {
    print("Der if Code Block wurde ausgeführt!")
} else if (wahreBedingung) {
    print("Der else if Code Block wurde ausgeführt!") // hier springen wir rein
} else {
    print("Der else Code Block wurde ausgeführt!")
}

