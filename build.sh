#!/bin/bash
pandoc --from gfm-alerts \
       --metadata-file master.yaml \
       --template template.tex \
       --pdf-engine=xelatex \
       --lua-filter gfm-to-latex.lua \
       00-Frontmatter.md \
       01-COAM_Regulations.md \
       02-Skill_Test_Considerations.md \
       03-Market_Considerations.md \
       04-GA_Regulation_Documents.md \
       -o Georgia_COAM_ClassB_Primer-Latest.pdf

echo "PDF generated: Georgia_COAM_ClassB_Primer-Latest.pdf"
