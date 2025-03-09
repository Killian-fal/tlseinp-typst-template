// show a list of livrables
#let deliverables(heading-name: "Deliverables", dict) = {
  [= #heading-name]
  for (name, desc) in dict {
    list(
      [*#name* - #desc],
    )
  }
}

// show the list of figures in the document
#let figures(heading-name: "Table of figures", kind: image) = {  
  // reset outline style

  show outline.entry.where(level: 1): it => {
    v(12pt, weak: true)
    it.indented(it.prefix(), it.inner())
  }

  if kind == none {
    outline(target: figure, title: [#heading-name])
  } else {
    outline(target: figure.where(kind: kind), title: [#heading-name])
  }
}

// show the list of appendices (if show-outline is true) and includean other file with all appendices
#let appendices(title: "Table of appendices", show-outline: true, import-files) = {
  set heading(numbering: none)
  if show-outline {

    show outline.entry.where(level: 1): it => {
      v(12pt, weak: true)
      it.indented(it.prefix(), it.inner())
    }
    
    context {
      outline(target: selector(heading).after(here()), title: [#title])
    }
  }
    
  import-files
}