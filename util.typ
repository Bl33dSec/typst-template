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
#let codeblock(
  lang: none,
  title: none,
  numbered: false,
  fill: rgb("#f6f8fa"),
  stroke: rgb("#d0d7de"),
  radius: 4pt,
  padding: 10pt,
  body
) = {
  block(
    width: 100%,
    fill: fill,
    stroke: stroke,
    radius: radius,
    breakable: true,
    clip: true,
    {
      if title != none {
        block(
          width: 100%,
          fill: rgb("#e5e9ed"),
          inset: (x: padding, y: 6pt),
          radius: (top: radius),
          text(
            size: 0.9em,
            weight: "semibold",
            title
          )
        )
      }
      
      block(
        width: 100%,
        inset: padding,
        spacing: 0pt,
        above: 0pt,
        below: 0pt,
        {
          set par(justify: false)
          set raw(block: true, lang: lang)
          body
        }
      )
    }
  )
}

