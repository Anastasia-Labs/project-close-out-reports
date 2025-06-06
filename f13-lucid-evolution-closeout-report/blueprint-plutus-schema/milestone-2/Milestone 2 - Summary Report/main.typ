#import "@preview/cetz:0.2.2"

#let image-background = image("../../images/background-1.jpg", height: 100%, fit: "cover")
#let image-foreground = image("../../images/Logo-Anastasia-Labs-V-Color02.png", width: 100%, fit: "contain")
#let image-header = image("../../images/Logo-Anastasia-Labs-V-Color01.png", height: 75%, fit: "contain")
#let luid-evolution-link = link("https://anastasia-labs.github.io/lucid-evolution")[Lucid Evolution Website]
#let lucid-evolution-git-link = link("https://github.com/Anastasia-Labs/lucid-evolution")[Main Github Repo]
#let project_link = link("https://projectcatalyst.io/funds/13/cardano-open-developers/lucid-evolution-20-blueprint-and-enhanced-plutus-schema")[Catalyst Proposal]
#let milestone_link = link("https://milestones.projectcatalyst.io/projects/1300126/milestones/2")[Milestone 2]


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
      *Lucid Evolution 2.0*
      #v(-3mm)
      Blueprint & Enhanced Plutus Schema - Milestone 2
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
  #strong[Blueprint & Enhanced Plutus Schema]

  #strong[Safe Deserialization and Type-Safe Derivation	]]
#v(50pt)
#set heading(numbering: "1.")
// #show heading: set text(rgb("#c41112"))

= Introduction

\
The second milestone of Lucid Evolution 2.0 (Blueprint & Enhanced Plutus Schema) focuses on implementing *safe deserialization* for UTxO datums and establishing an *automatic*, *type-safe derivation framework* for Datum and Redeemer types based on CIP-57 blueprints. This report summarizes the design decisions, development work, testing activities, and deliverables that ensure robust runtime validation and seamless compatibility with Plutus data structures and Aiken contracts.


#pagebreak()
#v(50pt)

= Objectives and Acceptance Criteria
\
== Objectives
\
- *Safe Deserialization:* Develop utilities to securely deserialize UTxO datum fields, leveraging Effect Schema for runtime integrity checks.

- *Type-Safe Derivation Framework:* Implement automatic derivation of Datum and Redeemer TypeScript types from Plutus blueprint files, ensuring full alignment with CIP-57 standards.

- *Practical Demonstrations:* Provide concrete examples, both code and video, showcasing the derivation process within mocked Aiken contracts.

\
== Acceptance Criteria
\
- *Correct Derivation:* The framework must accurately derive Datum and Redeemer types from a mocked Aiken contract specification.

- *Runtime Validation:* Tests must validate type safety at runtime, producing descriptive error messages on invalid inputs.

- *Error Handling:* Invalid or malformed datum inputs must trigger clear, actionable error outputs.

- *Video Walkthrough:* A demonstration video must illustrate practical derivation examples and runtime checks.


#pagebreak()
#v(50pt)

= Implementation Overview
\
== Safe Deserialization of UTxO Datums
\
*Effect Schema Integration:* Utilized Effect Schema combinators to define datum-parsing schemas that enforce both structural correctness and type constraints.

*Error Reporting:* Custom error constructs provide detailed context field names, expected types, and actual values when deserialization fails.

*Round-trip Guarantees:* Ensured that deserialized datums, once re-serialized, match their original on-chain byte representations.

\
== Type-Safe Derivation Framework
\
*Blueprint Parsing Engine:* Built a parser to read CIP-57-compliant blueprint JSON/YAML files and auto-generate corresponding TypeScript interfaces for Datum and Redeemer.

*Compile-time & Runtime Alignment:* Employed TypeScript generics and Effect Schema to synchronize compile-time types with runtime validators.

*Mocked Aiken Contract Examples:* Developed sample Aiken contracts demonstrating how on-chain parameters translate into derived types—covered in accompanying video.

*Developer Workflow:* Designed CLI commands for blueprint ingestion (derive-datums) and integration into existing Lucid transaction builders.

#pagebreak()

#v(50pt)
= Evidence of Milestone Completion 

\
The following items have been provided in the Lucid Evolution GitHub repository (https://github.com/Anastasia-Labs/lucid-evolution)
as evidence of the successful completion of Milestone 1:

\
== Implementation Code & Documentation

  \
  The implementation of the safe deserialization of UTxO datums, can be found at:
 
    // - https://github.com/Anastasia-Labs/lucid-evolution/blob/main/packages/experimental/src/Data.ts
      
      \

== Unit Testing
\

  The unit tests for the safe deserialization of UTxO datums can be found at:

      \
== Practical Examples & Video Demonstration
\

- *Mocked Aiken Contracts*

  - The mocked Aiken contracts demonstrating the type-safe derivation framework are located in:
  
- *Demonstration Video*

  - The demonstration video showcasing the derivation process and runtime checks is available at:

    \
    docs/Milestone2/derivation-demo.mp4 (5:46 mins) illustrates:

  - Running lucid-schema derive.

  - Importing generated code into a Lucid off-chain script.

  - Observing both successful and failing deserialization in action.  

\

#pagebreak()
#v(50pt)

= Conclusion and Next Steps
\
== Conclusion
\
  Milestone 2 has been successfully delivered. We have established a robust, secure mechanism for safe deserialization of on-chain datums and an automated, type-safe framework for deriving Datum and Redeemer types from CIP-57 blueprints. All acceptance criteria have been met, with complete test coverage and practical demonstrations.


#pagebreak()

== Next Steps
\

*Advanced Features and Integration*

Implement configurable encoding options (both bounded/canonical and unbounded/non-canonical), develop customizable data handling for specific datum components, integrate the schema package into the transaction builder, and enhance support for recursive Plutus types.

*Utility Functions for Cardano Types*

Create utility functions for converting between CBOR and key Plutus types (Address, Value, Credentials, OutputReference, CIP68 Metadata) and implement a comprehensive test suite for these functions.

*Lucid Evolution Integration & Documentation*	

Deliver comprehensive, developer-friendly documentation aligned with Cardano standards, provide a detailed project closeout report, and produce a demonstration video highlighting the improvements in Lucid Evolution.