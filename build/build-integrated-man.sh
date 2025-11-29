#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
DIST_DIR="$ROOT_DIR/dist"
BOOK_MD="$DIST_DIR/Sober_Lit_The_Integrated_Man.md"
BOOK_EPUB="$DIST_DIR/Sober_Lit_The_Integrated_Man.epub"
BOOK_PDF="$DIST_DIR/Sober_Lit_The_Integrated_Man.pdf"

mkdir -p "$DIST_DIR"

echo "Concatenating manuscript into $BOOK_MD"
cat \
  "$ROOT_DIR/integrated_man_manuscript.md" \
  "$ROOT_DIR/manuscript/epilogue_integrated_man_in_the_wild.md" \
  "$ROOT_DIR/appendix_references.md" \
  > "$BOOK_MD"

echo "Building EPUB: $BOOK_EPUB"
pandoc \
  --from=markdown-yaml_metadata_block \
  "$BOOK_MD" \
  --metadata title="The Integrated Man" \
  --metadata subtitle="A Systems Manual for Capacity, Agency, and Meaning After 60" \
  --metadata author="Elias (as told to D. R. Dunlap)" \
  --metadata lang="en" \
  --toc --toc-depth=2 \
  --epub-chapter-level=2 \
  -o "$BOOK_EPUB"

echo "Building PDF: $BOOK_PDF"
pandoc \
  --from=markdown-yaml_metadata_block \
  "$BOOK_MD" \
  --metadata title="The Integrated Man" \
  --metadata subtitle="A Systems Manual for Capacity, Agency, and Meaning After 60" \
  --metadata author="Elias (as told to D. R. Dunlap)" \
  --metadata lang="en" \
  --toc --toc-depth=2 \
  --pdf-engine=xelatex \
  -o "$BOOK_PDF"

echo "Build complete."
