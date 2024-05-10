// Gmsh project created on Wed Jul  5 11:32:46 2023
SetFactory("OpenCASCADE");
Rectangle(1) = {0, 0, 0, 25, 20, 0};
//+
Disk(2) = {7, 10, 0, 1.5, 1.5};
//+
Rectangle(3) = {7, 8.5, 0, 2, 3, 0};
//+
BooleanUnion{ Surface{2}; Delete; }{ Surface{3}; Delete; }
//+
BooleanDifference{ Surface{1}; Delete; }{ Surface{2}; Delete; }
//+
Physical Curve("inflow", 1) = {2};
//+
Physical Curve("outflow", 2) = {3};
//+
Physical Curve("wall", 3) = {4, 1};
//+
Physical Curve("obstacle", 4) = {7, 6, 5};
//+
Physical Curve("bc_control", 5) = {8};
//+
Physical Surface("water", 6) = {1};
//+
Transfinite Curve {8} = 25 Using Progression 1;
//+
Transfinite Curve {7, 5} = 20 Using Progression 1;
//+
Transfinite Curve {6} = 22 Using Progression 1;
//+
Transfinite Curve {2, 3} = 35 Using Progression 1;
//+
Transfinite Curve {4, 1} = 40 Using Progression 1;
Mesh.CharacteristicLengthMin = 0.5;
Mesh.CharacteristicLengthMax = 0.5;
Mesh.MshFileVersion = 2.0;
