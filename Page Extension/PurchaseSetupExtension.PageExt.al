pageextension 50101 "Purchase Setup Extension" extends "Purchases & Payables Setup"
{
    layout
    {
        addlast("Number Series")
        {
            field("Material Request No."; Rec."Material Request No.")
            {
                ApplicationArea = all;
                ToolTip = 'Specifies the Value of Material Request No Series';
            }
        }
    }
}
