// Cable route for guns
$fa = 6;
// Variables
// all measurements in mm
gapWidth = 63;
gapHeight = 75;
cableDia = 4;
mediaThickness = 20;
overhang = 4;
gripWidth = 3;

// This is the base
difference()
{
    union()
    {
        cube([mediaThickness, gapWidth, gapHeight]);
        lips();
    }
    translate([0,gapWidth/2,gapHeight - (cableDia/2)])
    {
        rotate(a=[0,90,0])
        {
            cylinder(h=mediaThickness, d=cableDia);
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