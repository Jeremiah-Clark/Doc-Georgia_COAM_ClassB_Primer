# Doc-Georgia_COAM_ClassB_Primer

A plain-English description of current Georgia COAM regulations as of February 2026 (Sections 01 & 02).
It also provides guidance for those new to this unique market (Section 03).

## Latest Build

**Georgia_COAM_ClassB_Primer-Latest.pdf** is always the most recent build of this document.

## Table of Contents

- **01 COAM Regulations**
  - 01.01 The Basics
  - 01.02 Skill Test
  - 01.03 Hand Count 
  - 01.04 Cash-Out Requirements and Limitations
  - 01.05 Location Requirements
  - 01.06 Other Regulations
  - 01.07 Other Considerations
- **02 Skill Test Considerations**
  - 02.01 Features Common to Skill Test Presentations
  - 02.02 Common Skill Test Types
- **03 Market Considerations**
  - 03.01 Key Differences from Casinos
  - 03.02 What Attracts and Sustains COAM Players

## Project Structure

```
├── 00-Frontmatter.md          # Description (title page is auto-generated)
├── 01-COAM_Regulations.md     # Main regulatory content
├── 02-Skill_Test_Considerations.md
├── 03-Market_Considerations.md
├── 04-GA_Regulation_Documents.md
├── master.yaml                # Document metadata (title, author, settings)
├── template.tex               # LaTeX template — reusable across projects
├── titlepage.tex              # Title page layout — edit per project
├── gfm-to-latex.lua           # Lua filter (GFM admonitions → LaTeX callouts)
├── build.sh                   # Build script
└── images/
    ├── BraveryLogo.png
    └── IMG_6435.JPEG
```

### How It Works

The Markdown files are written in **standard GitHub-Flavored Markdown** and are fully readable on GitHub — including callout boxes, which use GitHub's native `> [!WARNING]` admonition syntax.

When building the PDF, Pandoc converts the GFM source to LaTeX using:

- **`template.tex`** — the reusable base template: callout box styling, headers/footers, typography, font setup. Shared across projects without modification.
- **`titlepage.tex`** — the title page layout, loaded by the template. Edit this per project to change the title page design. Uses `\doctitle`, `\docauthor`, `\docdate`, `\doclogo`, and `\docdisclaimer` commands that are automatically populated from `master.yaml`.
- **`gfm-to-latex.lua`** — a Lua filter that bridges GFM features to LaTeX, converting `> [!WARNING]` blockquotes into styled callout environments, making images full-width, and inserting page breaks before major sections.
- **`master.yaml`** — pure metadata (title, author, date, logo path, disclaimer text, etc.) and build settings.

### Writing Callouts

Use GitHub's admonition syntax. Supported types: `WARNING`, `NOTE`, `TIP`, `IMPORTANT`, `CAUTION`, `SUMMARY`, `EXAMPLE`.

```markdown
> [!WARNING]
>
> This is a warning callout. It renders as a styled box on GitHub
> **and** in the PDF.
```

For best results, put the `[!TYPE]` marker on its own line with a blank `>` line before the content.

### Starting a New Project

To reuse this setup for a new document:

1. Copy `template.tex`, `gfm-to-latex.lua`, and `build.sh` to the new project
2. Create a new `master.yaml` with the new document's metadata
3. Edit `titlepage.tex` to customize the title page layout (or copy and modify this one)
4. Write your content in standard GFM Markdown files

### Building the PDF

Requires [Pandoc](https://pandoc.org/) and a LaTeX distribution with XeLaTeX:

```bash
chmod +x build.sh
./build.sh
```

## Version History

- v1 — Initial document created, October 2022
- v2 — Full reworking and updating, February 2026
  - Renamed "02 Other Design Considerations" to "03 Market Considerations"
  - Pulled content in the new section "02 Skill Test Considerations" from section 01
  - Complete rewrite of section "03 Market Considerations"
  - Updated legal references and regulation details
  - Restructured build system: pure GFM source → LaTeX template + Lua filter
