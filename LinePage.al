page 50101 LinePage
{
    Caption = 'Kolcsonzo Line Page';
    PageType = ListPart;
    SourceTable = LineTable;
    AutoSplitKey = true;
    UsageCategory = Lists;
    ApplicationArea = All;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                }
                field("Line No."; Rec."Line No.")
                {
                    ApplicationArea = All;
                }
                field("Item No."; Rec."Item No.")
                {
                    ApplicationArea = All;
                }
                field("Item Name"; Rec."Item Name")
                {
                    ApplicationArea = All;
                }
                field("Item Price"; Rec."Item Price")
                {
                    ApplicationArea = All;
                }
                field("Quantity"; Rec."Quantity")
                {
                    ApplicationArea = All;
                }
                field("Row Price"; Rec."Row Price")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}