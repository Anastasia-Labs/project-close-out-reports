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
    #place(right, dy: 12pt)[#box(image(height: 75%,"images/Logo-Anastasia-Labs-V-Color01.png"))]
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

#v(150pt)

= Design Patterns

We would like to briefly take a look back and go over the implemented design patterns 

#v(20pt)

/ Project Name: Streamlining Development: A User-Friendly Smart Contract Library \
for Plutarch and Aiken Design Patterns & Efficiency

/ URL: #link("https://projectcatalyst.io/funds/10/f10-development-and-infrastructure/anastasia-labs-streamlining-development-a-user-friendly-smart-contract-library-for-plutarch-and-aiken-design-patterns-and-efficiency")[Project Catalyst Proposal]

#pagebreak()
#v(20pt)

= Introduction

This project aimed to create user-friendly smart contract libraries for Plutarch and Aiken, addressing the challenge of unintuitive design patterns in Cardano development. Our goal was to abstract away complex patterns, making them accessible to developers across the ecosystem while maintaining code readability and efficiency

As developers ourselves, we understood the frustration of dealing with complex patterns that hindered productivity and made it difficult for new developers to enter the ecosystem. We believe that by abstracting away these complexities, we could make Cardano development more accessible to developers across the ecosystem, without sacrificing code readability or efficiency.

#v(60pt)

= Objectives and Challenges 
== Objectives

- Create comprehensive libraries for both Plutarch and Aiken
- Document key design patterns and efficiency tricks, help developers avoid common pitfalls and optimize their code
- Develop wrapper functions to improve efficiency without sacrificing readability, in general the aim is to make developers' lives easier
- Engage with the community to share knowledge and gather feedback

== Challenges Addressed

- Redundant efforts across projects, we saw that many developers were struggling with the same issues and reinventing the wheel
- Complex design patterns and lack of standardization made it difficult to write secure and efficient code increasing the risk of vulnerabilities
- Higher barriers due to a steep learning curve and lack of user friendly resources for new developers entering the ecosystem

#pagebreak()
#v(20pt)
= Planning

Our project was divided into three main phases:
#v(60pt)
=== Design and Documentation
We started by identifying the most unintuitive design patterns and documenting them in detail. We published this documentation on our GitHub repository and contributed to other resources as well

=== Library Development
We focused on creating reusable, efficient code and implemented key design patterns and wrapper functions for both Plutarch and Aiken, focusing on usability and performance optimization.

=== Testing
No implementation is complete without thorough testing. We developed comprehensive testing suites, including unit tests and property-based tests, to ensure the reliability and correctness of what we implemented

#pagebreak()
#v(20pt)

= Recap - Design Patterns

#v(20pt)

1 - *Enhanced Enum Data Mapping Functions*

Streamlined implementation of simple redeemers, reducing complexity and lowering costs. This pattern directly maps enumeration cases to integer values, improving efficiency over standard mapping functions

2 - *Stake Validator*

Optimized transaction-level validation using the "withdraw zero trick." This approach significantly reduced script size and ExUnits cost, with theoretical 5-10x efficiency improvement for transaction-level validation compared to traditional implementations


#box(height: 150pt,
 columns(3, gutter: 11pt)[
   #figure(
  image(fit: "contain", height: 100%, width: 100%,"Stake-val1.png"),

)
   #figure(
  image(fit: "contain", height: 100%, width: 100%,"Stake-val2.png"),

)
   #figure(
  image(fit: "contain", height: 100%, width: 100%,"Stake-val3.png"),

)
])

3 - *Merkelized Validators*

Addressed script size limitations by leveraging reference scripts and the "withdraw zero trick." This pattern allows for powerful optimizations while keeping main validator size "within limits", effectively creating smart contracts with near-infinite size potential

#pagebreak()
#v(20pt)
4 - *Transaction Level Validation - Minting Policy*

Optimized batch processing of UTxOs by delegating validation to a minting script executed once per transaction. This significantly improves efficiency for high-throughput applications, potentially lowering transaction costs.

#box(height: 150pt,
 columns(3, gutter: 11pt)[
   #figure(
  image(fit: "contain", height: 100%, width: 100%,"tx-level-val1.png"),

)
   #figure(
  image(fit: "contain", height: 100%, width: 100%,"tx-level-val2.png"),

)
   #figure(
  image(fit: "contain", height: 100%, width: 100%,"tx-level-val3.png"),

)
])

5 - *Strict && Checks*

Addressed inconsistencies in boolean operations across Plutus, Plutarch, and Aiken, providing predictable compilation outcomes and optimizing transaction costs

6 - *UTxO Indexer*

Introduced UTxO indices within the redeemer, allowing validators to efficiently sort and pair inputs with outputs, optimizing transactions with multiple inputs and outputs


#box(height: 150pt,
 columns(1, gutter: 11pt)[
   #figure(
  image(fit: "contain", height: 100%, width: 100%,"utxo-indexer.png"),

)
])

#pagebreak()
#v(20pt)
7 - *TxInfoMint Normalization*

Addressed the challenge of automatic 0 Lovelace value appending in txInfoMint field, mitigating unintended consequences

8 - *Validity Range Normalization*

Introduced a normalized representation of time ranges, reducing ambiguity and eliminating redundant or meaningless instances.


#box(height: 120pt,
 columns(2, gutter: 11pt)[
   #figure(
  image(fit: "contain", height: 100%, width: 100%,"val-range-norm1.png"),

)
   #figure(
  image(fit: "contain", height: 100%, width: 100%,"val-range-norm2.png"),

)
])



#pagebreak()

#v(20pt)
= Detailed list of KPIs and references
#v(60pt)
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

#v(20pt)
= Key achievements <key-achievements>
#v(60pt)
=== Development of Comprehensive Libraries
User-friendly libraries for Plutarch and Aiken, simplifying complex design patterns without sacrificing readability and circumventing repetitive boilerplate. 

A comprehensive testing suite has been developed utilizing unit and property based tests. More on it can be observed on our extensive #link("https://drive.google.com/file/d/1Oju4cMF7jrIjh5VbIueTyp45T45g1159/view?usp=sharing")[*Milestone-4 report*]

Exemplary use of these libraries are found for 8 different design pattern scenarios: \
\
- #link("https://github.com/Anastasia-Labs/aiken-design-patterns/tree/main/validators")[*For Aiken*] \
- #link("https://github.com/Anastasia-Labs/plutarch-design-patterns/blob/main/src/Plutarch/MerkelizedValidator.hs")[*For Plutarch*]

#v(20pt)
=== Engagement
This year presentations on our implemented design patterns was given in Buidlfest, a community event specifically scheduled for 100 developers on Cardano. Communication with the developer community is really important to us, as we create tools specifically to make development on Cardano easier day by day.

Examples of the #link("https://docs.google.com/document/d/1DV6hN0lrFCPdHLbMYQHwmUUv_VsRQYvKjSe-U7k1x9s/edit?usp=sharing")[feedback we received during our presentations/on-stage] (Toulouse, Buidlfest) 

#pagebreak()
#v(20pt)
= Measurable Result Examples
#v(30pt)
*Transaction-Level Validation Efficiency*

Utilizing the "Withdraw" redeemer in staking scripts to run global logic once, rather than for each input. A really significant efficiency improvement over current design patterns can be observed, depending on the number of script inputs in the transaction.

*Script Size Reduction*

Implementation of techniques like Merkelized Validators to address script size limitations. Potential for "near-infinite" script size while maintaining efficiency, enabling more complex on-chain logic.

*Transaction Cost Reduction*

Implementation of the UTxO Indexer Design Pattern for efficient sorting and pairing of inputs and outputs. A performance boost for transactions with multiple inputs and outputs. Or the introduction of Stict && Checks for more predictable compilation outcomes and optimized transaction costs

#v(10pt)
= Key learnings <key-learnings>
#v(15pt)
=== User Feedback
Incorporated feedback from developers/users to improve the libraries
=== Process Improvements
Development process has been improved based on insights gained during the project development 
=== Best Practices
Documenting best practices for smart contract development and future maintainability and the importance of clear documentation and examples in promoting adoption of advanced design patterns


#pagebreak()

#v(20pt)
= Next steps <next-steps>
#v(10pt)
=== Feature Enhancements
We will maintain and further optimize our existing libraries created for the developers. 

Additional design pattern libraries that streamline the implementation process for other existing smart contract languages might come to life as the needs of our developer community requires it. (Such as #link("https://github.com/Anastasia-Labs/scalus-design-patterns")[Scalus], Helios, Plu-ts ...)

=== Expansion
Targeting a wider developer audience through increased outreach. We are utilizing our design patterns in other tools we develop on Cardano too. 

For example, for Lucid Evolution we want to display design patterns in our tutorial series via the evolution library. We strive to create value by making our tools complimentary to each other

#v(10pt)
= Final thoughts 
#v(10pt)
The project successfully addresses its purpose by creating a freely accessible library of design patterns for Cardano developers. Initiatives alike help best practices and already solved puzzles of development on Cardano spread and create ecosystem-wide returns. 

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

