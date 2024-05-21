table 50100 HeaderTable
{
    fields
    {
        field(1; "No."; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'No.';
        }
        field(2; "Customer No."; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = Customer."No.";

            trigger OnValidate()
            var
                CustomerTable: Record Customer;
            begin
                if "Customer No." <> '' then begin
                    CustomerTable.SetFilter(CustomerTable."No.", "Customer No.");
                    CustomerTable.Find('-');
                    "Customer Name" := CustomerTable.Name;
                    "Customer Address" := CustomerTable.Address;
                    "Customer City" := CustomerTable.City;
                end;
            end;
        }
        field(3; "ID No."; Code[8])
        {
            DataClassification = ToBeClassified;
        }
        field(4; "Tax No."; Code[10])
        {
            DataClassification = ToBeClassified;
        }
        field(5; "Customer Name"; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(6; "Customer Address"; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(7; "Customer City"; Text[50])
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }

    trigger OnInsert()
    var
        NoMgt: Codeunit NoSeriesManagement;
    begin
        if "No." = '' then begin
            "No." := NoMgt.GetNextNo('KOLCS', Today, true);
        end;
    end;
}