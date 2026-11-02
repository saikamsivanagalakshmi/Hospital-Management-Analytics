/* Power Query starter script.
   In Power BI: Get Data > Excel > Transform Data is the easiest route.
   Load the seven operational tables and Read_Me for documentation.
   Set the parameter pWorkbookPath to the local workbook path.
*/
let
    Source = Excel.Workbook(File.Contents(pWorkbookPath), null, true),
    Departments = Source{[Item="Departments",Kind="Sheet"]}[Data]
in
    Departments
