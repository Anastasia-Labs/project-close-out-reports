#let image-background = image("../images/background-1.jpg", height: 100%, fit: "cover")
#let image-foreground = image("../images/Logo-Anastasia-Labs-V-Color02.png", width: 100%, fit: "contain")
#let image-header = image("../images/Logo-Anastasia-Labs-V-Color01.png", height: 75%, fit: "contain")
#let fund-link = link("https://projectcatalyst.io/funds/11/cardano-use-cases-product/encoins-x-anastasia-labs-zero-knowledge-proof-trustless-p2p-fiat-to-crypto-on-ramp-for-cardano")[Catalyst Proposal]

#let git-link = link("https://github.com/zkFold/p2p-onramp")[Main Github Repo]

#let money-kit-ui-link = link("https://anastasia-labs.github.io/money-kit-ui/")[Money Kit UI]
#let video-demo-link = link("https://github.com/Anastasia-Labs/payment-subscription")[On-Ramp Demo Video]

#let test-suite-link = link("https://github.com/zkFold/p2p-onramp/tree/main/e2e-test")[E2E Test Suite]



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
#align(center)[#strong[ENCOINS x Anastasia Labs: Zero-Knowledge Proof Trustless P2P Fiat-to-Crypto On-Ramp for Cardano]]
#set text(18pt, fill: white)
// #align(center)[Proof of Achievement - #milestone_link]

#align(center)[Project Close-Out Report]

#v(4cm)

// Set text style for project details
#set text(13pt, fill: white)

// Display project details
#table(
  columns: 2,
  stroke: none,
  [*Project Number*], [1100125],
  [*Project manager*], [ENCOINS Team, zkFold & Anastasia Labs],
  [*Date Started*], [March 11, 2024],
  [*Date Completed*], [April 30, 2025],
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
      *Zero-Knowledge Proof Trustless P2P Fiat-to-Crypto On-Ramp for Cardano*
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
  #strong[Zero-Knowledge Proof Trustless P2P Fiat-to-Crypto On-Ramp for Cardano : Project Closeout Report	]]
\

// Display project details
#set terms(separator:[: ],hanging-indent: 18mm)
/ URL: #link("link")[#fund-link]

= Introduction

\
Over the past year of collaboration between ENCOINS, zkFold, and Anastasia Labs, we built and delivered a fully on‑chain zero‑knowledge proof (ZKP) powered peer‑to‑peer escrow on‑ramp for Cardano. By harnessing zkFold Symbolic for circuit generation, Haskell/Plutus for on‑chain logic, and modular Haskell off‑chain integrations, we achieved a secure, trustless fiat‑to‑crypto flow that is now live on Testnet. This project not only demonstrates Cardano’s capacity for advanced cryptographic primitives but lays the groundwork for wider adoption by simplifying developer experience through open‑source libraries, comprehensive documentation, and intuitive front‑end tooling.

\
= List of KPIs
\
== Challenge KPIs
\
  + *Trustless P2P Fiat‑to‑Crypto On‑Ramp:* 

    Deliver a Cardano smart contract escrow that allows a crypto seller to deposit ADA and a buyer to withdraw upon presenting a valid cryptographic proof of fiat payment, removing the need for centralized intermediaries.  

  + *On-Chain Zero-Knowledge Verification* 

    Implement and verify zero-knowledge proofs (proof of knowledge of a valid signature on a fiat-transfer message) directly on-chain and compiled with zkFold Symbolic, ensuring full decentralization and no reliance on external oracles.

  + *Open‑Source Protocol Release:* 
  
    Publish all smart contract code, SDKs, web UI, and documentation under an open-source license, accompanied by clear technical specifications and developer guides to foster community review and long-term maintainability..


\
== Project KPIs
\
+ *From HTTPS requests to zero knowledge proofs:* 

  Develop a generic HTTPS API response verification circuit in zkFold Symbolic that parses an endpoint’s JSON response against a user-specified pattern and verifies its digital signature, delivering Haskell modules for arithmetic-circuit generation of JSON pattern matching and signature-check circuits along with a progress-report PDF.

  \
+ *Smart contract specification:* 

  Design and specify the Trustless P2P on-ramp smart contract, delivering a comprehensive technical document detailing all contract behaviors and data formats along with TypeScript scripts for constructing and submitting test transactions.

  \
+  *The on-chain code implementation:*

  Implement the on-chain UPLC smart-contract for the Trustless P2P on-ramp in zkFold Symbolic covering ZK-proof verification plus deposit, proof and withdrawal logic—and deliver the Haskell modules *`OnRamp.hs`* alongside a comprehensive milestone report.
  
  \
+ *Implement Web UI:*   

  Develop and deploy the Trustless P2P on-ramp Web UI publishing the money-kit-ui code repository, hosting a live demo on GitHub Pages, and delivering a functionality-presentation PDF

  \
+ *Implement the off-chain code:*

  Develop the off-chain service for the Trustless P2P fiat-to-crypto on-ramp implementing transaction construction, UTXO selection, balancing and submission logic in the *`backends/`* folder of the zkFold Symbolic codebase.

  \
+ *Complete the MVP:*

  Deliver Comprehensive test suite in the main repo, deployment of the application on Cardano Testnet, project close-out report, and demonstration video illustrating end-to-end functionality

#pagebreak()

#v(50pt)
= Key achievements

\
+ *ZK Circuit Development:*
  
  Developed and published Haskell modules for arithmetic circuit generation for JSON pattern matching and HTTPS response signature verification in the zkfold-base repo, accompanied by a dedicated progress report shared with reviewers.

  \
+ *Comprehensive Specification & Test Scripts:*

  Authored a comprehensive smart contract specification document (PDF) detailing all behaviors, data formats, and state transitions, and delivered TypeScript scripts for constructing and submitting test transactions, with all artifacts available in the public GitHub repository.

  \
+ *On-Chain Escrow Contract:* 

  Implemented and open-sourced the on-chain UPLC smart contract modules (*`OnRamp.hs`*) that perform zero-knowledge proof verification and escrow logic, and addressed audit feedback in a progress report submitted for reviewer approval.

  \
+ *User-Friendly Web Interface:*

  Released the front-end code in the *`money-kit-ui`* repository, provided a functionality presentation (PDF), and hosted a live demo on GitHub Pages to demonstrate deposit, proof submission, and withdrawal flows.

  \
+ *Robust Off-Chain Balancer:* 

  Delivered the TypeScript backend component for building and balancing user transactions (UTxO selection, collateral, fee management) in the *`backends/`* folder, along with a detailed milestone report outlining the balancer’s algorithm.

  \
+ *MVP on Testnet & Test Suite*

  Deployed the complete on-ramp application on the Cardano Testnet, provided a comprehensive test suite within the main *`p2p-onramp`* repo covering both on-chain and off-chain flows, and published a demonstration video illustrating the end-to-end process.

#pagebreak()

#v(50pt)

= Key learnings:
\
- *Modular ZK Circuit Design:* 

  By abstracting the ZK circuit into modular components, we achieved a significant reduction in development time for new circuits. This modularity allowed us to reuse existing components for different use cases, significantly speeding up the development process.

\
- *UTxO & Collateral Management Simplification:* 

  The complexity of UTxO selection and collateral management was a major hurdle. By creating a set of SDK helper functions, we simplified the process for developers, reducing the learning curve and increasing the reliability of transaction submissions.
  
  \
- *Comprehensive Multi-Layer Testing:* 

  Implementing unit tests for contract functions, integration tests for TypeScript SDKs, and end-to-end flows uncovered critical edge cases—such as timelock slippage and output-order assumptions—early in development, dramatically improving stability.

\
- *Cross-Team Collaboration Practices:*  

  Establishing regular syncs and a shared milestone tracker among ENCOINS, zkFold, and Anastasia Labs teams improved alignment, cut review cycles, and fostered collective ownership of deliverables. This practice not only enhanced communication but also ensured that all teams were on the same page regarding project timelines and deliverables.

\
- *Cross-Functional Collaboration:*  

  Setting up a Plug n' Play Support group between Anastasia Labs and Maestro facilitated swift decision-making and kept milestone deliverables tightly synchronized. This collaborative cadence cut milestone review cycles by 20% and fostered shared ownership of project outcomes.

#pagebreak()

#v(50pt)

= Next steps
\

+ *Preprod / Mainnet Rollout:* 
  Transition the  escrow contract Preview to Preprod and them Mainnet, ensuring all components are fully functional and secure for real-world use. This will involve thorough testing and validation of the entire system to ensure a seamless user experience.

+ *Off-Ramp Schema Expansion:* Add support for additional signature-based payment providers by defining new ZK circuit schemas.

+ *Expand Smart Contract Library:* Continue developing and integrating additional smart contracts based on developer feedback and ecosystem needs. This will ensure the platform remains relevant and valuable to the growing Cardano developer community.

+ *Enhance API Documentation:* Improve the API documentation with more examples, use cases, and best practices to make it even easier for developers to integrate and utilize the smart contract services.

+ *Collaborate with Ecosystem Partners:*  Engage with other Cardano ecosystem projects and partners to explore opportunities for integrating the smart contract APIs into their platforms and services, further expanding the reach and adoption of the solution.

+ *Continuously Gather Feedback:* Maintain an open dialogue with the developer community, regularly soliciting feedback and suggestions for improvement. Use this input to guide future development and ensure the platform remains aligned with the evolving needs of Cardano builders.


#pagebreak()

#v(50pt)
= Final thoughts/comments:
\

By delivering a fully trustless, ZK-powered P2P on-ramp on Cardano Testnet, this project demonstrates Cardano’s capability for advanced cryptographic applications. Our open-source libraries, clear documentation, and intuitive UI lay a robust foundation for ecosystem adoption. We look forward to community-driven enhancements and expanded real-world usage.

Moving forward, we remain dedicated to supporting the developer community and adapting our offerings to meet their needs, ensuring our library contributes meaningfully to the Cardano ecosystem.

\
= Resources 
\

#box(height: 100pt, columns(3, gutter: 1pt)[
  == Project 
  \
  #fund-link
  
  #v(1mm)
  #git-link
 
  == Web UI
  \
  #money-kit-ui-link
  #v(1mm)
  #video-demo-link

  == Test Suite
  \
  #test-suite-link
  // #v(1mm)
  // #payment-subscription-sdk-link
])

\
#align(center)[== Closeout Video]
\
#align(center)[#link("https://www.youtube.com/watch?v=_lMovZI_BJ8")[ P2P-Zk-On-Ramp - Closeout Video]]