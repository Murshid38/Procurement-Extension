permissionset 50102 MaterialRequestHPS
{
    Assignable = true;
    Permissions = tabledata "Aircraft Type " = RIMD,
        tabledata "Material Request Header" = RIMD,
        tabledata "Part Manufacturer" = RIMD,
        table "Aircraft Type " = X,
        table "Material Request Header" = X,
        table "Part Manufacturer" = X,
        page "Aircraft Types" = X,
        page "Part Manufacturers" = X;
}