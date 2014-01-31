use <capsule_cover.scad>
use <end_cap.scad>

$fa=0.01;
$fs=0.4;

module tube() {
	difference() {
		cylinder(r=22.25/2,h=80,center=true);
		cylinder(r=18.63/2,h=90,center=true);
				
		translate([0,0,-30.9])
		cylinder(r=20.5/2,h=19,center=true);

		translate([0,0,32])
		grilles();

		translate([0,0,40])
		cap_diff();
	}
}

tube();

