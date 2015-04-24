var user = {}
var responses = []

function questionName() {
  var name = prompt('What is your name?')
  user.name = name.charAt(0).toUpperCase() + name.slice(1);
}
questionName(); // don’t forget to call the function!

function question1() {
  var firstQuestion = prompt('Does null === 0 ? (Yes or No)')
// why do you need to convert the answer to lowercase?
  if (firstQuestion.toLowerCase() === 'yes') {
    firstQuestion = true
  } else if (firstQuestion.toLowerCase() === 'no') {
    firstQuestion = false
  } else {
// what if the user writes something other than yes or no? 
// they will have to answer the question again
    alert("Please answer either Yes or No");
    return question1();
  }
  responses.push(firstQuestion); // add the true or false value to the responses array
}
question1(); //llamada a la función

function question2() {
  var secondQuestion = prompt('Cuál de los siguientes no es un planeta: Neptuno, Cassini o Venus');
  secondQuestion = secondQuestion.toLowerCase();
  switch (secondQuestion) {
  	case "neptuno":
        secondQuestion = false
        break;
    case "cassini":
        secondQuestion = true
        break;
    case "venus":
        secondQuestion = false
        break;
    default:
        return alert("Por favor, elige una de las tres opciones") + question2();
  }
  responses.push(secondQuestion);
}
question2(); //llamada a la función

function question3() {
  var thirdQuestion = prompt('¿Escribió Benito Pérez Galdós "La Celestina"?')
// why do you need to convert the answer to lowercase?
  if (thirdQuestion.toLowerCase() === 'no') {
    thirdQuestion = true
  } else if (thirdQuestion.toLowerCase() === 'yes') {
    thirdQuestion = false
  } else {
    alert("Please answer either Yes or No"); //Si no escriben ni "yes" ni "no"
    return question3();
  }
  responses.push(thirdQuestion); // add the true or false value to the responses array
}
question3(); //llamada a la función

function question4() {
	var fourthQuestion = prompt('¿Son 17 y 19 números primos? (Yes or No)')
// why do you need to convert the answer to lowercase?
  if (fourthQuestion.toLowerCase() === 'yes') {
    fourthQuestion = true
  } else if (fourthQuestion.toLowerCase() === 'no') {
    fourthQuestion = false
  } else {
    alert("Please answer either Yes or No"); //Si no escriben ni "yes" ni "no"
    return question4();
  }
  responses.push(fourthQuestion); // add the true or false value to the responses array
}
question4(); //llamada a la función

function question5() {
  var fifthQuestion = prompt('Cuál de los siguientes números son cuadrados perfectos: 176, 576 o 969');
  fifthQuestion = fifthQuestion.toLowerCase();
  switch (fifthQuestion) {
  	case "176":
        fifthQuestion = false
        break;
    case "576":
        fifthQuestion = true
        break;
    case "969":
        fifthQuestion = false
        break;
    default:
        return alert("Por favor, elige una de las tres opciones") + question5();
  }
  responses.push(fifthQuestion);
}
question5(); //llamada a la función


function evaluate(responsesArray) {
// declare two variables to store the totals
	var aciertos = 0;
	var fallos = 0;
// populate the “totals” variables from the “responsesArray”
	for (var i = 0; i < responsesArray.length; i++) {
		if (responsesArray[i] === true) {
			aciertos = aciertos + 1;
		}
	}
// save the “totals” variables inside the user object
	var results = 10 * aciertos / responsesArray.length;
	user.results = results.toFixed(2);
// call showResults
	return showResults();
}

function showResults() {
	// display the user results
	if (user.results == 10) {
		return alert(user.name + ' ¡¡Qué maquinote, tienes un 10!! MATRÍCULA DE HONOR.')
	} else if (user.results >= 9) {
		return alert('SOBRESALIENTE. Fenomenal, ' + user.name + '. Aunque podrías haber acertado todas ya que tienes un ' + user.results + '.')
	} else if (user.results >= 7) {
		return alert('NOTABLE ' + user.results + '. No está nada mal, ' + user.name + '.')
	} else if (user.results >= 6) {
		return alert('BIEN... Tienes un ' + user.results + ', ' + user.name + '.')
	} else if (user.result >= 5) {
		return alert('SUFICIENTE. Aprobado por los pelos con un ' + user.results + ', ' + user.name + '.')
	} else if (user.results >= 4) {
		return alert('INSUFICIENTE. Sigue intentándolo, ' + user.name + '. Tienes un ' + user.results +'.')
	} else if (user.results >= 2) {
		return alert('INSUFICIENTE. Te queda bastante para aprobar, ' + user.name + '. Pero sigue luchando. Tu nota es un ' + user.results + '.')
	} else {
		return alert('Tu nota es un ' + user.results + '. Vaya mierda de examen que has hecho, ' + user.name + '¿es que no te has quedado con nada de lo visto en clase?')
	}
}

// call the function, passing it the responses array
evaluate(responses);