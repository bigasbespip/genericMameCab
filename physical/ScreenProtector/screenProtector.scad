// Arcade machine screen panel
// Vars
// all dimensions in mm
width = 750;
totalHeight = 800;
buttonDia = 22;
bottomHeight = 100;
screwDia = 5;
screwFromEdge = 4;
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