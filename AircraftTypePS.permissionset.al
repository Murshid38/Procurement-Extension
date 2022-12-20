permissionset 50101 "Aircraft Type PS"
{
    Assignable = true;
    Permissions = tabledata "Aircraft Type "=RIMD,
        tabledata "Part Manufacturer"=RIMD,
        table "Aircraft Type "=X,
        table "Part Manufacturer"=X,
        page "Part Manufacturers"=X;
}