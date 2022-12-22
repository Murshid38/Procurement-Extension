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

    procedure InsertRequestNo(MaterialRequestHeader: Record "Material Request Header"; VendorID: Code[20]; VendorName: Text[100])
    begin
        Init();
        "Document Type" := "Document Type"::Order;
        "Material Request No" := MaterialRequestHeader.No;
        "Buy-from Vendor No." := VendorID;
        "Buy-from Vendor Name" := VendorName;
        Insert(true);
    end;
}
