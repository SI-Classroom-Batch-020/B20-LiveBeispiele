//
//  main.swift
//  Tag03
//
//  Created by Marianne Leal on 26.06.24.
//

import Foundation

print("Willkommen zu Tag 3! Heute geht es um mathematische Operationen, Tupel und Typkonvertierung...")


// Wiederholung: Variablen / Konstanten, Datentypen
// Variablen und Konstanten speichern Daten, die man über den Variablennamen erreichen kann.
// Variablen sind veränderbar, Konstanten bleiben konstant, also gleich, der Inhalt wird nach dem 1. Anlegen nicht verändert

// Konstante mit Datentyp String: Datentypen werden immer groß geschrieben also auch Double, Int, Bool
let birthDate: String = "01.01.2001"

// Variable initialisieren: direkt mit Wert anlegen
var age: UInt = 90 // Int ginge, besser: UInt, alter ist immer positiv, man kann nicht -10 Jahre alt sein
// age = -3 // geht nicht, darf nicht negativ sein

print(90+10) // druckt 100, die 90 ist aber nicht dieselbe wie in age gespeichert ist

// wenn ich age verändern möchte, muss ich über den Variablennamen gehen

age = age + 10 // neuen Wert zuweisen; ist das gleiche wie age = 100
// alternativ: age += 10
print("Age: \(age)")

// Variable deklarieren: Variable anlegen, aber noch keinen Wert reinschreiben

var name: String

// print(name) // geht nicht, name ist noch nicht initialisiert. kann erst genutzt werden, wenn ein wert reingeschrieben wird

// irgendwann später werden Namendaten aus dem Internet geladen
name = "Jennifer"

// Datentyp Double: Kommazahl
let pi: Double = 3.14

// Datenbool Bool: Wahrheitswert
var istMittwoch: Bool = true





// Rechenoperationen

// Addition: Plus +
// addition hat den Wert 2
// geht auch mit Doubles
let addition: Int = 1 + 1
print(addition) // druckt 2

// fullName hat den Wert “Peter Pan”, Strings werden mit + verkettet ('konkateniert')
let ganzerName: String = "Peter" + " " + "Pan"
print(ganzerName) // druckt Peter Pan

var ergebnis: Int = addition + addition + 13 // in ergebnis steht 17
print("Ergebnis von \(addition) + \(addition) + 13 = \(ergebnis)")
print("Kleine Rechnung im String: 4+4 = \(4+4)")
// Tastenkombi \: shift + option + 7


// Subtraktion: Minus -
let ganzeStrecke: Double = 100.0 // wir muessen noch 100 km fahren
var gefahreneStrecke: Double = 50.5 // sind bereits 50.5 km gefahren
var restStrecke: Double = ganzeStrecke - gefahreneStrecke
print("Wir muessen noch \(restStrecke) km fahren!")

// Multiplikation: Mal *
let radius: Double = 3
var kreisUmfang: Double = pi * radius * radius

// Division: Geteilt /
let weiblicheTN: Double = 2/25 // 2 von 25 sind Frauen
print(weiblicheTN) // druckt 0.08, bedeutet: 8% unserer TN sind weiblich

// Prozentrechnung
// 1.0 - 100%
// 0.8 - 80%
// 0.08 - 8%




// Modulo: gibt den Rest einer Division aus. zB 4 % 3 = 1, weil die 3 1x in die 4 passt, aber 1 übrig bleibt
// ergebnis1 hat den Wert 2
let ergebnis1 = 5 % 3

// ergebnis2 hat den Wert 3
let ergebnis2 = 7 % 4

// ergebnis3 hat den Wert 1
let ergebnis3 = 3 % 2

//Rabatt bei jedem 5ten Einkauf. 
// bei jedem 5. Einkauf kommt bei der Modulo Rechnung ein Rest von 0 raus
var einkaufsNummer: Int = 9
let rabattMoeglich: Bool = einkaufsNummer % 5 == 0 // false, da 9 % 5 = 4, nicht = 0 ist
// neue Boolean Syntax: x == y. wenn x = y ist, kommt true raus. wenn x != y ist, kommt false raus. ! bedeutet "nicht"

//Fahrpause nach 100km: wenn bei streckeGefahren % 100 = 0 rauskommt, machen wir Pause. wenn nicht, dann nicht
var streckeGefahren: Int = 200
let pauseEinlagen: Bool = streckeGefahren % 100 == 0 // true, Pause machen

//Login-Bonus einmal die Woche (jeder 7. Tag)
var eingeloggteTage: Int = 6
let loginBonus: Bool = eingeloggteTage % 7 == 0 // false, kein Bonus



// Kurzschreibweise: neues Ergebnis innerhalb der selben Variable direkt speichern
var zahl = 1

zahl = zahl + 5 // in zahl steht 6
print(zahl)
zahl += 5 // ist das Gleiche, in zahl steht jetzt 11
print(zahl)
zahl = zahl - 2 // zahl ist jetzt 9
print(zahl)
zahl -= 2 // ist das Gleiche, zahl ist jetzt 7
print(zahl)

zahl = zahl * 10 // in zahl steht jetzt 70
print(zahl)
zahl *= 10 // ist das Gleiche, zahl ist jetzt 700
print(zahl)







// unterschiedliche Datentypen verrechnen: das Ergebnis ist der genauere Datentyp, also Double




// Tupel
// gestern gelernt: In eine Variable kann nur 1 Wert des gleichen Datentyps
// Tupel machen es möglich!

let person: (String, Int) = ("Luisa", 21)
print(person)

// wir koennen die Elemente im Tupel auch labeln/benennen
let personBenannt: (String,Int) = (name: "Maike", alter: 19)
print(personBenannt)

let auto: (String, Double, Bool) = ("Cabrio", 155.55, false)
print(auto)

var autoModell: String = "Carbio"
var autoKmh: Double = 155.55
var autoGangSchaltung: Bool = false

print("Mein Auto hat folgende Daten: \(autoModell), \(autoKmh), \(autoGangSchaltung)")
 // 1000 zeilen code

// Tupel gruppieren Daten, der Zusammenhang wird auf den 1. Blick klar
print("Mein Auto hat folgende Daten: \(auto.0), \(auto.1), \(auto.2)")


var autoBenannt: (model: String, kmh: Double, gangSchaltung: Bool) = (model: "BMW",kmh: 195.55,gangSchaltung: true)
print(autoBenannt)
print("Mein Auto hat folgende Daten: \(autoBenannt.model), \(autoBenannt.kmh), \(autoBenannt.gangSchaltung)")

// wir können auch ein Tupel erstellen, das ein Tupel beinhaltet
let tupelGeschachtelt: (String, Int, (String,Int)) = ("Magda", 30, ("Betty", 5))
print(tupelGeschachtelt)


autoBenannt.model = "VW Bus"
print(autoBenannt.model)
print(autoBenannt)

var neuesAuto = autoBenannt
neuesAuto.model = "Porsche"
print(neuesAuto)

var nochNeueresAuto: (model: String, kmh: Double, gangSchaltung: Bool) = (model: "BMW",kmh: 195.55,gangSchaltung: true)

print(nochNeueresAuto.model)
print(autoBenannt.model)


var konto: (inhaber: String, nr: Int, guthaben: Double) = ("Dagobert Duck", 1234567, 500.0)




// Typkonvertierung
// Rechnen mit versch. Datentypen, die NICHT in Variablen sind: Konvertierung geschieht automatisch
let beispiel2: Double = 3.14 + 2

// Rechnen mit versch. Datentypen, die in Variablen gespeichert sind: Int und Double
// Konvertierung geschieht NICHT automatisch
// Double(x) bedeutet: konvertiere das x in den Klammern zum Datentyp außerhalb der Klammern, in diesem Fall Double
let beispielErgebnis: Double = pi + Double(addition)
print(beispielErgebnis)

// String, Double, Integer sind alle ineinander konvertierbar und umgekehrt
// bei String zu Zahlen gibt es eine Besonderheit: Optionals
let stringNr: String = "13"
let intNr: Int = 13
print(stringNr+String(intNr)) // druckt 1313
//print(Int(stringNr)+intNr) // druckt theoretisch 26, aber: String konvertieren zu Zahlen (Int und Double) ist nicht so einfach moeglich... machen wir in W4.

let preisInEuro: Double = 1.99

// Konvertiert Double zu Int. Ergebnis ist 1, da Int die Nachkommastelle abschneidet
let gerundeteNummer: Int = Int(preisInEuro) // 1.23 wird zur 1
print("Double \(preisInEuro) zu Int \(gerundeteNummer)")

// Konvertiert Double zu String
let preisAlsText: String = String(preisInEuro) // 1.23 wird zu "1.23"

// Konvertiert Int zu String
let nummerAlsText: String = String(gerundeteNummer) // 1 wird zu "1"

// lernen wir erst in W4 kennen: Optionals.
let stringAlsInt: Int? = Int(nummerAlsText)




