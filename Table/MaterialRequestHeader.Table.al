table 50102 "Material Request Header"
{
    Caption = 'Material Request Header';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "No. Series"; Code[20])
        {
            Caption = 'No. Series';
            Editable = false;
            TableRelation = "No. Series";
        }

        field(2; No; Code[20])
        {
            Caption = 'No';
            DataClassification = CustomerContent;
        }
        field(3; "Line No."; Code[20])
        {
            Caption = 'Line No';
            DataClassification = CustomerContent;
        }
        field(4; Status; Enum Status)
        {
            Caption = 'Status';
            DataClassification = CustomerContent;
        }
        field(5; "Created Date"; Date)
        {
            Caption = 'Created Data';
            DataClassification = CustomerContent;
        }
        field(6; "Used for PO"; Boolean)
        {
            Caption = 'Used for PO';
            DataClassification = CustomerContent;
        }
        field(7; RequestedByName; Text[100])
        {
            Caption = 'RequestedByName';
            DataClassification = CustomerContent;
        }
        field(8; "Staff No."; Code[20])
        {
            Caption = 'Staff No.';
            DataClassification = CustomerContent;
        }
        field(9; Auth; Text[100])
        {
            Caption = 'Auth';
            DataClassification = CustomerContent;
        }
        field(10; "Date"; Date)
        {
            Caption = 'Date';
            DataClassification = CustomerContent;
        }
        field(11; ProcessedByName; Text[100])
        {
            Caption = 'ProcessedByName';
            DataClassification = CustomerContent;
        }
        field(12; "Sent for Processing Date"; Date)
        {
            Caption = 'Sent for Processing Date';
            DataClassification = CustomerContent;
        }
    }
    keys
    {
        key(PK; No)
        {
            Clustered = true;
        }
    }

    var
        PurchasesPayablesSetupRecord: Record "Purchases & Payables Setup";
        NoSeriesManagementCodeunit: codeunit NoSeriesManagement;

    trigger OnInsert()
    begin
        InitInsert();
        "Created Date" := Today;
    end;

    procedure InitInsert()
    begin
        if "No" = '' then begin
            TestNoSeries();
            NoSeriesManagementCodeunit.InitSeries(GetNoSeriesCode(), xRec."No. Series", Today, "No", "No. Series");
        end;
    end;

    procedure TestNoSeries()
    begin
        GetPurchasesSetup();
        PurchasesPayablesSetupRecord.TestField("Material Request No.");
    end;

    procedure GetNoSeriesCode(): Code[20]
    var
        NoSeriesCode: Code[20];
    begin
        GetPurchasesSetup();
        NoSeriesCode := PurchasesPayablesSetupRecord."Material Request No.";
        exit(NoSeriesCode);
    end;

    local procedure GetPurchasesSetup()
    begin
        // Purchases.Get();
        PurchasesPayablesSetupRecord.Get();
    end;
}
