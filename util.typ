// Callout box for important notes
#let callout(body, type: "note") = {
  let colors = (
    note: (border: blue, bg: blue.lighten(90%)),
    warning: (border: orange, bg: orange.lighten(90%)),
    important: (border: red, bg: red.lighten(90%)),
  )
  
  let style = colors.at(type)
  
  block(
    fill: style.bg,
    stroke: style.border + 2pt,
    radius: 4pt,
    inset: 12pt,
    width: 100%,
    [*#upper(type):* #body]
  )
}

// Code block with syntax highlighting
#let code-block(code, lang: "python") = {
  block(
    fill: luma(245),
    stroke: luma(200) + 1pt,
    radius: 3pt,
    inset: 10pt,
    width: 100%,
    raw(code, lang: lang)
  )
}
