#let image-background = image("../images/background-1.jpg", height: 100%, fit: "cover")
#let image-foreground = image("../images/Logo-Anastasia-Labs-V-Color02.png", width: 100%, fit: "contain")
#let image-header = image("../images/Logo-Anastasia-Labs-V-Color01.png", height: 75%, fit: "contain")
#let fund-link = link("https://projectcatalyst.io/funds/11/cardano-use-cases-product/anastasia-labs-x-maestro-plug-n-play-20/plug-and-play-smart-contract-api-a-game-changing-platform-to-deploy-open-source-contracts-instantly")[Catalyst Proposal]

#let git-link = link("https://github.com/Anastasia-Labs/plug-n-play-contracts")[Main Github Repo]

#let single-asset-staking-link = link("https://github.com/Anastasia-Labs/single-asset-staking")[Single Asset Staking]
#let linear-vesting-link = link("https://github.com/Anastasia-Labs/linear-vesting")[Linear Vesting]
#let direct-offer-link = link("https://github.com/Anastasia-Labs/direct-offer")[Direct Offer]

#let single-asset-staking-api-link = link("https://docs.gomaestro.org/category/single-asset-staking-1")[Single Asset Staking API]
#let linear-vesting-api-link = link("https://docs.gomaestro.org/category/linear-vesting-1")[Linear Vesting API]
#let direct-offer-api-link = link("https://docs.gomaestro.org/category/direct-swap-1")[Direct Offer API]

#let maestro-link = link("https://www.gomaestro.org/smart-contracts")[Maestro Platform]


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
#set text(22pt, fill: white)

// Center-align the report title
#align(center)[#strong[Anastasia Labs X Maestro - Plug ‘n Play 2.0]]
#set text(18pt, fill: white)
// #align(center)[Proof of Achievement - #milestone_link]

#align(center)[Project Close-Out Report]

#v(5cm)

// Set text style for project details
#set text(13pt, fill: white)

// Display project details
#table(
  columns: 2,
  stroke: none,
  [*Project Number*], [1100025],
  [*Project manager*], [Maestro Team & Anastasia Labs],
  [*Date Started*], [May 23, 2024],
  [*Date Completed*], [April 21, 2025],
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
      #image("../images/Logo-Anastasia-Labs-V-Color01.png", width: 25%, fit: "contain")
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

// Initialize page counter
#counter(page).update(0)

#outline(depth:2, indent: 1em)
#pagebreak()
#set text(size: 11pt)  // Reset text size to 10pt
#set page(
   footer: [
    #set text(size: 11pt, fill: gray)
    #line(length: 100%, stroke: 0.5pt)
    #v(-3mm)
    #align(center)[ 
      *Anastasia Labs X Maestro – Plug n' Play 2.0*
      #v(-3mm)
      Project Closeout Report
      #v(-3mm)
      // Copyright © 
      // #set text(fill: black)
      // Anastasia Labs
    ]
    #v(-6mm)
    #align(right)[
      #context counter(page).display(  // Page numbering
        "1/1",
        both: true,
      )
      ]
  ] 
)

#v(50pt)
// Display project details
// #set terms(separator:[: ],hanging-indent: 18mm)

#align(center)[
  #set text(size: 18pt)
  #strong[Plug n' Play 2.0 : Project Closeout Report	]]
\

// Display project details
#set terms(separator:[: ],hanging-indent: 18mm)
/ URL: #link("link")[#fund-link]
\
= List of KPIs
\
== Challenge KPIs
\
  + *Enabling Upgradable Multisig Management:* 
  
    We built and deployed an *Aiken Upgradable Multisignature Smart Contract* that allows dynamic *addition/removal* of signers and *threshold adjustments* without redeployment, enhancing on-chain governance flexibility.

  + *Seamless Subscription Payments:* 
    
    We designed and implement a *Subscription Payment Smart Contract* leveraging wallet-owned UTxOs to automate recurring payments trustlessly, improving user experience and on-chain billing reliability.

  + *No-Code Deployment Platform:* 
  
    By doing the above, we extend the Plug-and-play Smart Contracts platform to support both Upgradable Multisig and Subscription flows via *simple API calls*, reducing integration complexity for developers unfamiliar with Aiken.

#pagebreak()

== Project KPIs
\
+ *Contract Development & Testing:* 
  
  Designed, Author and implemented rigorous unit-test, property based and integration tests for two core Aiken contracts (upgradable-multisig and subscription-payments) with ≥95% code coverage.

+ *Offchain SDKs & API Routes:* 
  
  Deliver fully documented SDKs in TypeScript and Aiken, plus RESTful API endpoints on Maestro, with end-to-end integration tests passing in CI.

+ *Documentation Quality & Adoption:*   

  Publish comprehensive developer guides and tutorials; achieve ≥200 unique GitHub stars and ≥50 SDK downloads within first month of release.

+ *Increased Developer Adoption:* 

  Monitor API call volume, unique API consumers, and community feedback; target ≥1,000 API calls and ≥20 integrated projects by completion.

#pagebreak()

\
= Key achievements
\
+ *Milestone Acceptance & Evidence:*
  
  All milestone 1–4 acceptance criteria (secure asset spending, threshold updates, dynamic signer management, and recurring payment flows) were met as documented in the repository’s dedicated sections. Comprehensive evidence—including unit tests, coverage reports, design specs, and live transaction logs—is available on GitHub.

+ *Upgradable Multisig Contract:*
  
  Designed and deployed an Aiken-based multisignature contract; validated secure execution by authorized members, seamless signer threshold adjustments, and dynamic addition/removal workflows in on-chain tests.

+ *Subscription Payments Contract:* 

  Delivered an Aiken payment subscription contract enabling users to set up, manage, and cancel recurring payments directly from wallets; demonstrated UTxO chaining and fee bumping in unit tests and integration scenarios.

+ *Offchain SDKs & API Integration:*

  Released TypeScript and Aiken SDKs per design specifications; all endpoints implemented on Maestro with CI-integrated end-to-end tests covering normal, edge, and error cases.



+ *Integration with Maestro:*

  - We successfully integrated our smart contracts and SDKs with Maestro, enabling developers to interact with our contracts through Maestro's platform. This integration provides a streamlined interface for deploying and managing smart contracts, further lowering the barrier to entry for developers.

+ *Extensive documentation and tutorials:* 

  - Published clear, high‑level guides, design documents, and code samples; integration tutorials and video walkthroughs complete the developer onboarding experience.


#pagebreak()

\
= Key learnings:
\
- *Importance of Modular Design and Security:* 

  Our project reaffirmed the value of modular, reusable smart contracts for streamlining development and enhancing security. We learned that building our contracts and SDKs as composable, modular components allowed us to reuse common patterns across features, accelerating development and simplifying maintenance.

- *Strength of Aiken for On-Chain Logic:* 
  
  We found that Aiken’s high-level syntax improved code clarity and testability compared to lower-level languages, streamlining our debugging process and increasing our confidence in code coverage.

- *Comprehensive Testing Paradigms:* 

  By implementing both unit tests for individual contract functions and integration tests for API endpoints, we exposed critical edge cases early—underscoring the value of having end-to-end test automation integrated directly into our CI pipelines.

- *Importance of Comprehensive Documentation and Monitoring:*  

  Creating thorough documentation and linking user-friendly tutorial videos is vital for effective developer onboarding. Additionally, implementing monitoring tools for key metrics prepares us to make informed, data-driven improvements, helping guide future development based on real-world usage patterns.
#pagebreak()

\
= Next steps
\

+ *Expand Smart Contract Library:* Continue developing and integrating additional smart contracts based on developer feedback and ecosystem needs. This will ensure the platform remains relevant and valuable to the growing Cardano developer community.

+ *Enhance API Documentation:* Improve the API documentation with more examples, use cases, and best practices to make it even easier for developers to integrate and utilize the smart contract services.

+ *Optimize Performance and Scalability:* Monitor the performance of the smart contract APIs as usage grows and make necessary optimizations to ensure high availability and responsiveness, even under heavy load.

+ *Collaborate with Ecosystem Partners:*  Engage with other Cardano ecosystem projects and partners to explore opportunities for integrating the smart contract APIs into their platforms and services, further expanding the reach and adoption of the solution.

+ *Continuously Gather Feedback:* Maintain an open dialogue with the developer community, regularly soliciting feedback and suggestions for improvement. Use this input to guide future development and ensure the platform remains aligned with the evolving needs of Cardano builders.
#pagebreak()

\
= Final thoughts/comments:
\

We are proud to have introduced a flexible, secure, and modular smart contract library to the Cardano community. Our team’s commitment to best practices and developer experience has laid a strong foundation for future growth.

We believe that these contracts and APIs will empower builders to focus on innovation rather than boilerplate. We look forward to seeing the next generation of dApps leverage Plug n’ Play 2.0 and driving further ecosystem expansion.

Moving forward, we remain dedicated to supporting the developer community and adapting our offerings to meet their needs, ensuring our library contributes meaningfully to the Cardano ecosystem.

\
= Resources 
\

#box(height: 100pt, columns(3, gutter: 1pt)[
  == Project 
  \
  #fund-link
  #v(1mm)
  #maestro-link 
  #v(1mm)
  #git-link
 
  == Smart Contracts
  \
  #single-asset-staking-link
  #v(1mm)
  #linear-vesting-link
  #v(1mm)
  #direct-offer-link

  == APIs
  \
  #single-asset-staking-api-link
  #v(1mm)
  #linear-vesting-api-link
  #v(1mm)
  #direct-offer-api-link
])

\
#align(center)[== Closeout Video]
\
#align(center)[#link("https://www.youtube.com/watch?v=eXtPjU3aSQc")[ Plug-and-play-01 API -Closeout Video]]