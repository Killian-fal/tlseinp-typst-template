#let setup-page(body) = {
  // link style
  show link.where(): it => {
    if type(it.dest) == str {
      underline(text(fill: rgb("1947BA"), it)) 
    } else {
      it
    }
  }
  
  //customize inline raw code
  show raw.where(block: false) : it =>  text(style: "italic", it)
  show raw.where(block: true): block.with(fill: luma(240), inset: 10pt, radius: 4pt)

  // modify list indent
  set enum(indent: 1em)

  // modify unordered list indent and marker
  set list(indent: 1em, marker: n => [#text("•")])

  // figure
  show figure.where(kind: image): set figure(supplement: "Figure")
  show figure.where(kind: list): set figure(supplement: "Listing")

  // outline
  set outline(depth: 5)
  show outline.entry.where(level: 1): it => {
    v(12pt, weak: true)
    strong(it)
  }

  body
}

#let setup-heading(main-color, it) = {
  let size = (17pt, 14pt, 13pt, 12pt, 11pt)
  let color = (rgb(42, 46, 70), main-color, black, rgb(42, 46, 70), black)
  
  return move(dx: (it.level - 1)*5%, [
    #set text(size.at(it.level - 1), fill: color.at(it.level - 1))
    #if it.level > 3 {
      emph(it)
    } else {
      it
    }
  ])
}