tableextension 50102 "Purchase Header Ext" extends "Purchase Header"
{
    fields
    {
        field(50100; "Material Request No"; Code[20])
        {
            Caption = 'Material Request No';
            DataClassification = CustomerContent;
        }
    }

    procedure CreatePurchaseOrder(MaterialRequestHeader: Record "Material Request Header"; VendorID: Code[20])
    var
        PurchaseLineRecord: Record "Purchase Line";
        MaterialRequestLineRecord: Record "Material Request Line";
    begin
        Rec.Init();
        Rec."Document Type" := Rec."Document Type"::Order;
        Rec."Material Request No" := MaterialRequestHeader.No;
        Rec.Validate("Buy-from Vendor No.", VendorID);
        Rec.Invoice := true;
        Rec.Receive := true;
        InitInsert2();
        Rec.Insert(true);

        // Rec."No." and "Material Request No" are not same
        // "Document No." should be Rec."No." of Purchase Header
        // "Document Type" should be Order

        MaterialRequestLineRecord.SetRange("Material Request No.", Rec."Material Request No");
        if MaterialRequestLineRecord.FindFirst() then
            repeat
                PurchaseLineRecord.Init();
                PurchaseLineRecord."Document Type" := "Document Type"::Order;
                PurchaseLineRecord."Document No." := Rec."No.";
                PurchaseLineRecord."Line No." := MaterialRequestLineRecord."Line No.";
                PurchaseLineRecord.Validate(Type, PurchaseLineRecord.Type::Item);
                PurchaseLineRecord.Validate("No.", MaterialRequestLineRecord."Part Number");
                PurchaseLineRecord.Validate("Location Code", MaterialRequestLineRecord."Location Code");
                PurchaseLineRecord.Validate(Quantity, MaterialRequestLineRecord.Quantity);
                PurchaseLineRecord.Insert();
            until MaterialRequestLineRecord.Next() = 0;

        Message('Purchase Order Created');

        MaterialRequestHeader.Status := MaterialRequestHeader.Status::Processed;
        MaterialRequestHeader."Used for PO" := true;
        MaterialRequestHeader.Modify();

        if Rec.SendToPosting(90) then
            Message('Purchase Order Posted Sucessfully');

    end;

    procedure InitInsert2()
    begin
        if "Vendor Invoice No." = '' then begin
            TestNoSeries2();
            NoSeriesManagementCodeunit.InitSeries(GetNoSeriesCode2(), xRec."No. Series", Today, "Vendor Invoice No.", "No. Series");
        end;
    end;

    procedure TestNoSeries2()
    begin
        GetPurchasesSetup();
        PurchasesPayablesSetupRecord.TestField("Vendor Invoice No.");
    end;

    procedure GetNoSeriesCode2(): Code[20]
    var
        NoSeriesCode: Code[20];
    begin
        GetPurchasesSetup();
        NoSeriesCode := PurchasesPayablesSetupRecord."Vendor Invoice No.";
        exit(NoSeriesCode);
    end;

    local procedure GetPurchasesSetup()
    begin
        PurchasesPayablesSetupRecord.Get();
    end;

    var
        PurchasesPayablesSetupRecord: Record "Purchases & Payables Setup";
        NoSeriesManagementCodeunit: codeunit NoSeriesManagement;
}
