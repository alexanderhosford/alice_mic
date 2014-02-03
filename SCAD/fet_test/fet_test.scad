$fa=0.01;
$fs=0.4;

module to72() {
	translate([-2.3,-2.3,-4.1])
	scale(10)
	import("TO72.stl");
}

//to72();


module fet() {
	translate([0,0,-9.5])
	intersection() {
	to72();
		translate([0,0,9.5])
		cylinder(r=3,h=5,center=true);
	}
}

fet();