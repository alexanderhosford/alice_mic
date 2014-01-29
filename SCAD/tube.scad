use <capsule_cover.scad>

$fa=0.01;
$fs=0.05;

module tube() {
	color("silver")
	difference() {
		cylinder(r=22.25/2,h=80,center=true);
		cylinder(r=18.63/2,h=170,center=true);
		
//		translate([0,0,-43.5])
//		neutrikConnector();
		
		translate([0,0,-30.9])
		cylinder(r=20.5/2,h=19,center=true);

		translate([0,0,32])
		grilles();
	}
}

module neutrikConnector() {
	rotate([90,0,0])
	color("dark gray")
	import("STL/xlrConnector.stl");
}

tube();


