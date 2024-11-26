

let number1 = document.querySelector('#number1')
let number2 = document.querySelector('#number2')
let calculer = document.querySelector('#calculate')
let resultHtml = document.querySelector('#result')
console.log (resultHtml)

console.log (number1, number2, calculate);



function makeCalcule(){
let nombre1 = parseInt(number1.value);
let nombre2 = parseInt(number2.value);
    let resultat = nombre1 + nombre2;

let messageAddition = `<p>le resultat de l'addition de ${nombre1} et de ${nombre2}, est de ${resultat}</p>`;
resultHtml.innerHTML = messageAddition;

resultat = nombre1 - nombre2;
 let messageSoustraction = `<p> le resultat de la soustraction de ${nombre1} et de ${nombre2}, est de ${resultat} </p>`;
resultHtml.innerHTML += messageSoustraction;

resultat = nombre1 * nombre2;
let messageMultiplication = `<p>le resultat de la multiplication de ${nombre1} et ${nombre2}, est de ${resultat}</p>`;
resultHtml.innerHTML += messageMultiplication;

resultat = nombre1 / nombre2;
let messageDivision = `<p>le resultat de la division de ${nombre1} et de ${nombre2}, est de ${resultat}</p>`;
resultHtml.innerHTML += messageDivision;
}


calculer.addEventListener("click" ,makeCalcule)



























//console.log("hello wolrd")

//let userName = "Crabico" //string
//let age = 18; //int
//let size = 1.80 //float
//let isCool = true; //bool

//console.log("Bonjour "+userName)

/*let nombre1 = parseInt(prompt("Donnez un premier nombre"));

while (isNaN(nombre1)) {
    nombre1 = parseInt(prompt("On t'as dit EN CHIFFRE(S)"));
}

let nombre2 = parseInt(prompt("Donnez un deuxieme nombre")); 
while (isNaN(nombre2)) {
    nombre2 = parseInt(prompt("On t'as dit EN CHIFFRE(S)"));
}*/

/*let nombre1 = parseInt(prompt("Donnez un premier nombre"));

while (isNaN(nombre1)) {
    nombre1 = parseInt(prompt("On t'as dit EN CHIFFRE(S)"));
}

let nombre2 = parseInt(prompt("Donnez un deuxieme nombre")); 
while (isNaN(nombre2)) {
    nombre2 = parseInt(prompt("On t'as dit EN CHIFFRE(S)"));
}*/

/*
if(isNaN(nombre1)) {
    console.log("Il faut écrire des chiffres, pas en lettres. T'es con.")


} else {


    let nombre2 = parseInt(prompt("Donnez un deuxieme nombre")); 

    while (isNaN(nombre2))
        nombre2 = prompt("On t'as dit EN CHIFFRE(S)") }
    
    //if(isNaN(nombre2)) {
        console.log("Il faut écrire des chiffres, pas en lettres. T'es con.")


    } else {

        let resultat = nombre1 + nombre2;
        let messageAddition = `<p>le resultat de l'addition de ${nombre1} et de ${nombre2}, est de ${resultat}</p>`;
        resultHtml.innerHTML = messageAddition;

        resultat = nombre1 - nombre2;
         let messageSoustraction = `<p> le resultat de la soustraction de ${nombre1} et de ${nombre2}, est de ${resultat} </p>`;
        resultHtml.innerHTML += messageSoustraction;

        resultat = nombre1 * nombre2;
        let messageMultiplication = `<p>le resultat de la multiplication de ${nombre1} et ${nombre2}, est de ${resultat}</p>`;
        resultHtml.innerHTML += messageMultiplication;

        resultat = nombre1 / nombre2;
        let messageDivision = `<p>le resultat de la division de ${nombre1} et de ${nombre2}, est de ${resultat}</p>`;
        resultHtml.innerHTML += messageDivision;

        let resultat = nombre1 + nombre2;
        let messageAddition = `<p>le resultat de l'addition de ${nombre1} et de ${nombre2}, est de ${resultat}</p>`;
        resultHtml.innerHTML = messageAddition;

        resultat = nombre1 - nombre2;
         let messageSoustraction = `<p> le resultat de la soustraction de ${nombre1} et de ${nombre2}, est de ${resultat} </p>`;
        resultHtml.innerHTML += messageSoustraction;

        resultat = nombre1 * nombre2;
        let messageMultiplication = `<p>le resultat de la multiplication de ${nombre1} et ${nombre2}, est de ${resultat}</p>`;
        resultHtml.innerHTML += messageMultiplication;

        resultat = nombre1 / nombre2;
        let messageDivision = `<p>le resultat de la division de ${nombre1} et de ${nombre2}, est de ${resultat}</p>`;
        resultHtml.innerHTML += messageDivision;
    }*/


//for(let i = 1; i<=10; i++) {
 //   console.log(`${i} - bonjour`)} 