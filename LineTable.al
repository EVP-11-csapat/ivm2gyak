table 50101 LineTable
{
    fields
    {
        field(1; "No."; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'No.';
        }
        field(2; "Line No."; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(3; "Item No."; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = Item."No.";

            trigger OnValidate()
            var
                ItemTable: Record Item;
            begin
                if "Item No." <> '' then begin
                    ItemTable.SetFilter("No.", "Item No.");
                    ItemTable.Find('-');
                    "Item Name" := ItemTable.Description;
                    "Item Price" := ItemTable."Unit Price";
                    "Row Price" := "Quantity" * "Item Price";
                end;
            end;
        }
        field(4; "Item Name"; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(5; "Item Price"; Decimal)
        {
            DataClassification = ToBeClassified;
            trigger OnValidate()
            begin
                "Row Price" := "Quantity" * "Item Price";
            end;
        }
        field(6; "Quantity"; Integer)
        {
            DataClassification = ToBeClassified;

            trigger OnValidate()
            begin
                "Row Price" := "Quantity" * "Item Price";
            end;
        }
        field(7; "Row Price"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; "No.", "Line No.")
        {
            Clustered = true;
        }
    }
}