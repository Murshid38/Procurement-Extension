tableextension 50104 "Purch Rec Head Ext" extends "Purch. Rcpt. Header"
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
