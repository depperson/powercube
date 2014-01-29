module controlpanel()
{
	/*
		Control Panel for the OSE GVCS PowerCube v6
		http://opensourceecology.org/wiki/Power_Cube_VI

		Interpreted from Sketchup by Daniel Epperson. 
		All measurements are in inches (not mm).

		CC-BY-SA
	 */
	difference() 
	{
		cube([14, 0.125, 4], center = true);

		// return
		translate([-5, 1, 0]) 
		{
			rotate([90,0,0]) { cylinder(r=0.5625, h=2, $fn=60); }
		}

		// tank
		translate([-2.5, 1, 0]) 
		{
			rotate([90,0,0]) { cylinder(r=0.28125, h=2, $fn=60); }
		}

		// supply
		translate([0,1,0]) { rotate([90,0,0]) { cylinder(r=0.5625, h=2, $fn=60); } }

		// throttle
		translate([2.5, 0, 0]) 
		{
			cube([0.75, 1, 3], center = true);
		}

		// key with notch
		translate([5, 1, 0]) 
		{
			difference() 
			{
				rotate([90,0,0]) { cylinder(r=0.3125, h=2, $fn=60); }
				translate([0, 0, 0.78125])
				{
					cube([2, 4.1, 1], center = true);
				}
			}
		}

		// mounting tabs TL
		translate([-6.813, 0, 1.25]) 
		{
			cube([0.375, 1, 0.3125], center = true);
		}
		translate([-6.625, 1, 1.25]) 
		{
			rotate([90,0,0]) { cylinder(r=0.16, h=2, $fn=60); }
		}

		// mounting tabs BL
		translate([-6.813, 0, -1.25]) 
		{
			cube([0.375, 1, 0.3125], center = true);
		}
		translate([-6.625, 1, -1.25]) 
		{
			rotate([90,0,0]) { cylinder(r=0.16, h=2, $fn=60); }
		}

		// mounting tabs TR
		translate([6.813, 0, 1.25]) 
		{
			cube([0.375, 1, 0.3125], center = true);
		}
		translate([6.625, 1, 1.25]) 
		{
			rotate([90,0,0]) { cylinder(r=0.16, h=2, $fn=60); }
		}

		// mounting tabs BR
		translate([6.813, 0, -1.25]) 
		{
			cube([0.375, 1, 0.3125], center = true);
		}
		translate([6.625, 1, -1.25]) 
		{
			rotate([90,0,0]) { cylinder(r=0.16, h=2, $fn=60); }
		}


	}
}
controlpanel();