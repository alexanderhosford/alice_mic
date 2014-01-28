$fa=0.5;
$fs=0.1;

//rotate([90,0,0])
//cylinder(r=7.5,h=30,center=true);

difference() {
	rotate([90,0,0])
	cylinder(r=18.8/2,h=45,center=true);
	
//	color("green")
	translate([0,0,2.5])
	cube([19,34,15],center=true);
	
	for(z=[10,-7]) {
		translate([0,0,-z])
		cube([19,46,5],center=true);
	}
	
	translate([0,0,0.5])
	rotate([90,0,0])
	cylinder(r=6,h=50,center=true);

	translate([0,0,5.5])
	cube([12,50,10],center=true);

	translate([0,19.75,0])
	rotate([90,0,0])
	ring();
}

module pin() {
cylinder(r=2/2,h=3,center=true);
}

//pin();


module pins() {
	for(y=[15,15,2,2]) {
		for(x=[2,31,31,2]) {
			translate([y,x,0])
			pin();
		}
	}
}

translate([-8.5,-16.5,-4])
pins();

module ring() {
	difference() {
	cylinder(r=18.9/2,h=1,center=true);
	cylinder(r=18/2,h=1.5,center=true);
	}
}

