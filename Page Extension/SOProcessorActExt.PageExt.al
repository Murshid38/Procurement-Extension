pageextension 50105 "SO Processor Act Ext" extends "SO Processor Activities"
{
    layout
    {
        addafter("For Release")
        {
            cuegroup(Procurement)
            {
                Caption = 'Procurement';
                field("Pending Material Requests"; Rec."Pending Material Requests")
                {
                    ApplicationArea = Basic, Suite;
                    DrillDownPageID = "Material Requests";
                    ToolTip = 'Specifies pending material requests';
                }
                field("Processing Material Requests"; Rec."Processing Material Requests")
                {
                    ApplicationArea = Basic, Suite;
                    DrillDownPageID = "Processing Material Requests";
                    ToolTip = 'Specifies processing material requests';
                }
                field("Processed Material Requests"; Rec."Processed Material Requests")
                {
                    ApplicationArea = Basic, Suite;
                    DrillDownPageID = "Processed Material Requests";
                    ToolTip = 'Specifies processed material requests';
                }
            }
        }
    }
}
