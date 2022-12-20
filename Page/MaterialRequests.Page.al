page 50102 "Material Requests"
{
    ApplicationArea = All;
    Caption = 'Material Requests';
    PageType = List;
    SourceTable = "Material Request Header";
    CardPageId = "Material Request Card";
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
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
                field(RequestedByName; Rec.RequestedByName)
                {
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
                field(ProcessedByName; Rec.ProcessedByName)
                {
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
}
