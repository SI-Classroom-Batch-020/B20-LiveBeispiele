//
//  main.swift
//  Tag04
//
//  Created by Marianne Leal on 26.06.24.
//

import Foundation


// Wiederholung

// Rechenoperationen
let number1: Int = 50
let number2: Int = 100
let number3: Double = 13.5
let number4: Double = 9.9

let result12: Int = number1 + number2 // hier gehen auch -, *, /, %
// Modulo: gibt den Rest einer Division zurück
let rest12: Int = 100 % 50
print("Der Rest von 100 / 50 = \(rest12)")



// Typkonvertierung: btw, die original Variable number1 wird NICHT verändert. Es wird eine Kopie von number1 erstellt, die ein Double ist. Dies Kopie kann in eine neue Variable gespeichert werden, oder direkt beim Rechnen verwendet werden.
let nr1AsDouble: Double = Double(number1)
let result14: Double = nr1AsDouble * number4


let nr3AsInt: Int = Int(number3) // 13.5 wird zu 13, Int() schneidet die Nachkommastelle ab
print(nr3AsInt)


let nr3AsIntAsDouble: Double = Double(nr3AsInt) // 13 wird zu 13.0
print(nr3AsIntAsDouble)

let nr3AsString: String = String(number3)
// nr3AsString ist ein String und NICHT rechenbar
// print(nr3AsString+13)

// wenn eine Zahl NICHT in einer Variable gespeichert ist, wird sie automatisch von Swift in den passenden Datentypen zum Rechnen umkonvertiert.
print(number3+13)



// Tupel: sind dazu da, Daten zu gruppieren
// 3 Variablen, die keinen Zusammenhang haben
let name: String = "Marianne"
let age: Int = 31
let city: String = "Lissabon"

// Zusammenhang erstellen: Tupel OHNE Label nutzen
var marianne: (String, Int, String) = ("Marianne", 31, "Lissabon")
print("Name in der Variable Marianne: \(marianne.0)")
print("Alter in der Variable Marianne: \(marianne.1)")
print("Stadt in der Variable Marianne: \(marianne.2)")

// Zusammenhang erstellen: Tupel MIT Label nutzen
var dagobertDuck: (name: String, alter: Int, stadt: String) = ("Dagobert", 71, "Entenhausen")
print("Name in der Variable Dagobert Duck: \(dagobertDuck.name)")
print("Alter in der Variable Dagobert Duck: \(dagobertDuck.alter)")
print("Stadt in der Variable Dagobert Duck: \(dagobertDuck.stadt)")

// Dagobert zieht um nach Gotham City
dagobertDuck.stadt = "Gotham City"
print("Neue Stadt in der Variable Dagobert Duck: \(dagobertDuck.stadt)")

// ganze Tupel ohne Label ausdrucken
print(marianne)
// ganze Tupel mit Label ausdrucken
print(dagobertDuck)

print("---------")


print("Hello, World! Heute geht es um Characters und Strings")

// Character: quasi ein String mit nur einem Zeichen
let buchstabe: Character = "A"

let numAlsBuchstabe: Character = "2"

let symbol: Character = "!"

let emoji: Character = "😊"

// Chars können leider nicht mit dem + verkettet werden! wir wenden Typkonvertierung an
var charMitChar: String = String(buchstabe) + String(emoji)

var tupelWithChar: (Character, String, Int) = ("A", "Apfel", 1)

// mehrzeiliger String

// 3 Anführungsstriche """, man darf nicht direkt in der 1. Zeile hinter den """ anfangen, zu schreiben, sondern muss in die nächste Zeile gehen
let longString: String = """


Erste Zeile
Zweite Zeile
Dritte Zeile, ich kann einfach Enter drücken und so Mehrzeiler machen
"""

print(longString)

// \n im String bedeutet: Zeilenumbruch, steht für newLine
let normalString: String = "Erste Zeile \(number1) \n\n\nZweite Zweile \nDritte Zeile"
print(normalString)


/*
 \0 – Null character (that is a zero after the slash)
 \\ – Backslash itself.  Since the backslash is used to escape other characters, it needs a special escape to actually print itself.
 \t  – Horizontal tab
 \n – Line Feed
 \r  – Carriage Return
 \”  – Double quote.  Since the quotes denote a String literal, this is necessary if you actually want to print one.
 \’  – Single Quote.  Similar reason to above.
 */

// Interpolation: in dem \() findet Code Logik statt, zB Variablenzugriff, kann aber auch andere Logik sein
print("In diesem String werden Variablen interpoliert mit der Syntax \\(variablenName), zB \(number1)")
print("Rechnung direkt im String mit Interpolation: \\(1+1) -> \(1+1)")
print("Peter sagt \"Hallo!\" ")

// Verkettung mit +
let hallo: String = "Hallo"
var concatString: String = "Peter " + "sagt" + " " + hallo // Peter sagt Hallo!
print(concatString)
concatString += " und hat gute Laune" // Peter sagt Hallo! und hat gute Laune
print(concatString)

// Zugriff mit Index
let swiftString: String = "Swift"

// Syntax: stringName[ index ] bedeutet: aus der Variable stringName wird der Buchstabe am Index index gefischt.
let ersterCharacter: Character = swiftString[swiftString.startIndex] // Gefundenes Zeichen: S.
print("Erster Buchstabe mit text[startIndex] gefunden: \(ersterCharacter)") // Erster Buchstabe mit text[startIndex] gefunden: S


// print("Erster Buchstabe mit text[startIndex] gefunden: \(text[0])")

// StartIndex ist eine Eigenschaft, die jeder String hat. das heißt, wenn ich an den startIndex eines Strings rankommen will, muss ich zwangsweise davor den Namen des Strings schreiben, dessen index ich haben möchte
// mit den [ ] kann ich auf den Inhalt zugreifen, der an der Stelle steht, die in den [ ] angegeben ist
let firstChar: Character = swiftString[swiftString.startIndex]


// string.index() mit before-Label : gibt uns den index VOR dem in der Klammer gegebenen index aus
let index = swiftString.index(before: swiftString.endIndex) // in endIndex steht NICHT der letzte Index, sondern ein Index, der eine position GROESSER ist als der tatsächliche letzte Index.

let letzterCharacter: Character = swiftString[swiftString.index(before: swiftString.endIndex)] // Gefundenes Zeichen: t.

print("Letzter Buchstabe in \(swiftString) mit \\(swiftString.index(before: swiftString.endIndex) gefunden: \(letzterCharacter)")

// NEUER STOFF, NICHT IN DER VORLESUNG GEMACHT:
// an den 2. Buchstaben kommen: .index() mit dem after-Label: nimmt den index nach (after) dem startIndex
let secondIndex = hallo.index(after: hallo.startIndex)
let secondCharacter = hallo[secondIndex]
print("2. Buchstabe in 'Hallo': \(secondCharacter)") // Ausgabe: w

// AUF EINEN BESTIMMTEN INDEX VIA INTEGER-ANGABE ZUGREIFEN: mit offsetBy-Label.
// ich will auf den 4. Buchstaben von hallo, also das 2. 'l' zugreifen.
// dadurch, dass die Buchstaben bei 0 anfangen zu zählen, ist der Index vom 4. Buchstaben also 3.
// diese 3 können wir unter dem offsetBy-Label angeben.
let index2ndL = hallo.index(hallo.startIndex, offsetBy: 3)
print("4. Buchstabe in 'hallo': \(hallo[index2ndL])")


// Länge eines String: .count()
print("Anzahl Buchstaben im Wort 'Swift' (swiftString): \(swiftString.count)")
let halloLaenge: Int = hallo.count // 5 Buchstaben im String 'hallo'
print(hallo.count) // druckt 5
print(halloLaenge) // druckt 5
print(concatString.count)

// Elemente hinzufügen: insert()
// text muss var sein, da wir ihn verändern
var text = "Hallo"
// Gibt am Ende aus: Hallo!
// dadurch, dass in endIndex der Index NACH dem tatsächlichen letzten Index steht, wird das ! an diesen Index geschrieben
// also einfach gesagt: ans Ende gehängt
// insert(das, was in den String soll, at: Stelle, an die es soll)
text.insert("!", at: text.endIndex)
print(text)

// Char irgendwo in der Mitte einfuegen, nicht am Ende oder Anfang:


// Elemente entfernen: remove()
// ! aus Hallo! wieder entfernen:
// weil endIndex nicht der richtige letzte Index ist, sondern dahinter liegt, müssen wir dafür sorgen, dass wir remove den richtigen Index geben
// das machen wir, indem wir in der Variable letzterIndex den index BEFORE dem endIndex speichern. dann koennen wir einfach letzterIndex in remove geben.
let letzerIndex = text.index(before: text.endIndex)
text.remove(at: letzerIndex)
print(text)


// Elemente ersetzen: replacing()
// wir schauen das wort Hallo an
// ich will "H" ersetzen mit (with) "h"
print(text.replacing("H", with: "h"))


// ich will 1 l in "hallo" mit einem L ersetzen, sodass haLlo rauskommt:
// wir geben ein weiteres Argument an: maxReplacements: das gibt an, wie viele von den ls wir maximal ersetzen wollen
print(text.replacing("l", with: "L",maxReplacements: 1))



