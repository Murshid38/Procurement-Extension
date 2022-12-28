codeunit 50100 DeleteMaterialRequestLine
{
    trigger OnRun()
    begin
        DeleteMaterialRequestLineRecords();
    end;

    local procedure DeleteMaterialRequestLineRecords()
    var
        MaterialRequestLineRecord: Record "Material Request Line";
    begin
        MaterialRequestLineRecord.DeleteAll();
    end;
}
