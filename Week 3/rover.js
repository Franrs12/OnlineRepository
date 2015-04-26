var rover = {
	position: [0, 0]
}

var path = []

var obstacle = {
	name: "un pedrusco", 
	position: [1, 2]
}

var grid = [10, -10, 10, -10];

function moving() {
	for (var f = 0; f < path.length; f++/*'Aquí se repite dos veces: ', teDiste()*/){
	switch (path[f]) {
		case 'N':
		case 'F':
			rover.position[0]++;
			teDiste();//No pongo estas dentro de 'for' porque lo repite todo dos veces.
			teSaliste();
			break;
		case 'S':
		case 'B':
			rover.position[0]--;
			teDiste();
			teSaliste();
			break;
		case 'E':
		case 'R':
			rover.position[1]++;
			teDiste();
			teSaliste();
			break;
		case 'W':
		case 'L':
			rover.position[1]--;
			teDiste();
			teSaliste();
			break;
	}
	}
	return alert('La posición final es: ' + rover.position + '.');
}

function teDiste(){
	if (rover.position[0] == obstacle.position[0] && rover.position[1] == obstacle.position[1]) {
		alert('Te acabas de encontrar con ' + obstacle.name + ' en la posición ' + obstacle.position + '.')
	}
}

function teSaliste(){
	if (rover.position[0] > grid[0]) {
		alert('Te saliste por el Norte.')
	}else if (rover.position[0] < grid[1]) {
		alert('Te saliste por el Sur.')
	}else if (rover.position[1] > grid[2]) {
		alert('Te saliste por el Este.')
	}else if (rover.position[1] < grid[3]) {
		alert('Te saliste por el Oeste.')
	}
}

function indicaCamino(){
	path = prompt('Indica el camino que quieres que siga').toUpperCase().split("");
	path.push(path);
	return moving(path);
}
indicaCamino();

function actualizarCoord(){
	document.getElementById("result").innerHTML = rover.position + '.';
};

document.getElementById("result").innerHTML = rover.position + '.';