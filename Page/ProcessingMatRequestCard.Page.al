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
                Visible = IsVisibleCreate;

                trigger OnAction()
                var
                    CreatePurchaseOrderReport: Report "Create Purchase Order";
                begin
                    CreatePurchaseOrderReport.SetMaterialRequestHeader(Rec);
                    CreatePurchaseOrderReport.Run();
                end;
            }
            action(OpenTheDocument)
            {
                Caption = 'Open the document';
                Image = Open;
                ApplicationArea = All;
                ToolTip = 'Open the purchase order';
                Promoted = true;
                PromotedCategory = Process;
                PromotedOnly = true;
                Visible = IsVisibleDoc;
                RunObject = page "Purchase Order";
                RunPageLink = "Material Request No" = field(No);
            }

            // action(Post)
            // {
            //     ApplicationArea = Suite;
            //     Caption = 'P&ost';
            //     Ellipsis = true;
            //     Image = PostOrder;
            //     Promoted = true;
            //     PromotedCategory = Category6;
            //     PromotedIsBig = true;
            //     ShortCutKey = 'F9';
            //     ToolTip = 'Finalize the document or journal by posting the amounts and quantities to the related accounts in your company books.';

            //     trigger OnAction()
            //     begin
            //         PostDocument(CODEUNIT::"Purch.-Post (Yes/No)", "Navigate After Posting"::"Posted Document");
            //     end;
            // }
        }
    }

    trigger OnOpenPage()
    begin
        if (Rec.Status = Rec.Status::Processed) then begin
            CurrPage.Caption('Processed Material Request Card Page');
            IsVisibleCreate := false;
            IsVisibleDoc := true;
        end
        else begin
            IsVisibleCreate := true;
            IsVisibleDoc := false;
        end;
    end;

    var
        IsVisibleCreate: Boolean;
        IsVisibleDoc: Boolean;
}
