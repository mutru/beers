console.log("Time for a beer run...")

setTimeout(function() {
	String.prototype.repeat = function( num )
	{
	  return new Array( num + 1 ).join( this );
	}

	var BEER = "🍺 ";
	var DOUBLEBEER ="🍻 ";

	Number.prototype.beers = function() {
		return BEER.repeat(this);
	}

	Number.prototype.doubleBeers = function() {
		return DOUBLEBEER.repeat(this);
	}

	Number.prototype.pack = function() {
		function genPack(rows, cols){
			return (cols.beers() + "\n").repeat(rows)
		}
		if (this == 6) { return genPack(2, 3);}
		else if (this == 12) {return genPack(2, 6);}
		else if (this == 18) {return genPack(3, 6);}
		else if (this == 24) {return genPack(4, 6);}
	}

	Math.random.beers = function(num) {
		if (num == undefined) {var num = 10;}
		return BEER.repeat(Math.floor(this() * num));
	}

	Date.now.beer = function(){
		return true;
	}

	console.log('Done!');
}, 2500)
