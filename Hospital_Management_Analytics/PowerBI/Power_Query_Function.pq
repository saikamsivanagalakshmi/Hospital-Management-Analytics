// Power Query M template: create parameter pWorkbookPath (Text) first.
// Create one query per section by copying its let...in expression.
// The Read_Me query is informational and can have Enable Load turned off.
let
    Source = Excel.Workbook(File.Contents(pWorkbookPath), null, true),
    GetSheet = (sheetName as text) as table =>
        let
            Raw = Source{[Item=sheetName, Kind="Sheet"]}[Data],
            Headers = Table.PromoteHeaders(Raw, [PromoteAllScalars=true]),
            CleanText = Table.TransformColumns(
                Headers,
                List.Transform(
                    Table.ColumnsOfType(Headers, {type text})[Name],
                    (col) => {col, each if _ = null then null else Text.Trim(Text.Clean(_)), type text}
                )
            )
        in CleanText
in
    GetSheet
