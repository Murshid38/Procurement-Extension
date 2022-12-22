permissionset 50100 "TablesPermissionSet"
{
    Assignable = true;
    Permissions = tabledata "Aircraft Type " = RIMD,
        tabledata "Material Request Header" = RIMD,
        tabledata "Material Request Line" = RIMD,
        tabledata "Part Manufacturer" = RIMD,
        table "Aircraft Type " = X,
        table "Material Request Header" = X,
        table "Material Request Line" = X,
        table "Part Manufacturer" = X,
        page "Aircraft Types" = X,
        page "Material Request Card" = X,
        page "Material Request Subform" = X,
        page "Material Requests" = X,
        page "Part Manufacturers" = X;
}