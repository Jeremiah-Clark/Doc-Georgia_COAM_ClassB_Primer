#!/bin/bash
pandoc master.yaml \
       00-Frontmatter.md \
       01-Basics_of_COAM.md \
       02-Other_Design_Considerations.md \
       --pdf-engine=xelatex \
       -o Georgia_COAM_ClassB_Primer-Latest.pdf

echo "PDF generated: Georgia_COAM_ClassB_Primer-Latest.pdf"
