pageextension 50102 "Purchase Order Ext" extends "Purchase Order"
{
    layout
    {
        addafter("Buy-from Vendor Name")
        {
            field("Material Request No"; Rec."Material Request No")
            {
                ApplicationArea = all;
                ToolTip = 'Specifies the Material Request No';
                Editable = false;
            }
        }
    }
}

