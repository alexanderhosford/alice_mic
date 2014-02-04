use <MCAD/boxes.scad>
use <MCAD/regular_shapes.scad>

$fa=0.01;
$fs=0.01;

ringh = 0.7619/2;

module leg() {
	cylinder(r=0.6477/2,h=1,center=true);
}

module legs() {
	rotate([0,0,45])
	for(x=[1.27,-1.27]) {
		for(y=[1.27,-1.27]) {
			translate([x,y,0])
			leg();
		}
	}
}

module case() {
	cylinder(r=4.6863/2,h=5.0546,center=true);
}

module ring() {
	cylinder(r=5.4356/2,h=ringh,center=true);
}

module tab() {
	roundedBox([1.0668,1.041395,ringh],0.15,true);
}

module tab_fillet() {
	intersection() {
			translate([-0.5,-0.5,0])
			cube([1,1,ringh],center=true);
			difference() {
				cube([2,2,ringh],center=true);
				
				translate([1,1,0])
				cylinder(r=2,h=ringh*1.005,center=true);
			}
		}
}



module to72() {
//	difference() {
		union() {
			translate([0,0,-0.4])
			legs();
		
			translate([0,0,5.0546/2])
			case();
		
			translate([0,0,0.7619/4])
			ring();
		
			translate([3.251,0,ringh/2])
			tab();
			
			translate([3.22,1,ringh/2]) {
				tab_fillet();
			}
			
			translate([3.22,-1,ringh/2]) {
				rotate([180,0,0])	
				tab_fillet();
			}
		}

//		translate([0,0,5.05])
//		scale(1.00)
//		top_round();
//	}
}

to72();

//module top_round() {
//
//		difference() {
//		torus(4.6863/2,4.6/2);
//		
//		difference() {
//		cylinder(r=4.65/2,h=0.05,center=true);
//		cylinder(r=4.55/2,h=0.22,center=true);
//		}
//	}
//}



//module torus(outerRadius, innerRadius)
//{
//  r=(outerRadius-innerRadius)/2;
//  rotate_extrude() translate([innerRadius+r,0,0]) circle(r);	
//}