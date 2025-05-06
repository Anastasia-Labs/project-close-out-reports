#let image-background = image("../images/background-1.jpg", height: 100%, fit: "cover")
#let image-foreground = image("../images/Logo-Anastasia-Labs-V-Color02.png", width: 100%, fit: "contain")
#let image-header = image("../images/Logo-Anastasia-Labs-V-Color01.png", height: 75%, fit: "contain")
#let fund-link = link("https://projectcatalyst.io/funds/11/cardano-use-cases-product/anastasia-labs-x-maestro-plug-n-play-20")[Catalyst Proposal]

#let git-link = link("https://github.com/Anastasia-Labs/plug-n-play-contracts")[Main Github Repo]

#let upgradable-multisig-contract-link = link("https://github.com/Anastasia-Labs/aiken-upgradable-multisig")[Aiken Upgradable Multisig]
#let payment-subscription-contract-link = link("https://github.com/Anastasia-Labs/payment-subscription")[Payment Subscription]

#let upgradable-multisig-sdk-link = link("https://github.com/Anastasia-Labs/aiken-multisig-offchain")[Aiken Multisig Offchain SDK]
#let payment-subscription-sdk-link = link("https://github.com/Anastasia-Labs/payment-subscription-offchain")[Payment Subscription SDK]

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
  
    The team then extended the Plug-and-play Smart Contracts platform to support both Upgradable Multisig and Subscription flows via *simple API calls*, reducing integration complexity for developers unfamiliar with Aiken.

#pagebreak()

== Project KPIs
\
+ *Contract Development & Testing:* 


  Design, author, and implement two Aiken contracts (upgradable-multisig and subscription-payments) with comprehensive unit tests, property-based tests, and integration tests.
  
+ *Off-Chain SDK Development & Testing:* 

  Develop TypeScript SDKs for the two Aiken smart contracts.
  
  Include comprehensive unit tests for the SDKs. The SDKs should be designed to be easily consumable by developers.

+  *Smart Contract API Integration & Testing*

  Collaborate with Maestro to integrate the Smart Contracts, through the Offchain SDKs with RESTful APIs, and them available on the Maestro platform, allowing developers to interact with the contracts without needing to understand the underlying Aiken code.
  
+ *Documentation & Tutorial:*   

  Create comprehensive documentation for the SDKs and APIs, including design documents, code samples, and integration video and PDF tutorials. 

#pagebreak()

#v(50pt)
= Key achievements
\
+ *Milestone Acceptance & Evidence:*
  
  - We have validated every acceptance criterion for Milestone 1 - 4.
  
  - Our unit test suites (achieving over 90% coverage) confirmed secure spending controls, correct signer threshold adjustments, and error-safe flows. 
  
  - The detailed design specifications and on-chain transaction logs are all accessible in our GitHub repos, providing transparent proof of each capability in action.

+ *Upgradable Multisig Contract:*

  - We architected an Aiken-based multisignature contract that empowers project teams to manage asset custodianship flexibly. 

  - In live test scenarios, only authorized signers successfully executed transactions, threshold changes applied instantly on-chain, and signer roles were added or revoked without requiring redeployment.

+ *Subscription Payments Contract:* 

  - Leveraging wallet-owned UTxOs, our payment-subscription contract enables seamless recurring charges. 
  
  - Through comprehensive integration tests, we demonstrated subscription ceation, update and cancellation by the Subscriber, as well as Merchant initiated Service creations and subscription fee withdrawals as well as Service cancellations. 


+ *Offchain SDKs & Maestro  Integration:*

  - We packaged our off-chain logic into modular TypeScript SDKs that abstract low-level UTxO interactions, offering intuitive methods for initializing contracts, constructing transactions, and submitting them. 
  
  - These SDKs have been integrated into Maestro’s managed API platform. Through end-to-end tests, we validated success scenarios, edge conditions, and robust error handling. Developers can now invoke simple HTTP calls without the need to write on-chain or off-chain code and reducing their overall development time.

+ *Extensive documentation and tutorials:* 

 - To empower users, we published a suite of clear guides: high-level architecture diagrams, detailed API references and Postman collections as well as two video walkthroughs (subscription and multisig) deliver a hands-on onboarding experience, ensuring new developers become productive within minutes.

#pagebreak()

#v(50pt)

= Key learnings:
\
- *Modular, Secure Design Patterns:* 

  Our project reaffirmed the value of modular, reusable smart contracts for streamlining development and enhancing security. We learned that building our contracts and SDKs as composable, modular components allowed us to reuse common patterns across features, accelerating development and simplifying maintenance.
\
- *Aiken’s Developer Ergonomics:* 
  
  We found that Aiken’s high-level syntax and built-in testing tools improved code clarity and testability compared to lower-level languages, streamlining our debugging process and increasing our confidence in code coverage.
\
- *Comprehensive Testing Paradigms:* 

  By implementing both unit tests for individual contract functions and integration tests for API endpoints, we exposed critical edge cases early—underscoring the value of having end-to-end test automation integrated directly into our CI pipelines.
\
- *Documentation and Monitoring:*  

  Creating thorough documentation and linking user-friendly tutorial videos is vital for effective developer onboarding. Additionally, implementing monitoring tools for key metrics prepares us to make informed, data-driven improvements, helping guide future development based on real-world usage patterns.
\
- *Cross-Functional Collaboration:*  

  Setting up a Plug n' Play Support group between Anastasia Labs and Maestro facilitated swift decision-making and kept milestone deliverables tightly synchronized. This collaborative cadence cut milestone review cycles by 20% and fostered shared ownership of project outcomes.

#pagebreak()

#v(50pt)

= Next steps
\

+ *Expand Smart Contract Library:* Continue developing and integrating additional smart contracts based on developer feedback and ecosystem needs. This will ensure the platform remains relevant and valuable to the growing Cardano developer community.

+ *Enhance API Documentation:* Improve the API documentation with more examples, use cases, and best practices to make it even easier for developers to integrate and utilize the smart contract services.

+ *Optimize Performance and Scalability:* Monitor the performance of the smart contract APIs as usage grows and make necessary optimizations to ensure high availability and responsiveness, even under heavy load.

+ *Collaborate with Ecosystem Partners:*  Engage with other Cardano ecosystem projects and partners to explore opportunities for integrating the smart contract APIs into their platforms and services, further expanding the reach and adoption of the solution.

+ *Continuously Gather Feedback:* Maintain an open dialogue with the developer community, regularly soliciting feedback and suggestions for improvement. Use this input to guide future development and ensure the platform remains aligned with the evolving needs of Cardano builders.


#pagebreak()

#v(50pt)
= Final thoughts/comments:
\

The Plug ’n Play 2.0 collaboration successfully delivered a turnkey, no-code smart contract platform on Cardano. Employing Aiken accelerated on-chain development, while Maestro’s infrastructure ensured robust, scalable API delivery. We look forward to community input and expanding platform capabilities to further democratize dApp innovation.

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
  #upgradable-multisig-contract-link
  #v(1mm)
  #payment-subscription-contract-link

  == SDKs
  \
  #upgradable-multisig-sdk-link
  #v(1mm)
  #payment-subscription-sdk-link
])

\
#align(center)[== Closeout Video]
\
#align(center)[#link("https://www.youtube.com/watch?v=eXtPjU3aSQc")[ Plug-and-play-01 API -Closeout Video]]