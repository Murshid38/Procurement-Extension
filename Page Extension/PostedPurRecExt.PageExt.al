pageextension 50104 "Posted Pur Rec Ext " extends "Posted Purchase Receipt"
{
    layout
    {
        addafter("Vendor Order No.")
        {
            field("Material Request No"; Rec."Material Request No")
            {
                ApplicationArea = all;
                ToolTip = 'Specifies the Value of Material Request No Series';
            }
        }
    }
}
