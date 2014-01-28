module mesh() {

	import("mesh.stl");
}

module meshgrid() {
	for (x=[0:8]) {
		for (y=[0:4]) {
			translate([x*100,y*200,0])
			mesh();
		}
	}
}

meshgrid();