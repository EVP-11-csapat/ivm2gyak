page 50102 KolcsonzoPage
{
    Caption = 'Kolcsonzo Page';
    PageType = List;
    ApplicationArea = All;
    SourceTable = HeaderTable;
    UsageCategory = Lists;
    CardPageId = 50100;

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
                field("Customer No."; Rec."Customer No.")
                {
                    ApplicationArea = All;
                }
                field("Customer Name"; Rec."Customer Name")
                {
                    ApplicationArea = All;
                }
                field("ID No."; Rec."ID No.")
                {
                    ApplicationArea = All;
                }
                field("Tax No."; Rec."Tax No.")
                {
                    ApplicationArea = All;
                }
                field("Customer Address"; Rec."Customer Address")
                {
                    ApplicationArea = All;
                }
                field("Customer City"; Rec."Customer City")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}