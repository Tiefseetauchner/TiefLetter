#!/bin/bash
set -e

function createImage() {
  typst c examples/$1.typ examples/$1.teco.pdf --font-path fonts/

  magick -density 600 examples/$1.teco.pdf -background white -alpha off -resize 25% "examples/$1.png" # 150dpi -> 1240x1754 for A4
  # magick -density 150 examples/$1.c.pdf -background white -alpha off "test/page.png" # 150dpi -> 1240x1754 for A4

  echo "Created $1.png"
}

createImage "offer"
createImage "invoice"
createImage "document-preset"
createImage "letter-preset"