pageextension 50100 "Procurement Extension" extends "Item Card"
{
    layout
    {
        addafter(Replenishment)
        {
            group(Procurement)
            {

                field("International Vendor Number"; Rec."International Vendor Number")
                {
                    Caption = 'International Vendor Number';
                    ToolTip = 'Specifies the International Vendor Number';
                    ApplicationArea = all;
                }
                field("ATA(Aircraft Chapter)"; Rec."ATA(Aircraft Chapter)")
                {
                    Caption = 'ATA (Aircraft Chapter)';
                    ToolTip = 'Spefies the ATA (Aircraft Chapter)';
                    ApplicationArea = all;
                }
                field("IPC (Reference Number)"; Rec."IPC (Reference Number)")
                {
                    Caption = 'IPC (Reference Number)';
                    ToolTip = 'Specifies the IPC (Reference Number)';
                    ApplicationArea = all;
                }
                field(CMM; Rec.CMM)
                {
                    Caption = 'CMM';
                    ToolTip = 'Specifies the CMM';
                    ApplicationArea = all;
                }
                field("Alternative Part 1"; Rec."Alternative Part 1")
                {
                    Caption = 'Alternative Part 1';
                    ToolTip = 'Specifies the Alternative Part 1';
                    ApplicationArea = all;
                }
                field("Alternative Part 2"; Rec."Alternative Part 2")
                {
                    Caption = 'Alternative Part 2';
                    ToolTip = 'Specifies the Alternative Part 2';
                    ApplicationArea = all;
                }
                field("Alternative Part 3"; Rec."Alternative Part 3")
                {
                    Caption = 'Alternative Part 3';
                    ToolTip = 'Specifies the Alternative Part 3';
                    ApplicationArea = all;
                }
                field("Alternative Part 4"; Rec."Alternative Part 4")
                {
                    Caption = 'Alternative Part 4';
                    ToolTip = 'Specifies the Alternative Part 4';
                    ApplicationArea = all;
                }
                field("Type of Spare Part"; Rec."Type of Spare Part")
                {
                    Caption = 'Type of Spare Part';
                    ToolTip = 'Specifies the Type of Spare Part';
                    ApplicationArea = all;
                }
                field("Manufacturer Name"; Rec."Manufacturer Name")
                {
                    Caption = 'Manufacturer Name';
                    ToolTip = 'Specifies the Manufacturer Name';
                    ApplicationArea = all;
                }
                field("Aircraft Type"; Rec."Aircraft Type")
                {
                    Caption = 'International Vendor Number';
                    ToolTip = 'Specifies the International Vendor Number';
                    ApplicationArea = all;
                }
                field("FA Subclass"; Rec."FA Subclass")
                {
                    Caption = 'International Vendor Number';
                    ToolTip = 'Specifies the International Vendor Number';
                    ApplicationArea = all;
                }
                field("FA Class Code"; Rec."FA Class Code")
                {
                    Caption = 'International Vendor Number';
                    ToolTip = 'Specifies the International Vendor Number';
                    ApplicationArea = all;
                }
                field("Inv. Adj Ac"; Rec."Inv. Adj Ac")
                {
                    Caption = 'International Vendor Number';
                    ToolTip = 'Specifies the International Vendor Number';
                    ApplicationArea = all;
                }
                field("Location Code"; Rec."Location Code")
                {
                    Caption = 'International Vendor Number';
                    ToolTip = 'Specifies the International Vendor Number';
                    ApplicationArea = all;
                }
            }
        }
    }
}
