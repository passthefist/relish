//testo
function Release(timestamp, title, available) {
	if (!title) {
		this.title = "Open";	
	} else {
		this.title = title;
	}
	if (available === undefined) {
		this.available = true;
	} else {
		this.available = available;
	}
};

function Releases($scope) {
	var dates = [];

	var t = 0;
	for(var i = 0; i < 5; i++) {
		dates.push(new Release(t + 15*i));
	}
	dates[2] = new Release(20, 'My Release', false);
	$scope.dates = dates;
};
