$fa=0.01;
$fs=0.5;

module body() {
	cylinder(r=16.6/2, h=7.02, center=true);
}

body();

module ring() {
	difference() {
		cylinder(r=16.6/2, h=1, center=true);
		cylinder(r=(16.6/2)-2.22/2, h=2, center=true);
	}
}

translate([0,0,25])
ring();


module frontHole() {
	cylinder(r=1.68/2,h=1,center=true);
}

translate([0,0,15])
frontHole();

module backHole() {
	cylinder(r=1.05/2,h=1,center=true);
}

translate([0,0,20])
backHole();

module holes() {

for(i=[1:6]) {
	translate([i,0,0])
	frontHole();
}

}