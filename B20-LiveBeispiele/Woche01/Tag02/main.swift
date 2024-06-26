//
//  main.swift
//  Tag02
//
//  Created by Marianne Leal on 21.06.24.
//

// Foundation ist ein Framework, das grundlegende Klassen und Dienste bietet, sollte an den Anfang jeder Datei
import Foundation

// print: druckt den Inhalt der ( ) in die Konsole
print("Willkommen, Batch 20!")
print("Jetzt starten wir mit Programmieren...")
print("Los geht es mit Variablen und Datentypen!")

// Datentyp Int: Ganze Zahlen ohne Komma
var number: Int = 10
print(number) // es wird 10 gedruckt

// Ints duerfen negativ sein
number = -3
print(number) // es wird -3 gedruckt

number = 0
print(number) // es wird 0 gedruckt

// Datentyp String: Datentypen werde NUR BEIM ERSTEN ANLEGEN dazu geschrieben, ansonsten wäre es doppelt gemoppelt. der PC weiss ab jetzt genau Bescheid, dass firstName ein String ist, wir muessen es ihm nicht nochmal sagen.
var firstName: String = "Harry"
print(firstName) // druckt Harry aus

var lastName: String = "Potter"
print(lastName) // druckt Potter aus

firstName = "Ron"
print(firstName) // druckt Ron aus

lastName = "Weasley"
print(lastName)// druckt Weasley aus

// man kann mehrere Variablen nacheinander/gleichzeitig ausdrucken, indem man sie mit einem , trennt
print(firstName,lastName,number) // druckt Ron Weasley 0


// das hier geht nicht: ich kann in eine Variable immer nur 1 Wert von 1 bestimmten Datentypen schreiben..
// anzahlSteps ist ein Integer (eine ganze Zahl), "Steps" wäre ein String. sind also unterschiedlich und man darf eh nur 1 Wert reinschreiben
// var anzahlSteps = 20000, "Steps"
// Datentyp UInt: Ganze Zahlen ohne Komma, die nicht negativ sein duerfen
var anzahlSteps: UInt = 10000
// das hier geht , lediglich zum Ausdrucken die steps drucken und dann den String "Steps" dahinter setzen
print(anzahlSteps,"Steps") // druckt 10000 Steps
// anzahlSteps = -10 // nicht moeglich, da in UInt keine negative Zahl darf.



// String Interpolation: Andere Variablen innerhalb eines Strings benutzen mit Hilfe von \(variablenName)
// 10000 Steps
var anzahlStepsMitSteps: String = "\(anzahlSteps) Steps"
print(anzahlStepsMitSteps) // druckt 10000 Steps

var greeting: String = "Hi, mein Name ist \(firstName) \(lastName)"

print(greeting) // druckt "Hi, mein Name ist Ron Weasley"

let string: String = "In den String koennen auch Sonderzeichen !%@$#&*()^"

var fullName: String = "\(firstName) \(lastName)" // "Ron Weasley"

var greeting2: String = "Hi, ich bin \(fullName) und ich bin ein Zauberer" // druckt "Hi, ich bin Ron Weasley und ich bin ein Zauberer"
print(greeting2)

// Datentyp Double: Zahlen MIT Nachkommastelle (im Gegensatz zu Int: ganze Zahlen ohne Komma, bzw. PUNKT wird statt Komma geschrieben)
let pi: Double = 3.14
// pi = 3.15 // Cannot assign to value: 'pi' is a 'let' constant
print("Ich drucke diesen String, der das Double Pi ( \(pi) ) beinhaltet direkt aus.")
let negativeDouble: Double = -9.99

// alter als UInt zu schreiben, das nicht negativ sein darf, weil man ja nicht -22 Jahre alt sein kann
var alter: UInt = 22
//alter = "22"

var result: UInt = 99 + anzahlSteps // 99 + 10000 hier wuerde also 10099 reingeschrieben werden
var result1: Int = 99 + 1 // 100


// Datentyp Bool: Wahrheitswert true oder false
var istSonnig: Bool = false
// naechster Tag, es regnet
istSonnig = true
print("Ist es gerade sonnig? \(istSonnig)") // druckt "Ist es gerade sonnig? true
