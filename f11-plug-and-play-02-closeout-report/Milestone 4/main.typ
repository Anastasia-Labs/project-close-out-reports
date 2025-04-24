#import "@preview/cetz:0.2.2"

#let image-background = image("../images/background-1.jpg", height: 100%, fit: "cover")
#let image-foreground = image("../images/Logo-Anastasia-Labs-V-Color02.png", width: 100%, fit: "contain")
#let image-header = image("../images/Logo-Anastasia-Labs-V-Color01.png", height: 75%, fit: "contain")
#let luid-evolution-link = link("https://anastasia-labs.github.io/lucid-evolution")[Lucid Evolution Website]
#let lucid-evolution-git-link = link("https://github.com/Anastasia-Labs/lucid-evolution")[Main Github Repo]
#let project_link = link("https://projectcatalyst.io/funds/11/cardano-use-cases-product/anastasia-labs-x-maestro-plug-n-play-20")[Catalyst Proposal]
#let milestone_link = link("https://milestones.projectcatalyst.io/projects/1100025/milestones/4")[Milestone 4]
#let maestro_link = link("https://www.gomaestro.org/smart-contracts")[Maestro Smart Contract Platform]
#let multisig_sdk_link = link("https://github.com/Anastasia-Labs/aiken-multisig-offchain")[Multisig Offchain SDK]
#let subscription_offchain_link = link("https://github.com/Anastasia-Labs/payment-subscription-offchain")[Payment Subscription Offchain SDK]

#let subscription_video_link = link("https://www.youtube.com/watch?v=G-lBB6MX3lg")[Payment Subscription Tutorial Video]
#let multisig_video_link = link("https://www.youtube.com/watch?v=AtnnbzBWB-I")[Upgradable Multisig Tutorial Video]

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
#align(center)[#strong[Anastasia Labs X Maestro - Plug ‘n Play 2.0]]
#align(center)[Proof of Achievement - #milestone_link]

#v(5cm)

// Set text style for project details
#set text(13pt, fill: white)

#table(
  columns: 2,
  stroke: none,
  [*Project Id*], [1100025],
  [*Project Manager*], [Jonathan Rodriguez],
  [*URL*], [#project_link],
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
      *Plug 'n Play 2.0*
      #v(-3mm)
      Testing Phase: Smart contract API testing - Milestone 4
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
  #strong[Testing Phase: Smart contract API testing]]
\

#set heading(numbering: "1.")
// #show heading: set text(rgb("#c41112"))


#v(50pt)

= Executive Summary
\
The Testing Phase for the Plug ‘n Play 2.0 project culminates in the development and execution of comprehensive integration tests against #maestro_link. This milestone validates both the upgradable multisignature and subscription payments smart contracts under a variety of scenarios, including normal operations, boundary conditions, and error cases. The successful completion of these tests ensures the reliability, correctness, and resilience of the API interfaces, paving the way for wider developer adoption and production readiness.

#pagebreak()
#v(50pt)

= Objectives and Acceptance Criteria
#v(50pt)
== Objectives
\
+ Develop integration test suites targeting Maestro API endpoints for:

  - Upgradable multisignature smart contract

  - Subscription payments smart contract
  \
+ Test cases cover various scenarios, including normal functionality, edge cases, and error handling.


  \
+ Provide clear documentation with instructions for running the integration tests and interpreting the results.

#pagebreak()
\
== Acceptance Criteria
\
- Integration test cases cover all API Endpoints associated with the specified contracts, verifying both expected and edge-case behaviors.

\
- Test cases are written in a clear and understandable manner, with detailed descriptions of test scenarios and expected outcomes.

\
- Documentation provides clear instructions for developers on how to run the integration tests and interpret the results.



#pagebreak()
#v(50pt)
= Implementation Overview
#v(50pt)

== Integration Test Case Development
\
Test cases were written using the project’s offchain SDK in conjunction with a testing framework. Each endpoint was exercised through sample transactions, including:

  - Multi-signature transaction creation, updating, and finalization

  - Subscription plan creation, payment processing, and cancellation flows

  - Negative tests for unauthorized access, malformed payloads, and insufficient funds


#pagebreak()
\
== Verification of Contract Functionality

\
=== Upgradable Multisignature Smart Contract
\
  - *Secure Spending:* Verified through test cases and real transactions confirming that only authorized members can execute asset transfers.
  \
  - *Dynamic Signer Management:* Documented procedures for seamless adjustment of signer thresholds and dynamic addition or removal of signers were validated through integration tests.

\
=== Payments Subscription Smart Contract:
\
  - *Recurring Payment Management:* The contract is fully capable of enabling setup, management, and cancellation of recurring payments directly from user wallets.
  \
  - *API Accessibility:* Endpoints have been tested to ensure that the subscription payments functionality is easily accessible and robust under various conditions.

#pagebreak()
\
== Testing and Documentation
\
 - *Testing:*

  Comprehensive tests have been executed to verify the integration, ensuring that both contracts perform as expected when interacting through Maestro’s API endpoints.

\
- *Documentation:*

  Detailed implementation and usage guidelines are available on the GitHub repository (https://github.com/Anastasia-Labs/plug-n-play-contracts). This documentation includes step-by-step integration instructions, examples, and API reference materials.
\
- *Video Demonstration:*

  A video demonstration is provided, showcasing how to interact with the Maestro platform for deploying and managing the smart contracts, along with real-time transaction examples.

#pagebreak()

#v(50pt)
= Evidence of Milestone Completion 

\
The following items have been provided as evidence of the successful completion of Milestone :
#v(50pt)

\
+ *Integration tests:* 

  Developed integration test cases targeting the API Endpoints associated with the multisig smart contract and subscription payments smart contract can be found at https://github.com/Anastasia-Labs/plug-n-play-contracts.

  \
+ *Repository Documentation:*

  Test case documentation providing insights into the coverage and thoroughness of the testing approach can be found at https://github.com/Anastasia-Labs/plug-n-play-contracts.
  
    Specifically:

    - #multisig_sdk_link
    
    - #subscription_offchain_link

  \
+ *Execution logs:*

  Execution logs or reports demonstrating the results of integration testing, including pass/fail status and any identified issues or bugs can be found at https://github.com/Anastasia-Labs/plug-n-play-contracts.

  

#pagebreak()
#v(50pt)
= Conclusion and Next Steps
#v(50pt)

== Conclusion
\
With the completion of Milestone 4, the Plug ‘n Play 2.0 platform has demonstrated robust integration-level reliability across its core smart contract API surfaces. Developers can now proceed with confidence, leveraging the validated endpoints for building secure and scalable applications.

#pagebreak()
\
== Next Steps

\
*Final Milestone: Comprehensive Documentation and Completion Video*

\
*Objective:*
  
  Provide complete and accessible documentation along with a project closeout report and video.

\
*Key Deliverables:*

  - Documentation detailing how to use the API endpoints to compose and deploy smart contracts on Maestro.

  - Project Closeout Report summarizing the implementation approach and outcomes.

  - A demonstration video showcasing key features and the overall project impact.

\
*Evidence:*

All materials, including documentation, the closeout report, and the video, are available on the GitHub repository.




