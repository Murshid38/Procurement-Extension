pageextension 50103 "Posted Pur Inv Ext" extends "Posted Purchase Invoice"
{
    layout
    {
        addafter("Vendor Invoice No.")
        {
            field("Material Request No"; Rec."Material Request No")
            {
                ApplicationArea = all;
                ToolTip = 'Specifies the Value of Material Request No Series';
            }
        }
    }
}
