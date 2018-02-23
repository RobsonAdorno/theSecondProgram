//: Playground - noun: a place where people can play

import UIKit

//var str = "Hello, playground"
//
////Int, Float, Double, String, Characterer, Bool
//
//var age:UInt = 89 // -> Unsigned Int, inteiros nao negativos
//
////Float -> 32bit
//
//var dolar: Float = 3.5
//
////Double -> 64bit
//
//let number = 10000.0000002
//
////Character
//var gender: Character = "F"
//
//
//let text = """
//Fazendo um teste de interpolacao de Strings.
//Verificando novos recursos do swift 4, bla bla bla.
//
//                FIM!!
//"""
//print(text)
////----------------------------------Opcional-------------------------------------------------------
//
//var idade:Int? //-> Declarando uma opcional
//idade = 2342734824834
//print(idade!) // Desembrulhando a opcional (unwrapper), o risco de fazer isso é a aplicacao estourar, caso venha um nulo da opcional
//
////----------------------------------Opcional binding-------------------------------------------------------
//
//if let idadeCorreta = idade{
//    print("Modo certo de operar uma opcional \(idadeCorreta)")
//}else{
//    print("Essa mensagem aparecerá caso a aplicacao retornar um nulo")
//}
//
////----------------------------------Nil Coaliscing Operator-------------------------------------------------------
//
//let number:String = "578-A"
//let addressNumber2 = Int(number) ?? 0
//
//print(addressNumber2)

//Caso a constante seja 578 apenas, ele printa 578 porque ele consegue converter, caso seja 578-A, ele retornara 0

//----------------------------------Implicit Unwrapped Optionals--------------------------------------------------------------
//
//var nome:String!
//
//print(nome)

//Aqui vc garante que a variavel voltara algum resultado, nesse caso a aplicacao explodiria porque a String esta nula
//----------------------------------Operators-------------------------------------------------------

//Operadores Binario
//var nome = "Robson" //Você tem uma variavel e uma atribuicao
//var (name,age) = ("Robson", 23)
//print (name, age)

//Operadores Aritimeticos

//Operadores Compostos: Atribui e opera ao mesmo tempo
//var age1:Int?
//var age2:Int?
//
//age1 += age2
//age1-= age2
//age1*= age2
//age1/= age2
//age1 %= age2

//Operadores de comparacao: Fazem comparacao entre valores (Retornam sempre um Bool)
//Maior que: >
//Menor que: <
//Menor ou Igual: <=
//Maior ou Igual: >=
//Diferente: !=
//Operador de Igualdade: ==
//Operador de atribuicao: =


//Operadores Logico
//OU : ||
//E : &&

//Operador ternário

//var medio = 6.5
//var resultEnding = (medio >= 7.0) ? "Aprovado":"Reprovado"
//Ele é ternário porque faz atribuicao da e ainda da 2 opcoes de retorno da variavel
//var number = 11
//var verification = (number % 2 == 0) ? "Par":"Ímpar"

//----------------------------------Estruturas Condicionais-------------------------------------------------------

//var isVeryCool = true
//
//if isVeryCool{
//    print("Vou pegar o jaco")
//}else{
//    print("Não preciso do jaco")
//}

//let atuacion = (isVeryCool == false) ? "Ta frio, vou pegar o jaco":"Nao preciso do Jaco"
//print(atuacion)

//var letter = "f"
//
//switch letter{
//case "a", "e", "i", "o", "u":
//    print("asdasd")
//default:
//    print("bla")
//}
//-----------------------------------------Collections--------------------------------------------------------------------------
//
//
//var vetor = ["ASD","DECA","ASFEF"]
//
//var teste:[Int] = [1,2,3,4,5]
//teste[0...2] = [12,2,3]
//
//if let first = teste.first{
//    //print(first)
//}
//
//teste.insert(32, at: 5)
//
//if teste.contains(12){
//    print("Tem esse numero")
//}else{
//    print("Nao tem")
//}
//
//-----------------------------------------Dictionary Collection--------------------------------------------------------------------------
//
//var state = ["AC": "Acre",
//    "BA": "Bahia",
//    "CE": "CEARA"
//]
//print(state.count)
//
//let keys = Array(state.keys)
//
//print(keys)
//
//let value = Array(state.values)
//print(value)
//-----------------------------------------Set e Tuplas--------------------------------------------------------------------------

//Collection nao ordenada de objetos do mesmo tipo, que nao podem se repetir

//var movies:Set<String> = ["HUE", "ALA", "ESPACONAVE"]

//movies.insert("AHHHHHH")
//
//movies.insert("AHHHHHH")
////Aqui está o exemplo de que nao podem se repetir as mesmas strings
////print(movies)
//
//for i in movies{
//   // print(i)
//}
//
//if movies.contains("ALA"){
//    print("Tem o ALA")
//}else{
//    print("Nao tem nada meuu!!")
//}

//var myWifeMovies: Set<String> = ["EAEAEAEAE", "CARAACACACC", "HAHAHAHHAHAHAHAH", "AESEASFAEFA"]
//
//let favoriteMovies: Set<String> = movies.intersection(myWifeMovies)
//let allMovies: Set<String> = movies.union(myWifeMovies)
//let UAS : Set<String> = movies.subtracting(myWifeMovies)
//


//------tuplas -> Noa eh uma collection mas ela agrupa tambem multiplos tipos em um unico valor composto

//let address = ("AHSDHSUDA", 23, "asdasdd")
//
//print(address.1)
//
//
//let address: (type:String, name:String, number:Int) = ("ASDSDA", "ASDASDASDDDDD", 34)
//
//print(address.name)
//
//let (tipo, nome, numero) = address
//
//print(numero)

//-----------------------------------------Controle de Fluxo--------------------------------------------------------------------------

//var vetor = [1: "DSADAD", 2: "DASDASDADDDDD", 3: "ëfeffefefe"]

//for i in vetor{
//    print(i.value)
//}
//
//for (index,name) in vetor{
//    print(index)
//}


//import Foundation
//
//var megaSena: [Int] = []
//
//while megaSena.count < 6{
//    let number = Int(arc4random_uniform(61))
//    if !megaSena.contains(number){
//    megaSena.contains(number)
//    megaSena.append(number)
//}
//}
//print(megaSena.sorted())

//var tentativas = 0
//var numberRadom = 0
//
//repeat{
//    tentativas += 1
//    numberRadom = Int(arc4random_uniform(11))
//}while numberRadom != 6
//    print("Achou o 6 com \(tentativas) tentativas")


//--------------------------------------------------Enumeradores(Enum)----------------------------------------------------------------

 //Enum serve para fixar opcoes de uma variavel, tipo braco de uma pessoa

//enum peopleArm: String {
//    case rigth = "Direita",left = "Esquerda",ambidextrous = "AmbiDestro",nothing = "Nada"
//}
//var situationArmPeople = peopleArm.rigth
//
//
//switch situationArmPeople {
//case .rigth:
//    print("This person is right handed")
//case .left:
//    print("This person is left handed")
//case .ambidextrous:
//    print("This person is ambidextrous")
//case .nothing:
//    print("This person no hand")
//}
//print(situationArmPeople.rawValue)

//Valores associados (Associated Values)

//
//enum peopleArm {
//    case rigth(String),left(String),ambidextrous(String),nothing(String)
//}
//var situationArmPeople:peopleArm = .left("Tradução: Essa pessoa é canhota")
//
//switch situationArmPeople {
//case .rigth(let direita):
//    print("This person is right handed \(direita)")
//case .left(let esquerda):
//    print("This person is left handed \(esquerda)")
//case .ambidextrous(let ambidestro):
//    print("This person is ambidextrous \(ambidestro)")
//case .nothing(let nada):
//    print("This person no hand \(nada)")
////}

//-----------------------------------------------------Struct----------------------------------------------



