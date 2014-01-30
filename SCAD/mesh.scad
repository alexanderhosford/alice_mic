module mesh() {
	scale(0.08)
	color("gold")
	for (x=[0:8]) {
		for (y=[0:4]) {
			translate([x*100,y*200,0])
			import("STL/mesh.stl");
		}
	}
}

mesh();