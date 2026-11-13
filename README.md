# Add Text to PDF

A browser app for adding text (English and Traditional Chinese) onto an existing PDF, then downloading the result. Nothing is uploaded; all processing stays in your browser.

**Use it here:** [https://ksl-blip.github.io/pdf-add-text/](https://ksl-blip.github.io/pdf-add-text/)

## How to use

1. Drop a PDF onto the page, or click to choose a file.
2. Click the page to place a text box, then type. Multiple lines are supported.
3. Drag a box to move it, use the handles to change width or font size, and adjust colour, opacity, bold, or italic in the toolbar.
4. Click **Save PDF** / **下載** to download a new file with the text added on top.

Password-protected PDFs cannot be opened.

## Run locally

```bash
./serve.sh
```

Then open [http://127.0.0.1:8765/](http://127.0.0.1:8765/). Serving over HTTP is recommended, because opening the HTML as a `file://` page can block the font and PDF preview.
