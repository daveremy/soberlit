# The Integrated Man Project

This repo holds drafts, research logs, and build scripts for a personal, evidence‑first book project aimed at men 60+ who want to treat the last decades of their life as seriously as their careers.

The project now has **two editions** built on a shared research spine:

- **Manual Edition:**  
  *The Integrated Man: A Systems Manual for Capacity, Agency, and Meaning After 60*  
  – A straight, systems‑oriented manual in Elias’s voice (older mentor), with Parts I–V and toolkits for body, mind, relationships, spirit, money, environment, and alcohol‑free living.

- **Trail Edition (Story):**  
  *The Integrated Man on the Arizona Trail* (working title)  
  – A narrative version told in first person during a full Arizona Trail thru‑hike at 64, with Elias appearing as an on‑trail sensei/mentor. Same ideas, delivered through scenes and conversations.

The original “Sober Lit” drafts remain in `drafts/` and `archive/` as V1 research and material; the Integrated Man structure supersedes them for forward work.

## Structure

- `integrated_man_outline.md` – current high‑level outline for the Manual Edition.  
- `integrated_man_manuscript.md` – concatenated manual draft (Foreword + Parts I–V).  
- `manuscript/` – individual manual‑edition chapter files and toolkits.  
- `trail_edition/` – outline, style guide, and draft chapters for the Arizona Trail story edition.  
- `appendix_references.md` – annotated, tagged references (tags like `[Wood2018]` used inline).  
- `research_log.md` – study notes, quotes, effect sizes, and how we intend to use them.  
- `archive/`, `drafts/` – earlier Sober Lit drafts and V1 content kept for reference.  
- `build/` – scripts to build EPUB/PDF (Manual Edition currently via `build/build-integrated-man.sh`).  
- `dist/` – built artifacts (legacy Sober Lit EPUB/PDF/HTML plus new Integrated Man builds).

## Citations

Drafts use tags (e.g., `[Wood2018]`, `[ProtAge2013]`) that link to `appendix_references.md` for full citations and summaries. The log keeps verbatim quotes/effects for traceability.

## Status (Manual Edition)

- Foreword + Part I (Orientation) drafted in Elias’s voice.  
- Part II (Audit) mapped and integrated from earlier Sober Lit evidence chapters.  
- Part III (Blueprint) drafted: mortality, emotional OS, late‑life athlete identity, chosen adversity, connection/crew, curiosity/learning, inner life.  
- Part IV (Toolkits) drafted: body & capacity, mind & mood, social & relationship, spirit & meaning, money & optionality, order & environment, alcohol‑free implementation, food & supplements.  
- Part V (Integration Manual) drafted: first two weeks, 30/60/90‑day build, long game.  
- Epilogue vignette drafted; references appended and major scientific claims tagged or softened.

## Status (Trail Edition)

- Narrative outline and style guide in `trail_edition/`.  
- Prologue (Mile 0 on the Arizona Trail) drafted; Chapters 1–2 drafted (early miles, autumn in the body, trail family, Elias as on‑trail mentor).

## Git Workflow

This repo is intended to be under regular version control. Typical cycle:

```bash
git status
git add .
git commit -m "Summarize the change, e.g. add trail edition Prologue/Ch1/Ch2"
git push
```

Use branches as needed for larger experiments; keep `main` in a buildable state.  
`build/build-integrated-man.sh` regenerates the Manual Edition EPUB/PDF into `dist/`.
