# Add Text to PDF

A browser app for adding text (English and Traditional Chinese), images, and simple diagrams onto an existing PDF, then downloading the result. Nothing is uploaded; all processing stays in your browser.

**Use it here:** [https://ksl-blip.github.io/pdf-add-text/](https://ksl-blip.github.io/pdf-add-text/)

## How to use

1. Drop a PDF onto the page, or click to choose a file.
2. **Text.** Click the page to place a text box, then type. Multiple lines are supported, including Traditional Chinese.
3. **Edit text.** Click a box to select it. Click **Edit text / 編輯**, click the box again, or double-click it, then change the wording. Size, colour, opacity, bold, and italic are in the toolbar. Drag the blue bar to move the box, use the handles to change width or font size, and press Delete to remove it. Esc (or **Done / 完成**) finishes editing.
4. **Original PDF text.** Turn on **Original / 原文** to highlight horizontal text already in the PDF. Click a highlight to cover those glyphs with a white rectangle and an editable copy in this app's fonts (Noto Sans CJK HK for Chinese, with Helvetica metrics while the font is still loading). Choose a size and colour that suit the worksheet. **Cover / 白底** toggles the white rectangle. Rotated lines stay as they are in the file.
5. **Image.** Click **Image / 圖片** and choose a PNG, JPEG, SVG, WebP, or GIF. You can also drop an image onto the open page. Drag it, resize it with the handles, and delete it like a text box. Corner handles keep the proportions; turn off **Lock / 比例** to stretch. PNG and JPEG files are embedded unchanged, so a sharp diagram stays sharp. SVG is drawn as a vector on screen and saved at about 288 dpi (capped so the file stays a reasonable size).
6. **Shapes.** Choose rectangle, ellipse, line, or arrow, then drag on the page. Hold Shift for a square, a circle, or a 45° line. Set stroke, fill, thickness, and opacity in the toolbar. Shapes are written into the PDF as vectors so they stay crisp on a printed worksheet.
7. Click **Save PDF / 下載** to download `your-file-edited.pdf` with the text, images, and shapes on top of the original pages.

Password-protected PDFs cannot be opened.

## Run locally

```bash
./serve.sh
```

Then open [http://127.0.0.1:8765/](http://127.0.0.1:8765/). Serving over HTTP is recommended, because opening the HTML as a `file://` page can block the font and PDF preview.

## Try the new tools

1. Run `./serve.sh` and open http://127.0.0.1:8765/ (GitHub Pages will show the same UI after this branch is merged).
2. Open a worksheet PDF.
3. Click the page, type a label such as `粒線體`, click **Done / 完成**, then double-click that label and change the words. Confirm drag, resize, colour, and delete still work.
4. Click **Image / 圖片**, choose a PNG or SVG diagram, and drag it into place. Resize a corner and check that the proportions stay put.
5. Choose rectangle, ellipse, line, and arrow, and drag each one onto the page. Hold Shift while drawing a circle or a square.
6. Optional: turn on **Original / 原文** and click a line of existing text. A white cover and an editable copy appear; change the wording.
7. Click **Save PDF / 下載**, open the downloaded file, and confirm the edited text, the diagram, and the shapes are on the page.
