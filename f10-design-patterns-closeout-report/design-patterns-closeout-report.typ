#let image-background = image("images/Background-Carbon-Anastasia-Labs-01.jpg", height: 100%)
#set page(
  background: image-background,
  paper: "a4",
  margin: (left: 20mm, right: 20mm, top: 40mm, bottom: 30mm)
)

#set text(15pt, font: "Barlow")

#v(3cm)

#align(center)[#box(width: 75%, image("images/Logo-Anastasia-Labs-V-Color02.png"))]

#v(1cm)

#set text(20pt, fill: white)

#align(center)[#strong[PROJECT CLOSE-OUT REPORT]]

#v(5cm)

#set text(13pt, fill: white)

#table(
  columns: 2,
  stroke: none,
  [*Project Number*], [1000012],
  [*Project manager*], [Jonathan Rodriguez],
  [*Date Started*], [Oct 8, 2023],
  [*Date Completed*], [Placeholder],
)

#set text(fill: luma(0%))

#set page(
  background: none,
  header: [
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

#show link: underline
#show outline.entry.where(level: 1): it => {
  v(12pt, weak: true)
  strong(it)
}

#counter(page).update(0)
#set page(
  footer: [
    #set text(11pt)
    #line(length: 100%) // Add a line above the footer
    #align(center)[*Anastasia Labs* \ Project Close-out Report]
    #place(right, dy: -7pt)[#counter(page).display("1/1", both: true)]
  ]
)

#v(100pt)

// Configure the outline depth and indentation
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
#box(height: 420pt,
  columns(2, gutter: 11pt)[
    == Challenge KPIs
    === Performance Optimization
    - Streamlined and optimized #link("https://github.com/Anastasia-Labs/design-patterns/blob/main/enum-redeemers/ENUM-REDEEMERS.md")[mapping functions] to reduce complexity and cost of smart contracts
    - Efficiently managed #link("https://github.com/Anastasia-Labs/design-patterns/blob/main/merkelized-validators/merkelized-validators.md")[script size and execution budgets] to reduce transaction fees
    - #link("https://github.com/Anastasia-Labs/design-patterns/blob/main/stake-validator/STAKE-VALIDATOR.md")[Reduced ExUnits cost] compared to traditional checks
    === Security Enhancement
    - Implemented measures against known exploits like #link("https://github.com/Anastasia-Labs/design-patterns/blob/main/stake-validator/STAKE-VALIDATOR.md")[double satisfaction]
    - Ensured comprehensive validation by incorporating #link("https://github.com/Anastasia-Labs/design-patterns/blob/main/utxo-indexers/UTXO-INDEXERS.md")[UTxO indices] within the redeemer
    === Consistency 
    - Predictable and optimized #link("https://github.com/Anastasia-Labs/design-patterns/blob/main/strict-and-checks/STRICT-AND-CHECKS.md")[compilation outcomes]
    - Provided a normalized representation of #link("https://github.com/Anastasia-Labs/design-patterns/blob/main/validity-range-normalization/VALIDITY-RANGE-NORMALIZATION.md")[validity ranges]

    == Project KPIs
    === Library Completeness 
    - Inclusion of key design patterns for Plutarch and Aiken
    === Documentation Quality
    - High-quality, detailed documentation for each smart contract library with detailed flow charts/images displaying solution architectures
    === Engagement
    - Active participation in social networks, GitHub, and community events can be observed through various means like 
  ]
)

#pagebreak()

#v(40pt)
= Key achievements <key-achievements>
#v(10pt)
=== Development of Comprehensive Libraries
User-friendly libraries for Plutarch and Aiken, simplifying complex design patterns without sacrificing readability and circumventing repetitive boilerplate

Exemplary use of these libraries are found for 7 different validator scenarios in: \
\
- #link("https://github.com/Anastasia-Labs/aiken-design-patterns/tree/main/validators")[*For Aiken*] \
- #link("https://github.com/Anastasia-Labs/plutarch-design-patterns/blob/main/src/Plutarch/MerkelizedValidator.hs")[*For Plutarch*]

=== Engagement
Communication with the developer community (A presentation on design patterns was given in Buidlfest), which will potentially lead to increased adoption and valuable feedback. 

Examples of the feedback we have received are found #link("https://docs.google.com/document/d/1DV6hN0lrFCPdHLbMYQHwmUUv_VsRQYvKjSe-U7k1x9s/edit?usp=sharing")[here]  

#v(10pt)
= Key learnings <key-learnings>
#v(15pt)
=== User Feedback
Actively incorporated feedback from developers/users to improve the libraries
=== Process Improvements
Improved the development process based on insights gained during the project
=== Best Practices
Further identified and documented best practices for smart contract development. An extensive documentation  
#pagebreak()

#v(50pt)
= Next steps <next-steps>
#v(10pt)
=== Feature Enhancements
Maintain and further optimize existing libraries created for the developers. 

Additional design pattern libraries that streamline the implementation process for other existing smart contract languages. (Such as #link("https://github.com/Anastasia-Labs/scalus-design-patterns")[Scalus])

=== Expansion
Targeting a wider developer audience through increased outreach 
#v(10pt)
= Final thoughts 
#v(10pt)
The project successfully addressed its purpose by creating a freely accessible library of design patterns for Cardano developers. Initiatives alike help best practices and already solved puzzles of development on Cardano spread and create ecosystem-wide returns. We would like to believe our long-lasting open-source efforts have simplified design decisions and improved developer accessibility.
#v(30pt)
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

#v(45pt)
#align(center)[== Close-out Video <link-other>
- #link("linkhere")]
