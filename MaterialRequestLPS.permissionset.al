permissionset 50103 MaterialRequestLPS
{
    Assignable = true;
    Permissions = tabledata "Aircraft Type "=RIMD,
        tabledata "Material Request Header"=RIMD,
        tabledata "Material Request Line"=RIMD,
        tabledata "Part Manufacturer"=RIMD,
        table "Aircraft Type "=X,
        table "Material Request Header"=X,
        table "Material Request Line"=X,
        table "Part Manufacturer"=X,
        page "Aircraft Types"=X,
        page "Part Manufacturers"=X;
}