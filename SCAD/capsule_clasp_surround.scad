use <aliceMic.scad>

module element() {
	color("gold")
	rotate([180,0,0])
	import("tsb160aElement.stl");
}

translate([0,0,50])
element();

//%tube();

module arm() {
	cube([1.81,1.81,30],center=true);
}

//arm();

difference() {


translate([0,0,20])
cylinder(r=15,h=30,center=true);
translate([0,0,-16])
neutrikConnector();
}