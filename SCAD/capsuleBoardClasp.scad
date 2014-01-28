use <boardWithCaps.scad>
use <MCAD/shapes.scad>
use <MCAD/nuts_and_bolts.scad>

//$fa=0.01;
$fs=0.5;

module capsule() {
	color("gold")
	import("tsb160aElement.stl");
}

module neutrikConnector() {
	import("xlrConnector.stl");
}

module rubberRing() {
	color("black")
	difference() {
		cylinder(r=16/2,h=7,center=true);
		cylinder(r=13/2,h=8,center=true);
	}
}

module capsuleCone() {
	difference() {
		hull() {
			ellipticalCylinder(2,17/2,4,true);
			translate([0,0,-8])
			cylinder(r1=16/2, r2=8/2, h=10, center=true);
		}
	}
}

module connectorCone() {
	difference() {
		hull() {
			ellipticalCylinder(2,17/2,4,true);
			translate([0,0,-8])
			cylinder(r1=18/2, r2=8/2, h=10, center=true);
		}
	}
}

module boltHoles() {
	translate([0,6.49,-0.52])
	rotate([0,90,0])
	cylinder(r=0.5,h=5,center=true);
	translate([0,-6.49,-0.52])
	rotate([0,90,0])
	cylinder(r=0.5,h=5,center=true);
}

module nutHoles() {
	translate([3.3,6.49,3])
	cube([3,3,10],center=true);
	translate([3.3,-6.49,3])
	cube([3,3,10],center=true);
	translate([-3.3,6.49,3])
	cube([3,3,10],center=true);
	translate([-3.3,-6.49,3])
	cube([3,3,10],center=true);
}

module wireInlet() {
	cube([15,7,4.1],center=true);
	translate([0,0,-2.05])
	rotate([0,90,0])
	cylinder(r=3.5, h=15, center=true);
}

module capsuleClasp() {
	difference() {
		capsuleCone();
		
		translate([0,0,-5])
		scale([0.9,0.8,1])
		capsuleCone();
		
		translate([0,0,1.5])
		cube([1.6,17,8],center=true);
		
		boltHoles();
		nutHoles();

		wireInlet();
	}
}

module connectorClasp() {
	difference() {
		connectorCone();
		
		translate([0,0,-5])
		scale([0.99,0.85,1])
		connectorCone();
		
		translate([0,0,1.5])
		cube([1.6,20,8],center=true);
		
		boltHoles();
		nutHoles();

		wireInlet();
	}
}

//translate([0,0,-50])
//rotate([180,0,0])
//capsuleClasp();

rotate([180,0,0])
connectorClasp();

//translate([0,0,-36.5])
//rubberRing();
//
//translate([0,0,-40])
//capsule();
//
//translate([0,0,47.5])
//rotate([0,-90,0])
//board2();

//translate([0,0,36])
//rotate([-90,0,90])
//neutrikConnector();