use <MCAD/threads.scad>
use <MCAD/regular_shapes.scad>
use <mesh.scad>

$fa=0.01;
$fs=0.1;

module capsule_cover() {
	color("silver")
	difference() {

		cylinder(r=16.5/2, h=7,center=true);

		translate([0,0,2.6])
		cylinder(r=(16.5/2)-1.92,h=2,center=true);
	
		front_ports();

		translate([0,0,3.1])
		rounding();
	}
}



module front_ports() {
	for (i=[1:6]) {
		rotate([0,0,i*60])
		translate([4.5,0,-3.6])
		cylinder(r=1,h=1,center=true);
	}
	
	translate([0,0,-3.6])
	cylinder(r=1.4,h=1,center=true);
}

module rear_ports() {
	for (i=[1:6]) {
		rotate([0,0,(i*60)+30])
		translate([4.5,0,0.6])
		cylinder(r=1,h=1,center=true);
	}
}

module back_plate() {
	color("white")
	difference() {
		cylinder(r=(16.5/2)-1.92,h=2,center=true);
		rear_ports();
	}
	translate([0,0,1.3])
	color("white")
	cylinder(r=1.3,h=0.8,center=true);
}

module case_terminals() {
	for(x=[6.1,-6.1]) {
		translate([x,0,5.185])
		color("silver")
		cube([0.53,1.83,3.37],center=true);
	}
}

module center_pin() {
	import("STL/center_pin.stl");
}

module nut() {
	hexagon(1.3);
}

module center_terminal_tab() {
	difference() {
		cylinder(r=3.82/2,h=0.2,center=true);
		cylinder(r=1.34/2,h=0.5,center=true);
	}
	
	translate([0,0,-0.56])	
	rotate([20,0,0]) {
		translate([0,4.68,0])
		cube([1.86,6.12,0.2],center=true);
			
		difference() {
			union() {
				translate([0.889,6.36,0])
				rotate([0,-45,0])
				cube([2.3,2.76,0.2],center=true);
		
				translate([-0.889,6.36,0])
				rotate([0,45,0])
				cube([2.3,2.76,0.2],center=true);
			}
			
			translate([0,7,-0.85])
			cube([3,5,1.5],center=true);
		}	
	}
}

module element() {
	capsule_cover();
	
	translate([0,0,2.5])
	back_plate();
	
	case_terminals();

	translate([0,0,4.3])
	center_terminal_tab();

	translate([0,0,3.4])
	center_pin();

	translate([0,0,4.95])
	nut();
}

element();

module rounding() {
	rotate_extrude() {
		translate([7.4,0,2.7])
		difference() {
			rotate([90,0,0]) 
			square(1);
			rotate([90,0,0]) 
			circle(1);
		}
	}
}



