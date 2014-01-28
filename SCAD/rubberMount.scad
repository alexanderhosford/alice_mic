$fa=0.01;
$fs=0.05;

module cutout() {
	translate([7,0,1.3])
	cube([5,5,4.5],center=true);
}

module cutouts() {
	for (i=[1:6]) {
		rotate([0,0,i*60]) {
			translate([0,0,0])
		cutout();
		}
	}
}

module rubberMount() {
	color("black")
	difference() {
		cylinder(r=16/2,h=7,center=true);
		cylinder(r=13/2,h=8,center=true);
		
		cutouts();
	}
}

rubberMount();