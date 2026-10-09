# Chamber Scoring Sheet

A phone-friendly web tool for scoring plants in growth chambers. Load a spreadsheet
(.xlsx, .xls, .ods, .csv, .tsv), pick the column to step through (plant_id, plate_id, …),
name the columns you want to measure, then enter values plant by plant. Export the
filled sheet as .xlsx or .csv when you are done.

- Tap **Scan** to read the QR code on a plate and jump straight to it. The code may hold just
  the ID (`P017`) or more text that contains it (`plate=P017;exp=12`, a URL).
- Take photos per plant. They are shrunk to 2000 px, named after the plant
  (`P017_2026-10-09_1432_1.jpg`), and exported as a zip; the spreadsheet gets a `photos` column.
- Everything runs in the browser; no data leaves the phone.
- Entries are saved in the browser as you type, so closing the page loses nothing.
- Works offline after the first visit, and can be added to the home screen.

## Run locally

```sh
./serve.sh        # prints a URL to open on a phone in the same network
```

## Updating the hosted version

Edit the files, bump `VERSION` in `sw.js`, then commit and push. Phones pick up the
new version on the second launch after the update.
