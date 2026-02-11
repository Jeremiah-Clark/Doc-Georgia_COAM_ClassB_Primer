#!/bin/bash
pandoc master.yaml 00-Frontmatter.md 01-*.md 02-*.md 03-*.md \
  --pdf-engine=xelatex \
  -o output.pdf

echo "PDF generated: output.pdf"
