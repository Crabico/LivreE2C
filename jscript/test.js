//console.log("hello wolrd")

let userName = "Crabico" //string
//let age = 18; //int
//let size = 1.80 //float
//let isCool = true; //bool

console.log("Bonjour "+userName)

let resultHtml = document.querySelector('#result')
console.log (resultHtml)


let nombre1 = parseInt(prompt("Donnez un premier nombre"));

while (isNaN(nombre1))
    nombre1 = prompt("On t'as dit EN CHIFFRE(S)")

if(isNaN(nombre1)) {
    console.log("Il faut écrire des chiffres, pas en lettres. T'es con.")


} else {


    let nombre2 = parseInt(prompt("Donnez un deuxieme nombre")); 

    while (isNaN(nombre2))
        nombre2 = prompt("On t'as dit EN CHIFFRE(S)")
    
    if(isNaN(nombre2)) {
        console.log("Il faut écrire des chiffres, pas en lettres. T'es con.")


    } else {



        let resultat = nombre1 + nombre2;
        let messageAddition = `<p>le resultat de l'addition de ${nombre1} et de ${nombre2}, est de ${resultat}</p>`;
        resultHtml.innerHTML += messageAddition;

        resultat = nombre1 - nombre2;
        let messageSoustraction = `le resultat de la soustraction de ${nombre1} et de ${nombre2}, est de ${resultat}`;

        resultat = nombre1 * nombre2;
        let messageMultiplication = `le resultat de la multiplication de ${nombre1} et ${nombre2}, est de ${resultat}`;

        resultat = nombre1 / nombre2;
        let messageDivision = `le resultat de la division de ${nombre1} et de ${nombre2},gg est de ${resultat}`;
    }
}

//for(let i = 1; i<=10; i++) {
 //   console.log(`${i} - bonjour`)} 