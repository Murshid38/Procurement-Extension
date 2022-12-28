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
        MaterialRequestHeader := NewMaterialRequestHeader;
    end;

    trigger OnPreReport()
    var
        PurchaseHeaderRec: Record "Purchase Header";
    begin
        if Confirm('Do you want create the Purchase Order?') then
            PurchaseHeaderRec.CreatePurchaseOrder(MaterialRequestHeader, VendorID)
        else
            CurrReport.Break();
    end;

    var
        MaterialRequestHeader: Record "Material Request Header";
        VendorID: Code[20];
}
