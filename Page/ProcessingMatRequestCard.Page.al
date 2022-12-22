page 50106 "Processing Mat Request Card"
{
    Caption = 'Processing Mat Request Card';
    PageType = Document;
    SourceTable = "Material Request Header";
    UsageCategory = Documents;
    ApplicationArea = all;
    Editable = false;
    InsertAllowed = false;
    ModifyAllowed = false;
    DeleteAllowed = false;

    layout
    {
        area(content)
        {
            group(General)
            {
                field(No; Rec.No)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the No field.';
                }
                field(Status; Rec.Status)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Status field.';
                }
                field("Created Date"; Rec."Created Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Created Data field.';
                }
                field("Used for PO"; Rec."Used for PO")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Used for PO field.';
                }
            }
            part(Lines; "Material Request Subform")
            {
                ApplicationArea = All;
                Caption = 'Material Request Subform';
                SubPageLink = "Material Request No." = field("No");
                UpdatePropagation = Both;
            }
            group("Requested By Details")
            {
                field(RequestedByName; Rec.RequestedByName)
                {
                    Caption = 'Name';
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the RequestedByName field.';
                }
                field(Auth; Rec.Auth)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Auth field.';
                }
                field("Staff No."; Rec."Staff No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Staff No. field.';
                }
                field("Date"; Rec."Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Date field.';
                }
            }
            group("Processed By Details")
            {
                field(ProcessedByName; Rec.ProcessedByName)
                {
                    Caption = 'Name';
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the ProcessedByName field.';
                }
                field("Sent for Processing Date"; Rec."Sent for Processing Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Sent for Processing Date field.';
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(CreatePurchaseOrder)
            {
                Caption = 'Create Purchase Order';
                Image = Create;
                ApplicationArea = All;
                ToolTip = 'Create Purchase Order';
                Promoted = true;
                PromotedCategory = Process;
                PromotedOnly = true;

                trigger OnAction()
                var
                    CreatePurchaseOrderReport: Report "Create Purchase Order";
                begin
                    CreatePurchaseOrderReport.SetMaterialRequestHeader(Rec);
                    CreatePurchaseOrderReport.Run();
                end;
            }
        }
    }

}
