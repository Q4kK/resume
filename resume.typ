#import "template.typ": *
#show link: underline

#show: resume.with(
	name: "Hamilton A. Ferris",
	title: "",
	accent_color: rgb("58c48a"),
	aside: [
		= Contact
		- #link("mailto:hamiltonaferris@gmail.com")
		- +1 612-391-3470
		- #link("github.com/q4kK")
	]
)

= Education

#entry()[Winona State University][Computer Science][Studying for Bachelor's of Computer Science at Winona State University.][2022-Present]
#entry()[Robbinsdale Armstrong High School][High School Diploma][Graduated with Honors from Robbinsdale Armstrong High School in 2022.][2018-2022]

= Experience

#entry()[Student Systems Administrator][Winona State University][-- Strong grasp of Linux and Windows machines \ -- Worked extensively with Virtual Machines][2023-Present]

#code_entry()[Rust][Even though I only have one year's experience, Rust is my go-to language for scripting.]
#code_entry()[Python][Fluent enough to get the job done. This was the scripting language of choice for my student work at WSU, but I definitely prefer other languages to this.]
#code_entry()[Java][I am proficient in Java, as it is my College's language of choice for the Computer Science program. I prefer python as an OOP program, but I can use Java just fine.]

= Projects

#proj()[#link("https://github.com/Q4kK/BETA_H.E.L.M.E.T")[H.E.L.M.E.T]][HELMET is a chrome extension I made in order to condense news sources for Destiny 2. I built this as a project to learn about web development, web requests, and APIs. My biggest acheivement with this project is my custom API requests to my home server in order to grab other API keys.]
#proj()[#link("gitea.halferr.com")[Halferr.com]][My home lab setup and my gitea repo. Not the most impressive thing I've ever done, but this taught me so much about networking and network security.]
#proj()[Shmame][A funny discord reply bot coded in python. Fairly straightforward, but this taught me how to read documentation, use APIs, and gain experience with asyncronous functions.]