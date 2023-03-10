page 50103 "Material Request Card"
{
    Caption = 'Material Request Card';
    PageType = Document;
    SourceTable = "Material Request Header";
    UsageCategory = Documents;
    ApplicationArea = all;

    layout
    {
        area(content)
        {
            group(General)
            {
                Editable = false;
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
                Editable = false;
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
            action(SendForProcessing)
            {
                Caption = 'Send for Processing';
                Image = SendApprovalRequest;
                ApplicationArea = All;
                ToolTip = 'Send for Processing';
                Promoted = true;
                PromotedCategory = Process;
                PromotedOnly = true;

                trigger OnAction()
                var
                    UserRecord: Record User;
                begin
                    Rec.TestField(RequestedByName);
                    Rec.TestField(Auth);
                    Rec.TestField("Staff No.");
                    Rec.TestField(Date);
                    if Confirm('Do you want to send this for processing?') then begin
                        UserRecord.SetRange("User Name", UserId);
                        UserRecord.FindFirst();
                        Rec.Status := Status::"Sent for Processing";
                        Rec.ProcessedByName := UserRecord."Full Name";
                        Rec."Sent for Processing Date" := Today;
                        Rec.Modify();
                        Message('Sent for processing!');
                    end;
                end;
            }
        }
    }
}
