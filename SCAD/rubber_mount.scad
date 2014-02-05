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

module rubber_mount() {
	color("black")
	difference() {
		cylinder(r=16/2,h=7,center=true);
		cylinder(r=13/2,h=8,center=true);
		
		cutouts();
	}
}

module rubber_mount_2() {
	color("black") {
		difference() {
			cylinder(r=16/2,h=3,center=true);
			cylinder(r=13/2,h=4,center=true);
		}
	
		for(i=[1:6]) {
			rotate([0,0,i*60])
			translate([7.2,0,2])
			cylinder(r=1,h=7,center=true);
		}
	}
}

module stands_thin() {
	for(i=[1:6]) {
		rotate([0,0,i*60]) {
			translate([7.2,0,2.5])
			cylinder(r=0.7,h=7,center=true);

			hull() {
				translate([7.25,0,5.6])
				cylinder(r=1,h=1,center=true);		

				translate([0,0,6])
				ring_support_fillet_thin();	

				translate([7.2,0,4.5])
				cylinder(r=0.7,h=2,center=true);
			}	
		}	
	}
}

module stands_thick() {
	for(i=[1:6]) {
		rotate([0,0,i*60]) {
			translate([7.2,0,2.5])
			cylinder(r=0.7,h=7,center=true);

			hull() {
				translate([7.25,0,5.6])
				cylinder(r=1,h=1,center=true);		

				translate([0,0,6])
				ring_support_fillet_thick();	

				translate([7.2,0,4.5])
				cylinder(r=0.7,h=2,center=true);
			}	
		}	
	}
}

module bung() {
	difference() {
		cylinder(r1=6,r2=7,h=5,center=true);
		translate([0,0,2])
		scale(0.9)
		cylinder(r1=6,r2=7,h=5,center=true);	
	}
}

module mounting_ring_thin() {
	difference() {
		cylinder(r=17/2, h=4, center=true);
		cylinder(r=16/2, h=5, center=true);
	}
}

module mounting_ring_thick() {
	difference() {
		cylinder(r=17/2, h=4, center=true);
		cylinder(r=15/2, h=5, center=true);
	}
}

module ring_support_fillet_thin() {
	rotate([0,0,90])
	intersection() {
		translate([0,0,0])
		mounting_ring_thin();
		
		translate([0,-8.5,0])
		cube([2,1,1],center=true);
	}
}

module ring_support_fillet_thick() {
	rotate([0,0,90])
	intersection() {
		translate([0,0,0])
		mounting_ring_thick();
		
		translate([0,-8.5,0])
		cube([2,1,1],center=true);
	}
}

module wire_channel() {
	cylinder(r=0.5,h=7,center=true);
}

module rubber_mount_thin() {
	difference() {
		union() {
			difference() {
				cylinder(r=16/2,h=2,center=true);
				cylinder(r=13/2,h=4,center=true);
			}
		
			stands_thin();
		
			translate([0,0,8])
			mounting_ring_thin();
		
			translate([0,0,-3.4])
			bung();
		}
	
		hull() {
			for(x=[0.5,-0.5]) {
				translate([x,0,-4])
				wire_channel();
			}
		}
	}
}

module rubber_mount_thick() {
	difference() {
		union() {
			difference() {
				cylinder(r=16/2,h=2,center=true);
				cylinder(r=13/2,h=4,center=true);
			}
		
			stands_thick();
		
			translate([0,0,8])
			mounting_ring_thick();
		
			translate([0,0,-3.4])
			bung();
		}
	
		hull() {
			for(x=[0.5,-0.5]) {
				translate([x,0,-4])
				wire_channel();
			}
		}
	}
}

//translate([20,0,0])
//rubber_mount_thin();

rubber_mount_thick();

//cube(1,center=true);