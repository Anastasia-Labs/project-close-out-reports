#let image-background = image("../images/Background-Carbon-Anastasia-Labs-01.jpg", height: 100%)
#set page(
  background: image-background,
  paper: "a4",
  margin: (left: 20mm, right: 20mm, top: 40mm, bottom: 30mm)
)

#set text(15pt, font: "Barlow")

#v(3cm)

#align(center)[#box(width: 75%, image("../images/Logo-Anastasia-Labs-V-Color02.png"))]

#v(1cm)

#set text(20pt, fill: white)

#align(center)[#strong[Design Patterns - Final Milestone]\
#set text(15pt); Project Close-out Report]
#v(5cm)

#set text(13pt, fill: white)

#table(
  columns: 2,
  stroke: none,
  [*Project Number*], [1000012],
  [*Project manager*], [Jonathan Rodriguez],
  [*Date Started*], [2023, October],
  [*Date Completed*], [2024, August],
)

#set text(fill: luma(0%))

#set page(
  background: none,
  header: [
    #place(right, dy: 12pt)[#box(image(height: 75%,"../images/Logo-Anastasia-Labs-V-Color01.png"))]
    #line(length: 100%)
  ],
  header-ascent: 5%,
  footer: [
    #set text(11pt)
    #line(length: 100%)
    #align(center)[*Anastasia Labs* \ Project Close-out Report]
  ],
  footer-descent: 20%
)

#show link: underline
#show outline.entry.where(level: 1): it => {
  v(12pt, weak: true)
  strong(it)
}

#counter(page).update(0)
#set page(
  footer: [
    #set text(11pt)
    #line(length: 100%)
    #align(center)[*Anastasia Labs* \ Project Close-out Report]
    #place(right, dy: -7pt)[#counter(page).display("1/1", both: true)]
  ]
)

#v(100pt)


#outline(depth: 2, indent: 1em)
#pagebreak()
#set terms(separator: [: ], hanging-indent: 40pt)

#v(20pt)

/ Project Name: Streamlining Development: A User-Friendly Smart Contract Library \
for Plutarch and Aiken Design Patterns & Efficiency

/ URL: #link("https://projectcatalyst.io/funds/10/f10-development-and-infrastructure/anastasia-labs-streamlining-development-a-user-friendly-smart-contract-library-for-plutarch-and-aiken-design-patterns-and-efficiency")[Project Catalyst Proposal]
#v(30pt)
= List of KPIs
#v(10pt)
#box(height: 360pt,
  stroke: none,
  columns(2, gutter: 21pt)[
    == Challenge KPIs
    === Performance Optimization
    - Optimized #link("https://github.com/Anastasia-Labs/design-patterns/blob/main/enum-redeemers/ENUM-REDEEMERS.md")[mapping functions] to reduce complexity and cost of smart contracts
    - Managed #link("https://github.com/Anastasia-Labs/design-patterns/blob/main/merkelized-validators/merkelized-validators.md")[script size and execution budgets] to reduce transaction fees
    - #link("https://github.com/Anastasia-Labs/design-patterns/blob/main/stake-validator/STAKE-VALIDATOR.md")[Reduced ExUnits cost] compared to traditional checks
    === Security Enhancement
    - Measures against known exploits like #link("https://github.com/Anastasia-Labs/design-patterns/blob/main/stake-validator/STAKE-VALIDATOR.md")[double satisfaction]
    - Comprehensive validation by incorporating #link("https://github.com/Anastasia-Labs/design-patterns/blob/main/utxo-indexers/UTXO-INDEXERS.md")[UTxO indices] within the redeemer
    === Consistency 
    - Predictable #link("https://github.com/Anastasia-Labs/design-patterns/blob/main/strict-and-checks/STRICT-AND-CHECKS.md")[compilation outcomes]
    - Provided a normalized representation of #link("https://github.com/Anastasia-Labs/design-patterns/blob/main/validity-range-normalization/VALIDITY-RANGE-NORMALIZATION.md")[validity ranges]
== Project KPIs
=== Library Completeness 
- Inclusion of key #link("https://github.com/Anastasia-Labs/design-patterns/tree/main/enum-redeemers")[design patterns] for #link("https://github.com/Anastasia-Labs/plutarch-design-patterns/tree/main")[Plutarch] and #link("https://github.com/Anastasia-Labs/aiken-design-patterns/tree/main")[Aiken]
=== Documentation Quality
- High-quality, detailed documentation for each smart contract library with detailed flow charts/images displaying solution architectures
=== Engagement
- Active participation in social networks, GitHub, and community events
  ]
)

#pagebreak()

#v(40pt)
= Key achievements <key-achievements>
#v(10pt)
=== Development of Comprehensive Libraries
User-friendly libraries for Plutarch and Aiken, simplifying complex design patterns without sacrificing readability and circumventing repetitive boilerplate. 

A comprehensive testing suite has been developed utilizing unit and property based tests. More on it can be observed on our extensive #link("https://drive.google.com/file/d/1Oju4cMF7jrIjh5VbIueTyp45T45g1159/view?usp=sharing")[*Milestone-4 report*]

Exemplary use of these libraries are found for 7 different validator scenarios in: \
\
- #link("https://github.com/Anastasia-Labs/aiken-design-patterns/tree/main/validators")[*For Aiken*] \
- #link("https://github.com/Anastasia-Labs/plutarch-design-patterns/blob/main/src/Plutarch/MerkelizedValidator.hs")[*For Plutarch*]

=== Engagement
This year presentation on design patterns was given in Buidlfest, a community event specifically scheduled for 100 developers on Cardano. Communication with the developer community is really important to us, as we create tools specifically to make development on Cardano easier day by day.

Examples of the #link("https://docs.google.com/document/d/1DV6hN0lrFCPdHLbMYQHwmUUv_VsRQYvKjSe-U7k1x9s/edit?usp=sharing")[feedback we received during our presentations/on-stage] (Toulouse, Buidlfest) 

#v(10pt)
= Key learnings <key-learnings>
#v(15pt)
=== User Feedback
Incorporated feedback from developers/users to improve the libraries
=== Process Improvements
Development process has been improved based on insights gained during the project development 
=== Best Practices
Documenting best practices for smart contract development and future maintainability

#pagebreak()

#v(50pt)
= Next steps <next-steps>
#v(10pt)
=== Feature Enhancements
We will maintain and further optimize our existing libraries created for the developers. 

Additional design pattern libraries that streamline the implementation process for other existing smart contract languages might come to life as the needs of our developer community requires it. (Such as #link("https://github.com/Anastasia-Labs/scalus-design-patterns")[Scalus], Helios, Plu-ts ...)

=== Expansion
Targeting a wider developer audience through increased outreach. We are utilizing our design patterns in other tools we develop on Cardano too. For example, Lucid Evolution will be displaying design patterns in our tutorial series. We strive to create value by making our tools complimentary to each

#v(10pt)
= Final thoughts 
#v(10pt)
The project successfully addressed its purpose by creating a freely accessible library of design patterns for Cardano developers. Initiatives alike help best practices and already solved puzzles of development on Cardano spread and create ecosystem-wide returns. 

We would like to believe our long-lasting open-source efforts have simplified design decisions and improved developer accessibility.
#v(15pt)
= Resources
#v(10pt)
#box(height: 50pt,
  columns(3, gutter: 1pt)[
    == Project 
    - #link("https://github.com/Anastasia-Labs/design-patterns")[GitHub Repository] \
    - #link("https://projectcatalyst.io/funds/10/f10-development-and-infrastructure/anastasia-labs-streamlining-development-a-user-friendly-smart-contract-library-for-plutarch-and-aiken-design-patterns-and-efficiency")[Catalyst Proposal]
    === Aiken
    - #link("https://github.com/Anastasia-Labs/aiken-design-patterns")[Aiken - Design Patterns] \
    - #link("https://github.com/Anastasia-Labs/aiken-design-patterns/blob/main/assets/images/test_report.png")[Test Results] / #link("https://github.com/Anastasia-Labs/aiken-design-patterns/blob/main/assets/images/aiken-design-patterns.gif")[GIF]

    === Plutarch
    - #link("https://github.com/Anastasia-Labs/plutarch-design-patterns")[Plutarch - Design Patterns] \
    - #link("https://github.com/Anastasia-Labs/plutarch-design-patterns/blob/main/assets/images/test_report.png")[Test Results] / #link("https://github.com/Anastasia-Labs/plutarch-design-patterns/blob/main/assets/images/plutarch-design-patterns.gif")[GIF]
  ]
)

#v(15pt)
#align(center)[== Close-out Video <link-other>
- #link("https://youtu.be/k6ovQpRyUOM")[Youtube]]

