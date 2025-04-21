#import "@preview/cetz:0.2.2"

#let image-background = image("../../images/background-1.jpg", height: 100%, fit: "cover")
#let image-foreground = image("../../images/Logo-Anastasia-Labs-V-Color02.png", width: 100%, fit: "contain")
#let image-header = image("../../images/Logo-Anastasia-Labs-V-Color01.png", height: 75%, fit: "contain")
#let luid-evolution-link = link("https://anastasia-labs.github.io/lucid-evolution")[Lucid Evolution Website]
#let lucid-evolution-git-link = link("https://github.com/Anastasia-Labs/lucid-evolution")[Main Github Repo]
#let project_link = link("https://projectcatalyst.io/funds/11/cardano-use-cases-product/anastasia-labs-x-maestro-plug-n-play-20")[Catalyst Proposal]
#let milestone_link = link("https://milestones.projectcatalyst.io/projects/1100025/milestones/3")[Milestone 3]
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
      *Plug 'n Play 2.0*
      #v(-3mm)
      Integration Phase: Smart contract API integration - Milestone 3
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
  #strong[Integration Phase: Smart contract API integration	]]
\

#set heading(numbering: "1.")
// #show heading: set text(rgb("#c41112"))


#v(50pt)

= Executive Summary
\
The Integration Phase has successfully brought together the onchain smart contracts and offchain SDKs with Maestro’s robust infrastructure. This milestone confirms that both the upgradable multisignature smart contract and the subscription payments smart contract are fully integrated and operational via the #maestro_link. As a result, developers now have secure, tested, and accessible endpoints to deploy and interact with these contracts, leveraging comprehensive documentation and demonstration materials for a seamless experience.

#pagebreak()
#v(50pt)

= Objectives and Acceptance Criteria
#v(50pt)
== Objectives
\
- *Offchain SDK Integration:* 

  Integrate both the upgradable multisignature (multisig) smart contract SDK and subscription payments smart contract with Maestro’s API endpoints.
\
- *API Accessibility:* 
  
  Ensure that the integrated contracts are fully accessible and functional via Maestro’s platform.
\
- *Seamless Developer Experience:* 
  
  Provide thorough documentation and demonstrations to facilitate ease of adoption and use by developers.

#pagebreak()
\
== Acceptance Criteria
\
- *Endpoint Availability:*
 
  Both the upgradable multisignature smart contract and subscription payments smart contract must be accessible through Maestro API endpoints at Maestro’s smart contracts portal.

\
- *Documentation:*

  Clear and detailed documentation demonstrating the usage and integration of both contracts must be available in the GitHub repository (https://github.com/Anastasia-Labs/plug-n-play-contracts).


\
- *User Demonstration:*

  A video demo showcasing the use of Maestro’s contract endpoints and the practical deployment of the contracts must be provided.


#pagebreak()
#v(50pt)
= Implementation Overview
#v(50pt)

== Integration with Maestro Platform
\
- *Onchain and Offchain Alignment:*

  The onchain Aiken code for both the multisig and subscription payments smart contracts, along with their corresponding offchain SDKs, have been successfully integrated with the Maestro infrastructure.
\
- *Endpoint Deployment:* 

  The integration process involved deploying the smart contracts to the Maestro platform, where API endpoints expose their functionalities. These endpoints are now fully operational and verified to handle live requests.

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
The following items have been provided as evidence of the successful completion of Milestone 3:
#v(50pt)

\
+ *Live Endpoints:* 

  Both the upgradable multisignature and subscription payments smart contracts are live and operational at #maestro_link.

  \
+ *Repository Documentation:*

  Detailed documentation, test reports, and usage guides can be found at the project’s GitHub repository (https://github.com/Anastasia-Labs/plug-n-play-contracts). 
  
    Specifically:

    - #multisig_sdk_link
    
    - #subscription_offchain_link

  \
+ *Video Demonstration:*

  A video demo showcasing the practical use of Maestro’s API endpoints for both smart contracts is available and forms a key piece of evidence supporting milestone completion.

  - #subscription_video_link
  
  - #multisig_video_link

#pagebreak()
#v(50pt)
= Conclusion and Next Steps
#v(50pt)

== Conclusion
\
Milestone 3 has been successfully achieved, marking the seamless integration of our smart contracts with Maestro’s API endpoints. This integration not only enhances the developer experience by providing a ready-to-use platform for deploying and interacting with smart contracts, but it also reinforces the security and efficiency of our solution.

#pagebreak()
\
== Next Steps
\
*Milestone 4: Testing Phase – Smart Contract API Testing*

\
*Objective:*

  Develop and execute integration test cases covering all API endpoints for both the multisig and subscription payments smart contracts on Maestro.

\
*Key Deliverables:*

  - Thorough test cases addressing normal scenarios, edge cases, and error handling.

  - Detailed documentation with instructions on running the tests and interpreting the results.
\
*Evidence:*

  - Test cases and execution logs are available on the project’s GitHub repository.

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




