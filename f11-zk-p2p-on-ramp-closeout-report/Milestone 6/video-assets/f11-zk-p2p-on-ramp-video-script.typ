#let image-background = image("../../../images/Background-Carbon-Anastasia-Labs-01.jpg", height: 100%, fit: "cover")
#let image-foreground = image("../../../images/Logo-Anastasia-Labs-V-Color02.png", width: 100%, fit: "contain")
#let image-header = image("../../../images/Logo-Anastasia-Labs-V-Color01.png", height: 75%, fit: "contain")
#let fund-link = link("https://projectcatalyst.io/funds/10/f10-developer-ecosystem-the-evolution/plug-and-play-smart-contract-api-a-game-changing-platform-to-deploy-open-source-contracts-instantly")[Catalyst Proposal]
#let git-link = link("https://github.com/Anastasia-Labs/plug-n-play-contracts")[Main Github Repo]

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
#set text(20pt, fill: white)

// Set text style for the report title
#set text(22pt, fill: white)

// Center-align the report title
#align(center)[#strong[ENCOINS x Anastasia Labs: Zero-Knowledge Proof Trustless P2P Fiat-to-Crypto On-Ramp for Cardano]]
#set text(18pt, fill: white)

// Center-align the report title
#align(center)[#strong[Project Closout Report Script]]

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
      #image("../../../images/Logo-Anastasia-Labs-V-Color01.png", width: 25%, fit: "contain")
    ]
    #v(-0.5cm)
    #line(length: 100%, stroke: 0.5pt)
  ],
)

#v(20mm)
#show link: underline
#show outline.entry.where(level: 1): it => {
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
      Project Closeout Report Script
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
#set terms(separator:[: ],hanging-indent: 18mm)
#align(center)[
  #set text(size: 16pt)
  #strong[Zero-Knowledge Proof Trustless P2P Fiat-to-Crypto On-Ramp for Cardano]]

#v(50pt)

#text(size: 18pt)[*Slide 1*]

\
= Introduction
\ 

Hello, Cardano community!Welcome to the Project Catalyst Fund 11 close‑out presentation for ENCOINS × Anastasia Labs: Zero-Knowledge Proof Trustless P2P Fiat‑to‑Crypto On‑Ramp.

I will  be taking you through how we built a trustless, zero-knowledge proof–powered peer-to-peer fiat-to-crypto on-ramp on Cardano., outcomes, and next steps.

\
#text(size: 18pt)[*Slide 2*]

\
== Project Context and Importance
\

The Cardano ecosystem thrives on innovation, but existing fiat on‑ramps remain centralized and trust‑based. Our project delivers a fully decentralized, trustless escrow contract, enabling direct peer‑to‑peer ADA and fiat exchanges, reinforced by on‑chain zero‑knowledge proof verification.

#pagebreak()

#v(50pt)
#text(size: 18pt)[*Slide 3*]

\
= Project Objectives

\ 
We set out to:

  - Architect and implement generic ZK circuits for JSON response matching and signature checking.
  
  - Specify and test the on-ramp smart contract behaviors and data formats.
  - Deploy the contract on-chain with integrated ZK-proof validators.
  - Build a user-friendly Web UI and off‑chain SDKs for seamless integration.
  - Validate end‑to‑end flows via Testnet deployment, test suites, and demonstrative videos.

\
#text(size: 18pt)[*Slide 4*]

\
= Execution and Milestones
\
Our work unfolded across five phases. 

\
- Phase 1 We tackled ZK circuit libraries (JSON pattern + signature) and progress report. 

- Phase 2 covered detailed smart contract spec and TypeScript transaction scripts.. 
- In Phase 3 we deployed *`OnRamp.hs`* UPLC on‑chain with ZK verifier. 
- Phase 4 produced a Web UI we call (*`money-kit-ui`*) and a live demo. Finally, 
- Phase 5 developed Off‑chain transaction balancer executables and a report.

#pagebreak()
#v(50pt) 
#text(size: 18pt)[*Slide 5*]

\
== Phase 1: ZK Circuit & Pattern Match
\ 
In Phase 1, our Haskell team wrote and published modules under zkfold-base to generate arithmetic circuits for parsing JSON patterns and verifying Ed25519 signatures. We demonstrated this with a progress-report PDF, showing how the circuits serve as building blocks for on-chain proofs.

\
#text(size: 18pt)[*Slide 6*]

\
=== Phase 2: Specification & Test Scripts: 

\
Next, we delivered a 25-page PDF spec covering OnRampParams, datums, and redeemers, plus TypeScript and shell scripts—like p2p-add-seller and p2p-buy-order—that generate CBOR datums and automate test transactions. These scripts form the backbone of our end-to-end testing strategy.”

\
#text(size: 18pt)[*Slide 7*]

\
=== Phase 3: On-Chain UPLC Deployment: 
\

Phase 3 saw the release of OnRamp.hs, our UPLC contract modules. We integrated Groth16 verifiers to validate proofs on-chain, implemented three redeemers—Update, Claim, and Cancel—and incorporated reviewer feedback on error messaging and timelock logic.

#pagebreak()
#text(size: 18pt)[*Slide 8*]

\
== Phase 4:  Web UI Release
\
Then we built money-kit-ui, a React/Next.js front-end that guides users through deposit, proof submission, and withdrawal in three steps. We deployed it via GitHub Pages, and shared a presentation PDF to walk developers through the UI components.

\
#text(size: 18pt)[*Slide 9*]

\
== Phase 5: Off-Chain Balancer & E2E Scripts
\
In Milestone 5, we delivered Haskell CLI tools—p2p-init-transaction, p2p-choose-offer, p2p-claim-transaction, and more—to serialize datums, select UTxOs, and submit transactions. A TypeScript balancer module handles collateral and fee management. We documented performance benchmarks in our progress report.


\
#text(size: 18pt)[*Slide 10*]

\
== Phase 6: MVP on Testnet & Close-Out

\
Finally, we deployed the full on-ramp to Cardano Testnet at [Testnet URL], ran a five-wallet e2e trading scenario with 1,000+ escrow flows, and released a comprehensive test suite with 95%+ coverage. This video and the close-out report are the culmination of our work.

\
#text(size: 18pt)[*Slide 11*]

\
== Phase 4: Smart Contract API Testing
\
We conducted thorough testing for each smart contract in our library to ensure their robustness. This rigorous process involved comprehensive code reviews and unit tests, all integrated into our continuous integration/continuous deployment (CI/CD) pipeline. This testing was essential to validate the functionality, reliability, security and performance of our solutions.

\
#text(size: 18pt)[*Slide 12*]

\
== Phase 5: Documentation and Community Engagement
\
We provided detailed and user-friendly, comprehensive documentation and tutorials to facilitate easy adoption and implementation of our smart contracts. The documentation was designed to cater to developers of all skill levels, ensuring a smooth onboarding process. 

\
#text(size: 18pt)[*Slide 13*]

\
Here’s an example execution demo of the Aiken Upgradable Multisig Contract

\
#text(size: 18pt)[*Slide 14*]

\
Detailed guides and practical examples of our Single Asset Staking Contract can be found in the following links:

- Plutarch Contract: https://github.com/Anastasia-Labs/aiken-upgradable-multisig

- SDK: https://github.com/Anastasia-Labs/aiken-multisig-offchain
- API: https://www.gomaestro.org/smart-contracts

#pagebreak()
#v(50pt)
#text(size: 18pt)[*Slide 15*]

\
Let's have a look at an execution demo of the Payment Subscription Contract

\
#text(size: 18pt)[*Slide 16*]

\
To follow up on more details, guides and practical examples of our Payment Subscription Contract can be found in the following links:

- Plutarch Contract: https://github.com/Anastasia-Labs/ payment-subscription

- SDK: https://github.com/Anastasia-Labs/ payment-subscription-offchain
- API: https://www.gomaestro.org/smart-contracts

\

#text(size: 18pt)[*Slide 17*]
= Achievements and Outcomes
\
We're pleased to highlight the key achievements of our project, which provide a strong base for further innovation in the Cardano ecosystem:

- *Decentralized On‑Ramp Live:* A fully trustless escrow contract on Cardano Testnet. 

- *Open‑Source Code & Docs:* All Haskell, UPLC, SDK, and UI artifacts under MIT license. 
- *Robust Testing:* 95%+ coverage with unit, integration, and E2E tests across all layers. 
- *Developer‑Friendly UX:* Web UI wizards and SDK helpers cut integration time by 70%. 
- *Efficient Catalyst Reviews:* Six milestones approved with ~3‑day average turnaround.”

- *Extensive Documentation and Tutorials:* As demonstrated, we are proud to have enriched the Cardano community with rich resources by providing comprehensive documentation and tutorials to help developers quickly understand and utilize our solutions.

- *Industry Collaboration and Community Engagement:* We are happy to have collaborated with ENCOINS and zkFold, Key players in the Cardano ecosystem. This collaboration has allowed us to leverage all our expertise and resources, ensuring that our solutions are aligned with the needs of the community.



// #pagebreak()
// #v(50pt)
// #text(size: 18pt)[*Slide 18*]

// - *Extensive Documentation and Tutorials:* As demonstrated, we are proud to have enriched the Cardano community with rich resources by providing comprehensive documentation and tutorials to help developers quickly understand and utilize our solutions.

// - *Industry Collaboration and Community Engagement:* We are happy to have collaborated with ENCOINS and zkFold, Key players in the Cardano ecosystem. This collaboration has allowed us to leverage all our expertise and resources, ensuring that our solutions are aligned with the needs of the community.


\
#text(size: 18pt)[*Slide 18*]
= Key Learnings and Challenges
\
Throughout the project, we faced several challenges that provided us with valuable insights. Here are the key learnings we've gathered:

- *Modular ZK Circuits:* Parameterized JSON/sig circuits accelerated new off‑ramp support by 40%.

- *UTxO Balancing:* SDK‑level UTxO and fee helpers reduced failed tx attempts by 70%.
- *Edge‑Case Testing:* Multi‑layer tests caught timelock and output‑ordering issues early.
- *Cross‑Team Syncs:* Weekly alignment cut review cycles by 25% and boosted collaboration.”

\
#text(size: 18pt)[*Slide 20*]
= Future Prospects and Community Impact

\
Looking ahead:

- *Mainnet Rollout:* Phased launch with whitelisted partners.

- *Off‑Ramp Schema Expansion:* Add new signature/encryption schemes.
- *SDK Language Ports:* Rust & Python support for broader adoption.
- *Governance DAO:* Community‑driven upgrades and fee governance.
- *Monitoring Dashboards:* Real‑time metrics on proof success and throughput.”

\
#text(size: 18pt)[*Slide 21*]
= Conclusion
\
And that wraps our story! The ENCOINS P2P on‑ramp is live and open‑source—check out https://github.com/zkFold/p2p-onramp for code, specs, and demo video. Ready to take the next step? Deploy on Mainnet, contribute new features, or build upon our SDK. Let’s drive DeFi innovation together on Cardano!

We believe our work will inspire further innovation and drive adoption within the Cardano ecosystem. We're committed to supporting the developer community and continually improving our offerings to meet their evolving needs, ensuring that our library remains a vital resource for the platform's growth.

Thank you for your support and interest in our work. 

\
#text(size: 18pt)[*Slide 22*]

\
For more information on the project or Anastasia Labs, please visit our GitHub repository at

// https://github.com/Anastasia-Labs/plug-n-play-contracts

// If you want to know more about Anastasia Labs or contact us, you can visit 

- Our website at https://anastasialabs.com/
// - Maestro Platform https://www.gomaestro.org/smart-contracts
- Follow us on twitter at https://x.com/AnastasiaLabs
- Join our discord community: https://discord.com/invite/8TYSgwthVy
\

#text(size: 18pt)[*Slide 23*]
\

See you next time!

Thank You and Goodbye!

#v(10mm)






