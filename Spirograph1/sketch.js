function Spiro(k, r, x, y){
	this.k = k;
	this.r = r;
	this.x = x;
	this.y = y;
	this.dtheta = 0.1;
}

Spiro.prototype.update = function(max){
	max = max || 2 * TWO_PI;
	for(var t = 0; t < max; t += this.dtheta){
		var p = [this.r*(this.k+1)*cos(t-this.dtheta) - this.r*cos((this.k+1)*(t-this.dtheta)) + this.x,
				  this.r*(this.k+1)*sin(t-this.dtheta) - this.r*sin((this.k+1)*(t-this.dtheta)) + this.y]
		var p2 = [this.r*(this.k+1)*cos(t) - this.r*cos((this.k+1)*(t)) + this.x,
				  this.r*(this.k+1)*sin(t) - this.r*sin((this.k+1)*(t)) + this.y]
		line(p[0], p[1], p2[0], p2[1])
	}
}

var sp;

function setup(){
	createCanvas(500, 500);
	stroke(50, 255, 50);
	// 2.2 for sburb spiro
	sp = new Spiro(PI, 16.7, 250, 250)
}

function draw(){
	background(0);
	sp.update(TWO_PI * 10)
}

function keyPressed(){
	switch(key){
		case 'P':
			sp.k += 0.01;
			console.log('2344')
			break;
		case 'Q':
			sp.k -= 0.01;
			break;
	}
	console.log(key)
}
