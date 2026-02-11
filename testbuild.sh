#!/bin/bash
pandoc master.yaml \
       test.md \
       --pdf-engine=xelatex \
       --lua-filter=divs-to-env.lua \
       -o Georgia_COAM_ClassB_Primer-Latest.pdf

echo "PDF generated: Georgia_COAM_ClassB_Primer-Latest.pdf"
