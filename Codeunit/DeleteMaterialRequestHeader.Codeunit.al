codeunit 50101 DeleteMaterialRequestHeader
{
    trigger OnRun()
    begin
        DeleteMaterialRequestHeaderRecords();
    end;

    local procedure DeleteMaterialRequestHeaderRecords()
    var
        MaterialRequestHeaderRecord: Record "Material Request Header";
    begin
        MaterialRequestHeaderRecord.DeleteAll();
    end;
}
