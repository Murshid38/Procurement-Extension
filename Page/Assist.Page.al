page 50108 Assist
{
    ApplicationArea = All;
    UsageCategory = Administration;

    actions
    {
        area(Processing)
        {
            action(DeleteMaterialRequestLineRecords)
            {
                Caption = 'Delete Material Request Lines';
                Image = Delete;
                ApplicationArea = All;
                ToolTip = 'Delete Material Request Lines';
                Promoted = true;
                PromotedCategory = Process;
                PromotedOnly = true;

                trigger OnAction()
                var
                    DeleteMaterialRequestLineCodeunit: Codeunit DeleteMaterialRequestLine;
                begin
                    DeleteMaterialRequestLineCodeunit.Run();
                end;
            }
            action(DeleteMaterialRequestHeaderRecords)
            {
                Caption = 'Delete Material Request Header';
                Image = Delete;
                ApplicationArea = All;
                ToolTip = 'Delete Material Request Header';
                Promoted = true;
                PromotedCategory = Process;
                PromotedOnly = true;

                trigger OnAction()
                var
                    DeleteMaterialRequestHeaderCodeunit: Codeunit DeleteMaterialRequestHeader;
                begin
                    DeleteMaterialRequestHeaderCodeunit.Run();
                end;
            }
        }
    }
}