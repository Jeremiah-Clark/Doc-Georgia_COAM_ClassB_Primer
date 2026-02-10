#!/bin/bash
pandoc master.yaml \
       00-Frontmatter.md \
       01-Basics_of_COAM.md \
       02-Other_Design_Considerations.md \
       03-Government_Document_Excerpts.md \
       -o output.pdf

echo "PDF generated: output.pdf"
