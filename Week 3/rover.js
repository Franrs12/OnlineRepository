var rover = {
	position: [0, 0]
}

function moving() {
	for (var f = 0; f < path.length; f++){
	switch (path[f]) {
		case 'N':
		case 'F':
			rover.position[0]++
			break;
		case 'S':
		case 'B':
			rover.position[0]--
			break;
		case 'E':
		case 'R':
			rover.position[1]++
			break;
		case 'W':
		case 'L':
			rover.position[1]--
	}}
return alert(rover.position);
}

var path = [];
path = prompt('Indica el camino a seguir').toUpperCase().split("");
moving(path);