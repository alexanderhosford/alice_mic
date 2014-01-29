$fa=0.01;
$fs=0.5;

module pcb() {
	color("green")
	scale(0.001)
	import("board.stl");
}

module pcb2() {
	color("green")
	scale(0.001)
	import("board2.stl");
}

module pcb3() {
	color("green")
	scale(1)
	import("smallAliceBoard.stl");
}

module 047cap() {
	color("blue")
	cube([17.34,4.78,11.14],center=true);
}



module board() {
	translate([-33.5,0,-((4.78/2)+0.8)])
	rotate([90,0,0])
	047cap();
	
	translate([-33.5,0,(4.78/2)+0.8])
	rotate([90,0,0])
	047cap();
	
	translate([-50,-8.5,0])
	pcb();
}

//board();

module board2() {
	translate([-50,-8.5,0])
	pcb2();
}

module board3() {
	translate([-50,-8.5,0])
	pcb3();
}

board3();