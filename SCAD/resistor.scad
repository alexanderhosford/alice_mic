$fa=0.01;
$fs=0.4;

module resistor() {
translate([-3.43,-3,-0.92])
import("STL/0207_resistor.stl");
}




difference() {
	resistor();
	
	for(x=[-3.17,3.17]) {
		translate([x,-0.5,-0])
		cube([1,5,0.6],center=true);
	}
}