#!/bin/bash
pandoc master.yaml \
       test.md \
       --pdf-engine=xelatex \
       --lua-filter=callouts.lua \
       -o Georgia_COAM_ClassB_Primer-Latest.pdf

echo "PDF generated: Georgia_COAM_ClassB_Primer-Latest.pdf"
