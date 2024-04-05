#let resume(
	name: "",
	accent_color: rgb("f4ac04"),
	heading_color: rgb("007773"),
	aside: [],
	margin: 0pt,
	body
) = {
	set page(margin: 0pt)
	set text(font: "Inara Sans", size: 12pt)
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
				heading(level: 1, upper(name))
			)
		)
	}
}