// Cable route for guns
$fa = 6;
// Variables
// all measurements in mm
gapWidth = 63;
gapHeight = 75;
cableDia = 6;
mediaThickness = 20;
overhang = 4;
gripWidth = 3;

include <libs/wedge.scad>;
difference()
{
main();

translate([mediaThickness,overhang,gapHeight])
{
    rotate([90,90,180])
    {
        wedge(90, gapHeight, mediaThickness/1.5, gapWidth - (overhang*2));
    }
}
}
module main()
{
    difference()
    {
        union()
        {
            cube([mediaThickness, gapWidth, gapHeight]);
            lips();
        }
        union()
        {
            translate([0,gapWidth/2,gapHeight - (cableDia/2)])
            {
                cablePair();
            }
        }
    }
}

module cablePair()
{
    translate([0,cableDia/2,0])
    {
        cableRun();
    }
    translate([0,-cableDia/2,0])
    {
        cableRun();
    }
    translate([0,-cableDia/2,-cableDia/2.5])
    {
        cube([mediaThickness, cableDia, cableDia]);
    }
}

module cableRun()
{
    union()
    {
        
            rotate(a=[0,90,0])
            {
                cylinder(h=mediaThickness, d=cableDia);
            }
        //}
        translate([0,-cableDia/2,0])
        {
            cube([mediaThickness, cableDia, cableDia]);
        }
    }
}

module lips()
{
    singleLip();
    translate([mediaThickness + gripWidth, 0, 0])
    {
        singleLip();
    }
}

module singleLip()
{
    translate([-gripWidth,-overhang,0])
    {
        cube([gripWidth, overhang*2, gapHeight]);
    }
    translate([-gripWidth,gapWidth - overhang,0])
    {
        cube([gripWidth, overhang*2, gapHeight]);
    }
    translate([-gripWidth, 0, -overhang])
    {
        cube([gripWidth, gapWidth, overhang*2]);
    }
    translate([-gripWidth,0,0])
    {
        rotate(a=[0,90,0])
        {
            cylinder(h=gripWidth, r=overhang);
        }
    }
    translate([-gripWidth,gapWidth,0])
    {
        rotate(a=[0,90,0])
        {
            cylinder(h=gripWidth, r=overhang);
        }
    }
}