#import "@preview/cetz:0.2.2"

#let image-background = image("../../images/background-1.jpg", height: 100%, fit: "cover")
#let image-foreground = image("../../images/Logo-Anastasia-Labs-V-Color02.png", width: 100%, fit: "contain")
#let image-header = image("../../images/Logo-Anastasia-Labs-V-Color01.png", height: 75%, fit: "contain")
#let luid-evolution-link = link("https://anastasia-labs.github.io/lucid-evolution")[Lucid Evolution Website]
#let lucid-evolution-git-link = link("https://github.com/Anastasia-Labs/lucid-evolution")[Main Github Repo]
#let project_link = link("https://projectcatalyst.io/funds/13/cardano-open-developers/lucid-evolution-20-blueprint-and-enhanced-plutus-schema")[Catalyst Proposal]
#let milestone_link = link("https://milestones.projectcatalyst.io/projects/1300126/milestones/1")[Milestone 1]


#set page(
  background: image-background,
  paper :"a4",
  margin: (left : 20mm,right : 20mm,top : 40mm,bottom : 30mm)
)

// Set default text style
#set text(15pt, font: "Montserrat")

#v(3cm) // Add vertical space

#align(center)[
  #box(
    width: 60%,
    stroke: none,
    image-foreground,
  )
]

#v(1cm) // Add vertical space

// Set text style for the report title
#set text(20pt, fill: white)

// Center-align the report title
#align(center)[#strong[Lucid Evolution 2.0]]
#align(center)[Proof of Achievement - #milestone_link]

#v(5cm)

// Set text style for project details
#set text(13pt, fill: white)

#table(
  columns: 2,
  stroke: none,
  [*Project Id*], [1300126],
  [*Project Manager*], [Jonathan Rodriguez],
  [*Proposal Link*], [#project_link],
)


// Reset text style to default
#set text(fill: luma(0%))

// Display project details
#show link: underline
#set terms(separator:[: ],hanging-indent: 18mm)

#set par(justify: true)
#set page(
  paper: "a4",
  margin: (left: 20mm, right: 20mm, top: 40mm, bottom: 35mm),
  background: none,
  header: [
    #align(right)[
      #image("../../images/Logo-Anastasia-Labs-V-Color01.png", width: 25%, fit: "contain")
    ]
    #v(-0.5cm)
    #line(length: 100%, stroke: 0.5pt)
  ],
)

#v(20mm)
#show link: underline
#show outline.entry.where(level: 1): it => {
  v(6mm, weak: true)
  strong(it)
}

#outline(depth:3, indent: 1em)
#pagebreak()
#set text(size: 11pt)  // Reset text size to 10pt
#set page(
   footer: [
    #line(length: 100%, stroke: 0.5pt)
    #v(-3mm)
    #align(center)[ 
      #set text(size: 11pt, fill: black)
      *Anastasia Labs – *
      #set text(size: 11pt, fill: gray)
      *Lucid Evolution*
      #v(-3mm)
      Blueprint & Enhanced Plutus Schema - Milestone 1
      #v(-3mm)
    ]
    #v(-6mm)
    #align(right)[
      #context counter(page).display( "1/1",both: true)]
  ] 
)

// Initialize page counter
#counter(page).update(1)
#v(50pt)
// Display project details
// #set terms(separator:[: ],hanging-indent: 18mm)
#align(center)[
  #set text(size: 18pt)
  #strong[Blueprint & Enhanced Plutus Schema]]
#v(20pt)
\

#set heading(numbering: "1.")
// #show heading: set text(rgb("#c41112"))


#v(50pt)

= Executive Summary
\
This first milestone of the Lucid Evolution 2.0 project is focused on implementing the core data schema structures using Effect Schema to support Plutus data types. 

This report summarizes the design, implementation, testing, and documentation efforts aimed at providing a flexible, type-safe infrastructure for handling complex Cardano data types.

The work ensures that the core schema not only facilitates compile-time type safety through TypeScript integration but also guarantees runtime validation and reliable roundtrip encoding/decoding for all supported Plutus data types.

#pagebreak()
\
= Objectives and Acceptance Criteria
\
== Objectives
\
- *Implement Core Data Schemas:* Develop data schema structures utilizing Effect Schema that can handle various Plutus data types.

- *Utility Functions:* Build utility functions that ensure both compile-time and runtime type safety.
- *Testing Framework:* Create comprehensive unit tests covering roundtrip conversions, ensuring robust encoding and decoding functionality.
- *Documentation:* Produce detailed usage documentation with real-world examples to assist developers in integrating and leveraging the new schema.

\
== Acceptance Criteria
\
- *Data Type Support:*
\ 
The schema must reliably support:

  - `Integer`

  - `ByteString`
  - `List` (including nested lists)
  - `Map`
  - `Constr` (data with constructors)

\
- *Utility Functions Must:*
\
- Leverage Effect Schema for compile-time type safety validation of Plutus Data.

- Perform runtime type parsing to ensure data integrity.
- Successfully execute roundtrip (encode/decode) operations, validated by exhaustive tests.

\
- *Deliverables:*
\
- Implementation code in the Lucid Evolution GitHub repository.

- Comprehensive unit tests demonstrating bi-directional schema parsing for each data type.
- Documentation detailing schema usage with concrete examples.
- A PDF report showcasing Effect Schema’s runtime validation.

#pagebreak()

\
= Implementation Overview
\
== Core Schema Development
\
*Data Structure Implementation:*

The development phase concentrated on creating schema structures that directly map to the requirements of the Plutus data types. The implementation includes:

- *Integer & ByteString:* Basic types are implemented with specific utility functions to manage encoding and decoding.

- *List Support:* Ability to manage both simple and nested lists, ensuring that recursive data structures are correctly handled.
- *Map and Constr:* Detailed handling for key-value pairs and constructors ensures that complex data combinations maintain integrity.

\
== Utility Functions and Type Safety
\
*Compile-time Assurance:*

The development leverages TypeScript’s type system in conjunction with Effect Schema to validate data types during the development stage, minimizing runtime errors.

*Runtime Validation:*

Custom utility functions were designed to parse and enforce Plutus Data integrity at runtime. This layer of validation protects against improper data handling during execution.

*Roundtrip Testing:*

A comprehensive suite of unit tests was implemented to verify bidirectional conversions:

  - Encoding data structures into the Plutus format.

  - Decoding back to the original format to confirm consistency.

\
== Documentation and Reporting
\
  *Documentation:*

  Detailed documentation has been prepared, outlining:

  - How to integrate and use the schema.

  - Examples demonstrating type safety at compile time and runtime.

  - Step-by-step guides on testing the roundtrip encoding/decoding process.

  *Evidence of Validation:*

  A demonstration PDF report has been generated, which showcases the Effect Schema’s validation features and provides a clear narrative of the testing outcomes. The documentation and demonstration materials are all hosted on the GitHub repository.

#pagebreak()

\
= Evidence of Milestone Completion 

\
The following items have been provided as evidence of the successful completion of Milestone 1:

\
== GitHub Repository:
\
  The Lucid Evolution GitHub repository (https://github.com/Anastasia-Labs/lucid-evolution) contains:

  - The full implementation of the core schema structures.

  - The utility functions for compile-time and runtime validation.
  - Extensive unit test coverage demonstrating the correct bi-directional parsing of Plutus Data types.
  - Detailed documentation that includes usage examples and integration guidelines.
\
== Unit Testing
\
  A suite of unit tests has been executed which covers:

  - Bi-directional schema parsing (to and from PlutusData conversions) for each supported data type.
  - Roundtrip encoding and decoding processes.

  - Runtime validation scenarios that ensure data integrity under various use cases.
\
== Validation Report (PDF)
\
  A comprehensive PDF report accompanies this milestone submission. This report showcases:

  - Detailed test results.

  - Example use cases.

  - Visualizations of error handling that clearly demonstrate the efficacy of the runtime type parsing and validation logic implemented using Effect Schema.

#pagebreak()
\
= Conclusion and Next Steps
\
== Conclusion
\
  Milestone 1 has been successfully achieved. The core schema structures and accompanying utility functions now provide robust support for critical Plutus data types, with assurance provided by rigorous compile-time and runtime validations. This foundation is essential for the subsequent enhancements and integrations planned for Lucid Evolution 2.0.

== Next Steps
\
*Safe Deserialization and Type-Safe Derivation*

Automatically derive Datum and Redeemer types from Plutus blueprint files using practical examples, ensuring full compatibility with CIP-57 standards.

*Advanced Features and Integration*

Implement configurable encoding options (both bounded/canonical and unbounded/non-canonical), develop customizable data handling for specific datum components, integrate the schema package into the transaction builder, and enhance support for recursive Plutus types.

*Utility Functions for Cardano Types*

Create utility functions for converting between CBOR and key Plutus types (Address, Value, Credentials, OutputReference, CIP68 Metadata) and implement a comprehensive test suite for these functions.

*Lucid Evolution Integration & Documentation*	

Deliver comprehensive, developer-friendly documentation aligned with Cardano standards, provide a detailed project closeout report, and produce a demonstration video highlighting the improvements in Lucid Evolution.