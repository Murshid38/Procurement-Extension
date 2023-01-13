tableextension 50105 "Sales Cue Ext" extends "Sales Cue"
{
    fields
    {
        field(50100; "Pending Material Requests"; Integer)
        {
            Caption = 'Pending Material Requests';

            FieldClass = FlowField;
            CalcFormula = count("Material Request Header" where(Status = filter(Pending)));

        }
        field(50101; "Processing Material Requests"; Integer)
        {
            Caption = 'Processing Material Requests';
            FieldClass = FlowField;
            CalcFormula = count("Material Request Header" where(Status = filter("Sent for Processing")));
        }
        field(50102; "Processed Material Requests"; Integer)
        {
            Caption = 'Processed Material Requests';
            FieldClass = FlowField;
            CalcFormula = count("Material Request Header" where(Status = filter(Processed)));
        }
    }
}
