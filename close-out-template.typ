// Set the background image for the page
#let image-background = image("images/Background-Carbon-Anastasia-Labs-01.jpg", height: 100%)
#set page(
  background: image-background,
  paper :"a4",
  margin: (left : 20mm,right : 20mm,top : 40mm,bottom : 30mm)
)

// Set default text style
#set text(15pt, font: "Barlow")

#v(3cm) // Add vertical space

// Center-align the logo
#align(center)[#box(width: 75%, image("images/Logo-Anastasia-Labs-V-Color02.png"))]

#v(1cm)

// Set text style for the report title
#set text(20pt, fill: white)

// Center-align the report title
#align(center)[#strong[PROJECT CLOSE-OUT REPORT]]

#v(5cm)

// Set text style for project details
#set text(13pt, fill: white)

// Display project details
#table(
  columns: 2,
  stroke: none,
  [*Project Number*], [Placeholder],
  [*Project manager*], [Placeholder],
  [*Date Started*], [Placeholder],
  [*Date Completed*], [Placeholder],
)

// Reset text style to default
#set text(fill: luma(0%))

// Configure the initial page layout
#set page(
  background: none,
  header: [
    // Place logo in the header
    #place(right, dy: 12pt)[#box(image(height: 75%,"images/Logo-Anastasia-Labs-V-Color01.png"))]
    #line(length: 100%) // Add a line under the header
  ],
  header-ascent: 5%,
  footer: [
    #set text(11pt)
    #line(length: 100%) // Add a line above the footer
    #align(center)[*Anastasia Labs* \ Project Close-out Report]
  ],
  footer-descent: 20%
)

// This command can be turned on to justify the text #set par(justify: true)

#show link: underline
#show outline.entry.where(level: 1): it => {
  v(12pt, weak: true)
  strong(it)
}

// Initialize page counter
#counter(page).update(0)

#set page(
  footer: [
    #set text(11pt)
    #line(length: 100%) // Add a line above the footer
    #align(center)[*Anastasia Labs* \ Project Close-out Report]
    #place(right, dy:-7pt)[#counter(page).display("1/1", both: true)]
  ]
)
#v(100pt)

// Configure the outline depth and indentation
#outline(depth:2, indent: 1em)

// Page break
#pagebreak()
#set terms(separator: [: ],hanging-indent: 40pt)
#v(20pt)
/ Project Name: Project Name Placeholder
/ URL: #link("link")[link_placeholder_to_catalyst_proposal]

#v(10pt)
= List of KPIs
#v(10pt)
== Challenge KPIs
#v(10pt)
- *Title Placeholder:* #lorem(35)

- *Title Placeholder:* #lorem(35)

- *Title Placeholder:* #lorem(35)

#v(10pt)
== Project KPIs
#v(10pt)
- *Title Placeholder:* #lorem(50)

- *Title Placeholder:* #lorem(35)

#pagebreak()

#v(40pt)

// Section for Key achievements
= Key achievements <key-achievements>
#v(10pt)

-  #lorem(25)

-  #lorem(25)

=== Placeholder 1
#lorem(25) \

- #link("link1_placeholder")[Link Placeholder] \
- #link("link2_placeholder")[Link Placeholder]
#v(10pt)
// Section for Key learnings
= Key learnings <key-learnings>
#v(10pt)
- #lorem(45)

#v(10pt)
- #lorem(45)
#v(10pt)
#pagebreak()

#v(50pt)

// Section for Next steps
= Next steps <next-steps>
#v(10pt)
- #lorem(15)

- #lorem(15)

- #lorem(15)

= Final thoughts 
#v(10pt)
#lorem(55)

#v(30pt)

// Section for Resources
= Resources
#v(10pt)

#box(height: 100pt, columns(3, gutter: 25pt)[
  == Project 
  #link("link3_placeholder")[Main Github Repo Link Placeholder] \
  #link("link4_placeholder")[Catalyst Proposal Link Placeholder]

  === Placeholder 
  #link("link5_placeholder")[Link Placeholder] \
  #link("link6_placeholder")[Link Placeholder] / #link("link7_placeholder")[Link Placeholder]

  === Placeholder 
  #link("link8_placeholder")[Link Placeholder] \
  #link("link9_placeholder")[Link Placeholder] / #link("link10_placeholder")[Link Placeholder]
])

#v(5pt)

// Center-align close-out video link
#align(center)[== Close-out Video <link-other> #link("link11_placeholder")[Link Placeholder]]
