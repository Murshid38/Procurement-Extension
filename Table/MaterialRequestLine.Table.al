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
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
            DataClassification = CustomerContent;
        }

        field(3; "Part Number"; Code[20])
        {
            Caption = 'Part Number';
            DataClassification = CustomerContent;
            TableRelation = Item;

            trigger OnValidate()
            var
            begin
                if ItemRecord.Get("Part Number") then begin
                    "Location Code" := ItemRecord."Location Code";
                    "Aircraft Type" := ItemRecord."Aircraft Type";
                    "Aircraft Chapter" := ItemRecord."ATA(Aircraft Chapter)";
                    "Reference Number" := ItemRecord."IPC (Reference Number)";
                end
                else begin
                    "Location Code" := '';
                    "Aircraft Type" := '';
                    "Aircraft Chapter" := '';
                    "Reference Number" := '';
                end;
            end;
        }
        field(4; "ALT Part Number"; Code[20])
        {
            Caption = 'ALT Part Number';
            DataClassification = CustomerContent;
        }
        field(5; Quantity; Integer)
        {
            Caption = 'Quantity';
            DataClassification = CustomerContent;
        }
        field(6; "Location Code"; Code[20])
        {
            Caption = 'Location Code';
            DataClassification = CustomerContent;
        }
        field(7; "Aircraft Chapter"; Text[100])
        {
            Caption = 'Aircraft Chapter';
            DataClassification = CustomerContent;
        }
        field(8; "Reference Number"; Text[100])
        {
            Caption = 'Reference Number';
            DataClassification = CustomerContent;
        }
        field(9; Description; Text[250])
        {
            Caption = 'Description';
            DataClassification = CustomerContent;
        }
        field(10; "Aircraft Type"; Code[20])
        {
            Caption = 'Aircraft Type';
            DataClassification = CustomerContent;
        }
        field(11; "Impact Reason"; Code[20])
        {
            Caption = 'Impact Reason';
            DataClassification = CustomerContent;
        }
    }
    keys
    {
        key(PK; "Material Request No.", "Line No.")
        {
            Clustered = true;
        }
    }
    var
        ItemRecord: Record Item;
}
