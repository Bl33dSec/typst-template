// Main document style function
#let research-report(
  title: "Template",
  author: "Ben",
  date: datetime,
  institution: "Institution",
  body
) = {
  // Page setup
  set page(
    paper: "a4",
    margin: (x: 2.5cm, y: 2.5cm),
    numbering: "1",
  )
  
  // Text formatting
  set text(
    font: "Cantarell",
    size: 11pt,
    lang: "en",
  )
  
  // Paragraph spacing
  set par(
    justify: true,
    )
  
  // Heading styles
  set heading(numbering: "1.1")

  show heading.where(level: 1): it => {
    set text(size: 18pt, weight: "bold")
    block(above: 1.5em, below: 1em, it)
  }
  
  show heading.where(level: 2): it => {
    set text(size: 14pt, weight: "bold")
    block(above: 1.2em, below: 0.8em, it)
  }
  
  // Figure styling
  set figure(gap: 1em)
  
  // Title page
  align(center)[
    #v(2cm)
    #text(size: 24pt, weight: "bold",)[#title]
    #v(1cm)
    #text(size: 14pt)[#author]
    #v(0.5cm)
    #text(size: 12pt)[#institution]
    #v(0.5cm)
    #text(size: 11pt)[#date]
  ]
  
  pagebreak()
  
  body
}
