#import "../media.typ": *
#import "../lib.typ": *
#import "lib-page.typ": *

#let enseeiht(
  title: "ENSEEIHT Template Version",
  subtitle: "Subtitle",
  author: "Your name",
  lang: "en",
  body,
) = {

  // Set the document's basic properties.
  set document(author: author, title: title)
  set text(lang: lang, 11pt)
  show: setup-page

  // First page
  set page(
    background: background.N7_FIRST,
    footer: text(1.2em, fill: white, "www.enseeiht.fr"),
    margin: (top: 17%)
  )

  
  v(38em, weak: false)
  align(horizon, move(dx: 12%, text(2.7em, weight: "semibold", fill: white, [#title])))
  v(1.5em, weak: true)
  align(text(1.5em, weight: "regular", fill: white, move(dx: 12%, [#subtitle])))
  v(1.5em, weak: true)
  align(text(1.3em, weight: "regular", fill: white, move(dx: 12%, [#author])))

  // heading
  show heading.where(): it => setup-heading(rgb(25, 71, 186), it)

  pagebreak()

  let footerSize = 0.7em
  let footerColor = rgb(73, 73, 73)
  // Main body.
  set page(
    background: background.N7_OTHER,
    header: image("../media/logo/Toulouse-INP-N7.jpg", width: 45%),
    footer: text(footerSize, weight: "black", fill: footerColor, "TOULOUSE INP-ENSEEIHT") + text(footerSize, fill: footerColor, " • 2 rue Charles Camichel • BP 7122 • 31071 Toulouse Cedex 7, France • +33 (0)5 34 32 20 00 • ") + text(footerSize, weight: "black", fill: footerColor, "www.enseeiht.fr"),
    numbering: "1", 
    number-align: center,
  )

  body
}