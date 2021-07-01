table 50100 MyCustTable
{
    Caption = 'table';

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
                    Message('llll');
                end;
            end;
        }

        field(50101; CreditLinAsText; Text[250])
        {
            Caption = 'CreditLimit';

        }

        field(50102; MyOption; Option)
        {
            Caption = 'My options';
            OptionMembers = "Option 1","ooooo","begin";
            OptionCaption = 'Option 1,Option 2,Option 3';
        }

    }

    trigger OnRename()
    var
        thistext: Text;
    begin

        OnRunThisFunction(thistext);
    end;


    var
        myInt: Integer;

    procedure iiii(var myvar: Decimal; var recItem: Record Item): Boolean
    begin
        exit(true);
    end;


    [IntegrationEvent(false, false)]
    local procedure OnRunThisFunction(var parameter1: Text)
    begin
    end;
}