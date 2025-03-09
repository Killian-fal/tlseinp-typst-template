#import "../media.typ": *
#import "../lib.typ": *
#import "lib-page.typ": *

#let ensiacet(
  title: "ENSIACET Template Version",
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
    background: background.ENSIACET_FIRST,
    footer: text(1.2em, fill: white, "www.ensiacet.fr"),
    margin: (top: 17%)
  )

  
  v(38em, weak: false)
  align(horizon, move(dx: 12%, text(2.7em, weight: "semibold", fill: white, [#title])))
  v(1.5em, weak: true)
  align(text(1.5em, weight: "regular", fill: white, move(dx: 12%, [#subtitle])))
  v(1.5em, weak: true)
  align(text(1.3em, weight: "regular", fill: white, move(dx: 12%, [#author])))

  // heading
  show heading.where(): it => setup-heading(rgb(238, 114, 2), it)

  pagebreak()

  let footerSize = 0.7em
  let footerColor = rgb(73, 73, 73)
  // Main body.
  set page(
    background: background.ENSIACET_OTHER,
    header: image("../media/logo/Toulouse-INP-A7.jpg", width: 45%),
    footer: text(footerSize, weight: "black", fill: footerColor, "TOULOUSE INP-ENSIACET") + text(footerSize, fill: footerColor, " • 4, allée Emile Monso - CS 44362 31030 TOULOUSE Cedex 4, France • +33 (0)5 34 32 33 00 • ") + text(footerSize, weight: "black", fill: footerColor, "www.ensiacet.fr"),
    numbering: "1", 
    number-align: center,
  )

  body
}