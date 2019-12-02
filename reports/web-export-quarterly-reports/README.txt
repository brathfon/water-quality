11/30/2019
This is for the files that are used to do the quarterly releases.  Currently there are 2 ways to create
these files.  The script "create-web-export-file-based.js" in the ~/scripts directory and
the ~/db/reports/create-webexport.js.  The later relies on the development database being populated
through a process with multiple scripts in ~/db/xfer and ~/db/mysql.

These two scripts will be used in parallel to verify the file-based script and keep the dev database
current.  The lab outputs should be exactly the same and only the file-based script does the "*all-labs*" file.

Eventually report outputs that are being saved in ~/db/reports may be moved here.