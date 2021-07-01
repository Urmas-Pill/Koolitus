codeunit 50100 Subscribers
{
    trigger OnRun()
    begin

    end;


    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Item Jnl.-Post Line", 'OnBeforeRunWithCheck', '', true, true)]
    local procedure C22_OnBeforeRunWithCheck(var ItemJournalLine: Record "Item Journal Line";
                                             CalledFromAdjustment: Boolean;
                                             CalledFromInvtPutawayPick: Boolean;
                                             CalledFromApplicationWorksheet: Boolean;
                                             PostponeReservationHandling: Boolean;
                                             var IsHandled: Boolean)
    var
        InvVariantErr: Label 'Invalid variant';
    begin
        if IsHandled then
            exit;
        If ItemJournalLine."Variant Code" <> '' then
            Error(InvVariantErr);
        ItemJournalLine."Variant Code" := '';
    end;

    [EventSubscriber(ObjectType::Table, Database::Customer, 'OnAFterValidateEvent', 'Name', true, true)]
    local procedure MyProcedure()
    begin

    end;


}