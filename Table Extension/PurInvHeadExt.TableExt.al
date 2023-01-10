tableextension 50103 "Pur Inv Head Ext" extends "Purch. Inv. Header"
{
    fields
    {
        field(50100; "Material Request No"; Code[20])
        {
            Caption = 'Material Request No';
            DataClassification = CustomerContent;
            Editable = false;
        }
    }
}
