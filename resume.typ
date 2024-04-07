#import "template.typ": *
#show link: underline

#show: resume.with(
	aside: [
		= #text(fill: black, underline[Hamilton Ferris])
		= Contact
		- #link("mailto:hamiltonaferris@gmail.com")
		- +1 612-391-3470
		- #link("github.com/q4kK")
	]
)

= About Me
#bio()[I am a hard-working individual with a large interest in computer systems, Linux / NixOS development, and game design. I enjoy learning about new things related to game engines, cybersecurity, and NixOS!
	][
	In my free time, I enjoy walking around my town, gardening, designing game ideas, cooking, and programming my personal api servicing my home lab.
	][
	]

= Education

#entry()[
	Winona State University
	][
	Computer Science
	][
	Currently studying for my Bachelor's of Computer Science at Winona State University.
	][
	2022-Present
	]

= Experience

#entry()[
	Student Systems Administrator
	][
	Winona State University
	][
	-- Strong grasp of Linux systems and Unix command line. \ -- Worked extensively with virtual machines and server hardware. \ -- Experience creating automation, solutions, and deployments using Ansible.
	][
	2023-Present
	]

#code_entry()[
	Python
	][
	Fluent enough to get the job done. I have experience using python to control windows services, powershell scripts, and JSON api requests.
	]
#code_entry()[
	Java
	][
	I am proficient in Java, as it is my college's language of choice for the Computer Science program. Most of my fundamental programming skills were developed in Java, so I'm very comfortable floating around this language.
	]
#code_entry()[
	#link("https://github.com/Q4kK/resume")[This Resume]
	][
	This resume was built using typst, github actions, and a healthy dose of the command line.
	]

