tableextension 50101 "Purchase Setup Extension" extends "Purchases & Payables Setup"
{
    fields
    {
        field(50100; "Material Request No."; Code[20])
        {
            Caption = 'Material Request No.';
            TableRelation = "No. Series";
            DataClassification = CustomerContent;
        }
    }
}
