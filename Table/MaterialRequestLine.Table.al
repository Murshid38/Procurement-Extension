table 50103 "Material Request Line"
{
    Caption = 'Material Request Line';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Material Request No."; Code[20])
        {
            Caption = 'Material Request No.';
            DataClassification = CustomerContent;
        }
        field(2; "Part Number"; Code[20])
        {
            Caption = 'Part Number';
            DataClassification = CustomerContent;
        }
        field(3; "ALT Part Number"; Code[20])
        {
            Caption = 'ALT Part Number';
            DataClassification = CustomerContent;
        }
        field(4; Quantity; Integer)
        {
            Caption = 'Quantity';
            DataClassification = CustomerContent;
        }
        field(5; "Location Code"; Code[20])
        {
            Caption = 'Location Code';
            DataClassification = CustomerContent;
        }
        field(6; "Aircraft Chapter"; Code[20])
        {
            Caption = 'Aircraft Chapter';
            DataClassification = CustomerContent;
        }
        field(7; "Reference Number"; Code[20])
        {
            Caption = 'Reference Number';
            DataClassification = CustomerContent;
        }
        field(8; Description; Text[250])
        {
            Caption = 'Description';
            DataClassification = CustomerContent;
        }
        field(9; "Aircraft Type"; Code[20])
        {
            Caption = 'Aircraft Type';
            DataClassification = CustomerContent;
        }
        field(10; "Impact Reason"; Code[20])
        {
            Caption = 'Impact Reason';
            DataClassification = CustomerContent;
        }
    }
    keys
    {
        key(PK; "Part Number")
        {
            Clustered = true;
        }
    }
}
