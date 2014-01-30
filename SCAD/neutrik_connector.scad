$fa=0.01;
$fs=0.05;

module neutrikConnector() {
	rotate([90,0,0])
	color("darkgray")
	import("STL/xlrConnector.stl");
}

difference() {
	neutrikConnector();
	
	difference() {
		cylinder(r=25/2,h=40,center=true);
		cylinder(r=22.25/2,h=41,center=true);
	}
}