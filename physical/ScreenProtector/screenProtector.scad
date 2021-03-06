// Arcade machine screen panel
// Vars
// all dimensions in mm
width = 750;
totalHeight = 700;
buttonDia = 22;
bottomHeight = 250;
screwDia = 5;
screwFromEdge = 8;
screwFromWideEdge = 10;
//
main();

module main()
{
    difference(){
        base();
        screwHoles();
    }
}


module base()
{
    square([width, totalHeight-bottomHeight]);
}

module screwHoles()
{
    translate([screwFromEdge,screwFromWideEdge,0])
    {
        circle(d=screwDia);
    }
    translate([screwFromEdge, (totalHeight - bottomHeight) - screwFromWideEdge,0])
    {
        circle(d=screwDia);
    }
    translate([width - screwFromEdge, (totalHeight - bottomHeight) - screwFromWideEdge,0])
    {
        circle(d=screwDia);
    }
    translate([width - screwFromEdge, screwFromWideEdge,0])
    {
        circle(d=screwDia);
    }
}