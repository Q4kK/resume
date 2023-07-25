#let entry(title, subtitle, body, details) = [
    #pad(x: 0pt, top: 4pt, heading(level: 2, title))
    #pad(x: 0pt, top: 0pt, bottom: 6pt, heading(level: 3, subtitle))
    #body

    #text(fill: gray, details)
]

#let code_entry(title, body) = [
    #pad(x: 0pt, top: 0pt, bottom: 4pt, heading(level: 3, title))
    #pad(bottom: 6pt, body)
]

#let proj(title, body) = [
  #pad(x: 0pt, top: 4pt, bottom: 2pt, heading(level: 2, title))
  #text(fill: black, body)
]

#let resume(name: "", title: "", accent_color: rgb("f4ac04"), heading_color: rgb("007773"), margin: 100pt, aside: [], body) = {
  set page(margin: 0pt)
  set text(font: "Inria Sans", size: 12pt)
  set block(above: 0pt, below: 0pt)
  set par(justify: true)

  {
    show heading.where(level: 1): set text(size: 35pt)
    show heading.where(level: 2): set text(size: 18pt)
    box(
      fill: accent_color,
      width: 100%,
      outset: 0pt,
      inset: (rest: margin, bottom: 0.4 * margin),
      stack(
        spacing: 10pt,
        heading(level: 1, upper(name)), heading(level: 2, upper(title)))
    )
  }

  show heading: set text(fill: heading_color)

  grid(
    columns: (2fr, 1fr),
    column-gutter: 0.4 * margin,
    block(spacing: 10pt, outset: 0pt, inset: (top: 0.4 * margin, right: 0pt, rest: margin), width: 100%, {
        set block(above: 10pt)
        show heading.where(level: 1): it => style(s => block([
          #text(size: 18pt, upper(it))
          #place(top + right, dy: 7pt, dx: 10pt + 1000%, line(stroke: accent_color, length: 1000%))
        ]))
        body
    }),
    box(
      fill: accent_color.lighten(80%),
      outset: 0pt,
      inset: (0.4 * margin),
      height: 100%,
      width: 100%,
      {
        set block(above: 20pt)
        show heading: it => align(right, upper(it))
        set list(marker: "")
        show list: it => {
          set par(justify: false)
          align(right, it)
        }
        aside
      }
    ),
  )
}