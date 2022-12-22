report 50100 "Create Purchase Order"
{
    ApplicationArea = All;
    Caption = 'Create Purchase Order';
    UsageCategory = ReportsAndAnalysis;
    ProcessingOnly = true;

    requestpage
    {
        layout
        {
            area(content)
            {
                group(Options)
                {
                    field(Vendor; VendorID)
                    {
                        Caption = 'Vendor';
                        TableRelation = Vendor;
                        ApplicationArea = all;
                        ToolTip = 'Vendor';
                    }
                }
            }
        }
        actions
        {
            area(processing)
            {
            }
        }
    }

    procedure SetMaterialRequestHeader(var NewMaterialRequestHeader: Record "Material Request Header")
    begin
        // Message('%1', NewVoucherHeader."No.");
        MaterialRequestHeader := NewMaterialRequestHeader;
    end;

    procedure GetVendorNo(): Code[20]
    begin
        if VendorRec.get(VendorID) then
            exit(VendorRec."No.");
    end;

    procedure GetVendorName(): Text[100]
    begin
        if VendorRec.get(VendorID) then
            exit(VendorRec.Name);
    end;

    trigger OnPreReport()
    var
        PurchaseHeaderRec: Record "Purchase Header";
    begin
        PurchaseHeaderRec.InsertRequestNo(MaterialRequestHeader, GetVendorNo(), GetVendorName());
    end;

    var
        MaterialRequestHeader: Record "Material Request Header";
        VendorRec: Record Vendor;
        VendorID: Code[20];
}
