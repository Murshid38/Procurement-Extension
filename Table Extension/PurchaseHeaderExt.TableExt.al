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

    procedure InsertPurchaseHeaderRecord(MaterialRequestHeader: Record "Material Request Header"; VendorID: Code[20]; VendorName: Text[100])
    var
    //make a purchase line record
    begin
        Init();
        Rec."Document Type" := Rec."Document Type"::Order;
        Rec."Material Request No" := MaterialRequestHeader.No;
        Rec."Buy-from Vendor No." := VendorID;
        Rec."Buy-from Vendor Name" := VendorName;
        Rec.Validate("Buy-from Vendor No.", VendorID);
        Insert(true);

        // Rec."No."

        //make a repeat until

        Message('Purchase Order Created');

        MaterialRequestHeader.Status := MaterialRequestHeader.Status::Processed;
        MaterialRequestHeader."Used for PO" := true;
        MaterialRequestHeader.Modify();
    end;
}
