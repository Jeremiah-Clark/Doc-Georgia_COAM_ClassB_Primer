#!/bin/bash
pandoc master.yaml \
       00-Frontmatter.md \
       01-COAM_Regulations.md \
       02-Market_Considerations.md \
       --pdf-engine=xelatex \
       --lua-filter=divs-to-env.lua \
       -o Georgia_COAM_ClassB_Primer-Latest.pdf

echo "PDF generated: Georgia_COAM_ClassB_Primer-Latest.pdf"
