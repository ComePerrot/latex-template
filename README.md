# Latex Template

This project provides an example of structure to work with LaTeX documents.

I designed it for personnal use and I don't pretend it will be usefull for anybody. I nonetheless grant permission for anyone to freely use, modify, and distribute this template.

I personnaly use
[TinyTex](https://yihui.org/tinytex/) (a light-weight distribution of [TeX Live](https://www.tug.org/texlive/)),
so this project is organized assuming `latexmk` will be used to build the document.

## Structure

```
.
├── build
│   └── ...
├── src
│   ├── main.tex
│   ├── references.bib
│   └── ...
├── latexmkrc
├── Makefile
└── README.md
```

- `build/`:
Output folder where the compiled PDF and other generated files will be placed.

- `src/`:
Folder where all the LaTeX source files should be placed, including main.tex and references.

- `latexmkrc`: Configuration file to customize the behavior of `latexmk` when compiling the project.

- `Makefile`: Provides a set of commands for building the LaTeX document. Currently only calls `latexmk`, but could be expanded to handle other tasks like figure generation and integration.

## Github Actions

This project integrates github action to allow for easier sharing of the content of the project:

- [Github Action for Latex](https://github.com/marketplace/actions/github-action-for-latex)
- [GH Release](https://github.com/marketplace/actions/gh-release)
- [GitHub Pages action](https://github.com/marketplace/actions/github-pages-action)

### Deploy PDF to specific Branch
After each successful build of the main branch, the resulting PDF is automatically deployed to a dedicated orphan branch (named **pdf**). This provides easy access to the compiled PDF for reviewers or readers.

### Tag-based Release
Every push to a tagged version triggers the creation of a release. This release contains the PDF associated with that specific version, ensuring a clear and accessible versioning mechanism.
