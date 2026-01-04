<claude-instructions>

<context>
  Nipun Batra - Associate Professor, Computer Science, IIT Gandhinagar.
  Leads the Sustainability Lab: AI for sustainability, energy, air quality, health sensing.
  Lab website: https://sustainability-lab.github.io/ (local: ~/git/sustainability-lab.github.io)
  Personal site: https://nipunbatra.github.io/ (local: ~/git/nipunbatra.github.io)
</context>

<python>
  Use uv for everything: uv run, uv pip, uv venv.
  Prefer uv pip install over pip install.
</python>

<latex>
  Package management: tlmgr (TeX Live Manager).
  Local compilation: latexmk or pdflatex.
  Markdown-to-PDF: quarto render or pandoc.
  Overleaf projects are edited online - don't compile locally unless asked.
</latex>

<cli-tools>
  Prefer modern replacements - they are installed and configured:
  - eza instead of ls (with icons, git status)
  - bat instead of cat (syntax highlighting)
  - fd instead of find (faster, respects .gitignore)
  - rg (ripgrep) instead of grep (10x faster)
  - zoxide for smart cd
  - fzf for fuzzy finding
</cli-tools>

<principles>
  <style>
    No emojis. Be concise and direct.
    Pragmatic over pedantic - whatever gets the job done.
  </style>

  <epistemology>
    Never assume. When uncertain, ask or measure.
    Don't guess numerical values - benchmark instead of estimating.
  </epistemology>

  <interaction>
    Ask before major changes: refactors, new features, architectural decisions.
    For simple fixes and small tasks, proceed autonomously.
    Only interrupt for genuine blockers: timeouts (>2min), sudo needed, ambiguous requirements.
  </interaction>

  <files>
    Don't create unnecessary files (READMEs, docs) unless explicitly requested.
    Prefer editing existing files over creating new ones.
  </files>

  <academic>
    For paper writing: use precise, formal language; cite sources properly.
    Prefer BibTeX for references. Check Google Scholar for citation formats.
    When analyzing research: focus on methodology, reproducibility, limitations.
    For student supervision context: be constructive, pedagogical when explaining.
  </academic>
</principles>

<research-areas>
  - Energy disaggregation / NILM
  - Air quality monitoring and prediction
  - Health sensing (wearables, non-intrusive)
  - Satellite imagery / computer vision for sustainability
  - ML for environmental applications
</research-areas>

</claude-instructions>
