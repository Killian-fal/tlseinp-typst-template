#import "../media.typ": *
#import "../lib.typ": *
#import "lib-page.typ": *

#let basic(
  title: "Toulouse INP Template",
  subtitle: "Subtitle",
  page-header: "Toulouse INP Template",
  author: "Your name",
  group: none,
  year: "2024",
  class: none,
  formation-image: formation.INP,
  project-image: none,
  lang: "en",
  body,
) = {

  // Set the document's basic properties.
  set document(author: author, title: title)
  set text(lang: lang, 11pt)
  show: setup-page

  // First page
  align(center + horizon, text(2.7em, weight: "semibold", title))
  v(2em, weak: true)
  align(center, text(1.7em, weight: "regular", subtitle))

  if group != none {
    align(center + bottom, text(1.3em, weight: "light", group))
    v(1em, weak: true)
  }
  align(center + bottom, text(1.3em, weight: "light", author))
  v(4em, weak: true)
  align(center + bottom, text(1.3em, weight: "light", class))
  v(1em, weak: true)
  align(center + bottom, text(1.3em, weight: "light", year))
  
  set image(width: 7cm)
  place(top + left, formation-image)
  if project-image != none {
    place(top + right, project-image)
  }

  // heading numberin
  set text(hyphenate: false)
  set heading(numbering: (..n) => {
    if n.pos().len() <= 5 {
      numbering("1.1", ..n)
    } 
  })
  show heading: it => {
    set text(weight: "semibold")
    smallcaps(it+ v(0.5em))
  }

  pagebreak()

  // Main body.
  set page(
    header: {
      emph()[#page-header #h(1fr) #author]
      line(length: 100%)
    },
    numbering: "1", 
    number-align: center,
  )
  
  set par(first-line-indent: 1em, justify: true)
  
  body
}