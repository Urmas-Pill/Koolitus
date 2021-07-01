tableextension 50100 MyCustTableExt extends Customer
{
    fields
    {
        field(50100; "AGP_KOO_Minuväli 1"; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'My Field';
            //CaptionML = ENU = 'My Field', ETI = 'Minu väli';
            TableRelation = Item."No." where(Blocked = const(false));

            trigger OnValidate()
            var
                capMyMessageTxt: Label 'This is my message for customer %1', Comment = '%1-Customer no.';
            begin
                if true then begin
                    Message(capMyMessageTxt, "No.");
                    Message('llll');
                end;
            end;
        }

        field(50101; CreditLinAsText; Text[250])
        {
            Caption = 'CreditLimit';

            trigger OnValidate()
            begin
                Evaluate("Credit Limit (LCY)", CreditLinAsText);
            end;
        }


        modify(Name)
        {
            Caption = 'My Customer Name';
        }


        modify("Credit Limit (LCY)")
        {
            trigger OnAfterValidate()
            begin
                CreditLinAsText := Format("Credit Limit (LCY)");
            end;
        }
        // Add changes to table fields here
    }

    trigger OnBeforeRename()
    begin


    end;

    var
        myInt: Integer;

    procedure iiii(var myvar: Decimal; var recItem: Record Item): Boolean
    begin
        exit(true);
    end;
}