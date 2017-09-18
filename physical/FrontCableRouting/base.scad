// Cable route for guns

// Variables
// all measurements in mm
gapWidth = 63;
gapHeight = 75;
cableDia = 4;
mediaThickness = 20;
overhang = 4;
gripWidth = 3;

cube([mediaThickness, gapWidth, gapHeight]);

translate([-gripWidth,-overhang,0])
{
    cube([gripWidth, overhang*2, gapHeight]);
}
translate([-gripWidth,gapWidth - overhang,0])
{
    cube([gripWidth, overhang*2, gapHeight]);
}
translate([-gripWidth,gapWidth - overhang,0])
{
    cube([gripWidth, overhang*2, gapHeight]);
}