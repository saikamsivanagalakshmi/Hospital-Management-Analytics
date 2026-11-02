# Hospital Management and Operational Performance Analytics Dashboard

## Project status
This package contains the source workbook, a Power BI theme, proposed semantic-model
documentation, DAX definitions, Power Query starter material, data-quality profile,
and project documentation.

**Native PBIX status: NOT CREATED.** Power BI Desktop's native authoring engine is
not available in this execution environment. No PBIX or report screenshots are
included, and none are represented as completed. To finish the native report, open
Power BI Desktop, import the workbook, apply the supplied model and DAX, build the
four pages, then save as `PowerBI/Hospital_Management_Analytics.pbix`.

## Folder map
- `Dataset/`: supplied synthetic Excel workbook.
- `PowerBI/`: theme JSON, DAX script, Power Query starter, model relationship plan.
- `Documentation/`: project overview, problem statement, data model, DAX reference,
  insights/recommendations and data-quality profile.
- `Screenshots/`: intentionally empty until genuine Power BI Desktop screenshots
  are captured.

## Data provenance and limitations
The workbook's Read_Me sheet identifies the records as synthetic training data,
not real patient records. Treat all insights as dataset-specific demonstrations,
not evidence about an actual hospital. Readmission is reported only as repeat
admissions in the selected filter context; a clinically defined 30-day readmission
rate is not claimed.

## Recommended build sequence
1. Get Data > Excel Workbook; load all eight sheets into Power Query.
2. Keep Read_Me as a reference query (disable load if desired); load the seven
   operational tables.
3. Validate data types and key uniqueness; apply trim/clean to text fields.
4. Rename operational tables to the `Dim...` and `Fact...` names in the model plan.
5. Create the one-to-many, single-direction relationships in `Data_Model_and_Relationships.txt`.
6. Create and mark `DimDate`; add measures from `DAX_Measures.dax`.
7. Import `Hospital_Theme.json`; create four report pages as specified in the overview.
8. Validate each KPI against source aggregates before publishing.
