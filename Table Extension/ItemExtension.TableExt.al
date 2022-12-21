tableextension 50100 "Item Extension" extends Item
{
    fields
    {
        field(50100; "International Vendor Number"; Text[100])
        {
            Caption = 'International Vendor Number';
            DataClassification = CustomerContent;
            TableRelation = Vendor;
        }
        field(50101; "ATA(Aircraft Chapter)"; Text[100])
        {
            Caption = 'ATA(Aircraft Chapter)';
            DataClassification = CustomerContent;
        }
        field(50102; "IPC (Reference Number)"; Text[100])
        {
            Caption = 'IPC (Reference Number)';
            DataClassification = ToBeClassified;
        }
        field(50103; CMM; Text[100])
        {
            Caption = 'CMM';
            DataClassification = ToBeClassified;
        }
        field(50104; "Alternative Part 1"; Code[20])
        {
            Caption = 'Alternative Part 1';
            DataClassification = ToBeClassified;
        }
        field(50105; "Alternative Part 2"; Code[20])
        {
            Caption = 'Alternative Part 2';
            DataClassification = ToBeClassified;
        }
        field(50106; "Alternative Part 3"; Code[20])
        {
            Caption = 'Alternative Part 3';
            DataClassification = ToBeClassified;
        }
        field(50107; "Alternative Part 4"; Code[20])
        {
            Caption = 'Alternative Part 4';
            DataClassification = ToBeClassified;
        }
        field(50108; "Type of Spare Part"; Enum Category)
        {
            Caption = 'Type of Spare Part';
            DataClassification = ToBeClassified;
        }
        field(50109; "Manufacturer Name"; Code[20])
        {
            Caption = 'Manufacturer Name';
            TableRelation = "Part Manufacturer";
            DataClassification = ToBeClassified;
        }
        field(50110; "Aircraft Type"; Code[20])
        {
            Caption = 'Aircraft Type';
            TableRelation = "Aircraft Type ";
            DataClassification = ToBeClassified;
        }
        field(50111; "FA Subclass"; Code[10])
        {
            Caption = 'FA Subclass';
            TableRelation = "FA Subclass";
            DataClassification = ToBeClassified;
        }
        field(50112; "FA Class Code"; Code[10])
        {
            Caption = 'FA Class Code';
            TableRelation = "FA Class";
            DataClassification = ToBeClassified;
        }
        field(50113; "Inv. Adj Ac"; Code[20])
        {
            Caption = 'Inv. Adj Ac';
            TableRelation = "G/L Account"."No." where(Blocked = filter(false), "Direct Posting" = filter(true));
            DataClassification = ToBeClassified;
        }
        field(50114; "Location Code"; Code[20])
        {
            Caption = 'Location Code';
            TableRelation = Location where("Use As In-Transit" = const(false));
            DataClassification = ToBeClassified;
        }
    }
}
