// Arcade machine screen panel
// Vars
// all dimensions in mm
width = 750;
totalHeight = 700;
buttonDia = 24;
bottomHeight = 250;
screwDia = 5;
screwFromEdge = 8;
screwFromWideEdge = 10;
buttonBottomOffset = 50;
//
main();

module main()
{
    difference(){
        base();
        union()
        {
            screwHoles();
            buttonHole();
        }
    }
}

module buttonHole()
{
    translate([width/2,buttonBottomOffset,0])
    {
        circle(d=buttonDia);
    }
}

module base()
{
    square([width, bottomHeight]);
}

module screwHoles()
{
    translate([screwFromEdge,screwFromWideEdge,0])
    {
        circle(d=screwDia);
    }
    translate([screwFromEdge, (bottomHeight) - screwFromWideEdge,0])
    {
        circle(d=screwDia);
    }
    translate([width - screwFromEdge, (bottomHeight) - screwFromWideEdge,0])
    {
        circle(d=screwDia);
    }
    translate([width - screwFromEdge, screwFromWideEdge,0])
    {
        circle(d=screwDia);
    }
}