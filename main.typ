#import "style.typ": *

#let title = "Research Report Title"
#let author = "Your Name"
#let date = datetime.today().display()
#let institution = "Your Institution"

#show: research-report.with(
  title: title,
  author: author,
  date: date,
  institution: institution,
)

#include "sections/abstract.typ"

#pagebreak()

#outline(indent: auto)

#pagebreak()

#include "sections/introduction.typ"

#pagebreak()

#include "sections/methodology.typ"

#pagebreak()

#include "sections/results.typ"

#pagebreak()

#include "sections/conclusion.typ"