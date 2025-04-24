#let image-background = image("../../images/Background-Carbon-Anastasia-Labs-01.jpg", height: 100%, fit: "cover")
#let image-foreground = image("../../images/Logo-Anastasia-Labs-V-Color02.png", width: 100%, fit: "contain")
#let image-header = image("../../images/Logo-Anastasia-Labs-V-Color01.png", height: 75%, fit: "contain")
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
#align(center)[#strong[Plug-and-play-01]]
#set text(18pt, fill: white)

// Center-align the report title
#align(center)[#strong[Project Closout Report Script]]

#v(5cm)

// Set text style for project details
#set text(13pt, fill: white)

// Display project details
#table(
  columns: 2,
  stroke: none,
  [*Project Number*], [1000149],
  [*Project manager*], [Maestro Team & Anastasia Labs],
  [*Date Started*], [December 23, 2023],
  [*Date Completed*], [May 31, 2024],
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
      *Anastasia Labs – Plug-and-play-01*
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

// Display project details
#set terms(separator:[: ],hanging-indent: 18mm)
#align(center)[
  #set text(size: 16pt)
  #strong["Plug-and-play Smart Contract API: A game-changing platform to deploy open-source contracts instantly"]]

\
#text(size: 18pt)[*Slide 1*]
= Introduction
\ 

Hello, Cardano community! I'm Mladen Lamesevic from Anastasia Labs. 

Today, I am pleased to present the closeout report for our Catalyst Fund 10 project titled:

#text(size: 18pt)[*Slide 2*]

“Plug-and-Play Smart Contract API: A Game-Changing Platform for Deploying Smart Contracts Instantly.”
In this presentation, I'll cover why we embarked on this project, how we executed it, and the outcomes we achieved. Let's dive in!
\

// Which challenge did you enter and why?
#text(size: 18pt)[*Slide 3*]
== Project Context and Importance
\

First, a bit of context,

The Cardano ecosystem has grown significantly, but developers face challenges in deploying dApps due to the lack of accessible platforms for launching smart contracts. This limitation has hindered the broader adoption of Web3 technologies. The complexity of building secure and reliable smart contracts, combined with insufficient security expertise, poses additional risks.

To address these issues, Maestro and Anastasia Labs collaborated on a project to simplify smart contract deployment. Our solution offers ready-to-deploy smart contract APIs, allowing developers to use composable and reusable contracts without delving into complex on/off-chain code. This approach aims to unlock the potential for Web3 adoption by providing a library of open-source contracts that empower developers to innovate and build on Cardano with ease.
\

// What was the approach you submitted in your proposal application which was eventually funded?
#text(size: 18pt)[*Slide 4*]
= Project Objectives
\ 
Our primary objectives were:

- To design and develop comprehensive library of secure and reusable smart contracts. We identified the Single Asset Staking, Linear Vesting, and Direct Offer contracts as our first set of contracts to focus on.

\
#text(size: 18pt)[*Slide 5*]

\
- To provide contracts that have been thoroughly tested to reduce vulnerabilities to Smart Contract exploitation, thereby enhancing the security of Cardano decentralised applications (DApps).

- To deliver ready-to-use Smart Contract APIs, along with comprehensive documentation and user-friendly tutorials and simplify the development process with standardized interfaces and best practices.
\
// Please explain any particular technical solutions you proposed and the amount of funding you received.
#text(size: 18pt)[*Slide 6*]
= Execution and Milestones
\
We approached the challenge from researching the projects most likely to have the most impact and begun by structuring our project into five key phases, each critical to achieving our objectives.

- Phase 1: Design and development
- Phase 2: Preparation Phase: Off-Chain SDKs Building
- Phase 3: Integration Phase: Smart Contract API Integration
- Phase 4: Testing Phase: Smart Contract API Testing
- Phase 5: Comprehensive Documentation and Community Engagement

\
#text(size: 18pt)[*Slide 7*]
== Phase 1: Design & Development
\ 
In this phase, we successfully developed the three essential smart contracts:
- *Single Asset Staking Contract:* To enable users to collectively stake digital assets and distribute rewards fairly.
- *Linear Vesting Contract:* To provide secure, customizable mechanisms for gradual asset release.
- *Direct Offer Contract:* To facilitate peer-to-peer trading of assets.

which are available on our #git-link and on #maestro-link.

\
#text(size: 18pt)[*Slide 8*]
=== Single Asset Staking Contracts 
\
This contract enables users to collectively stake digital assets and distribute rewards fairly, in a completely on-chain and trustless manner. As the name suggests, it allows for a single asset, which can be any Cardano Native Fungible Token, to be staked to earn rewards. The reward itself can be any Cardano Native Fungible Token.

\
#text(size: 18pt)[*Slide 9*]
=== Linear Vesting Contracts: 
\

With so many projects launching on Cardano, many a times, there arises a requirement of vesting a project's own tokens to either their core team or supporters of the project. Vesting assets to beneficiary in proportion to the elapsed time, i.e. Linear Vesting is a very straightforward and common preference. While there definitely exist more complex vesting requirements, we hope that the contract here will help those looking for something simple for their use case. Or serve as a reference for those who want to build more elaborate arrangements

Our Linear Vesting contract aims at providing a reliable mechanism for releasing Cardano Native Tokens gradually over a specified timeframe, with customization options to fit different requirements.

\
#text(size: 18pt)[*Slide 10*]
=== Direct Offer Contracts: 
\
The Direct Offer project provides a Plutarch-based implementation of a smart contract enabling peer-to-peer trading, in a trustless manner, for the Cardano blockchain. Without the need for a trusted third party or a Decentralized Exchange (DEX), a user can put up any Cardano native asset(s) for sale in exchange for any user-specified native asset(s).

\
#text(size: 18pt)[*Slide 11*]
== Phase 2:  Preparation Phase: Off-Chain SDKs Building
\
We built and made available SDKs for each smart contract, simplifying the integration process for developers. These SDKs ensure a seamless connection between the blockchain and off-chain applications, enhancing the utility of our smart contracts.

\
#text(size: 18pt)[*Slide 12*]
== Phase 3: Integration Phase: Smart Contract API Integration
\
In collaboration with Maestro, we integrated our smart contracts into a fully managed service, enabling developers to interact with them via APIs. This phase was crucial for demonstrating the real-world application of our contracts and their integration within existing infrastructure.

\
#text(size: 18pt)[*Slide 13*]
== Phase 4: Testing Phase: Smart Contract API Testing
\
We conducted thorough testing for all three smart contract in our library to ensure their robustness. This rigorous process involved comprehensive code reviews and unit tests, all integrated into our continuous integration/continuous deployment (CI/CD) pipeline. This testing was essential to validate the functionality, reliability, security and performance of our solutions.

\
#text(size: 18pt)[*Slide 14*]
== Phase 5: Documentation and Community Engagement
\
We provided detailed and user-friendly, comprehensive documentation and tutorials to facilitate easy adoption and implementation of our smart contracts. The documentation is designed to cater to developers of all skill levels, ensuring a smooth onboarding process. 

Furthermore, the team at Maestro showcased the capabilities of our solutions at prominent events, such as the 2023 Cardano Summit in Dubai.

\
#text(size: 18pt)[*Slide 15*]

\
Here’s an example execution demo of our Single Asset Staking Contract

\
#text(size: 18pt)[*Slide 16*]

\
Detailed guides and practical examples of our Single Asset Staking Contract can be found in the following links:

- Plutarch Contract: https://github.com/Anastasia-Labs/single-asset-staking

- SDK: https://github.com/Anastasia-Labs/single-asset-staking-offchain
- API: https://docs.gomaestro.org/category/single-asset-staking-1

\
#text(size: 18pt)[*Slide 17*]

\
Here’s an example execution demo of our Linear Vesting Contract

\
#text(size: 18pt)[*Slide 18*]

\
To follow up on more details, guides and practical examples of our Linear Vesting Contract can be found in the following links:

- Plutarch Contract: https://github.com/Anastasia-Labs/linear-vesting

- SDK: https://github.com/Anastasia-Labs/linear-vesting-offchain
- API: https://docs.gomaestro.org/category/linear-vesting-1

\
#text(size: 18pt)[*Slide 19*]

\
Here’s an example execution demo of our Direct Offer or Direct Swap Contract

\
#text(size: 18pt)[*Slide 20*]

\
More details, guides and practical examples of our Direct Offer/ Direct Swap Contract can be found in these links:

- Plutarch Contract: https://github.com/Anastasia-Labs/direct-offer

- SDK: https://github.com/Anastasia-Labs/direct-offer-offchain
- API: https://docs.gomaestro.org/category/direct-swap-1

\
#text(size: 18pt)[*Slide 21*]
= Achievements and Outcomes
\
We're pleased to highlight the key achievements of our project, which provide a strong base for further innovation in the Cardano ecosystem:

- *Implementation of Secure and Modular APIs:* Our team delivered secure, modular, and reusable APIs for Single Asset Staking, Linear Vesting, and Direct Offer Contracts. These APIs simplify the development process by reducing the time needed to build and deploy smart contracts, allowing developers to focus on more complex, application-specific logic.

- *Quality Assurance:* We prioritized the robustness and reliability of our smart contracts by conducting thorough code reviews and comprehensive unit tests. This extensive testing ensures our contracts are secure, reliable, and ready for real-world deployment.

- *Seamless Integration:* To further ease development, we successfully integrated our smart contracts with Maestro, providing a unified interface for contract deployment and management. This integration simplifies access and interaction with our contracts, making the development process more efficient.

#text(size: 18pt)[*Slide 22*]

- *Extensive Documentation and Tutorials:* As demonstrated, we are proud to have enriched the Cardano community with rich resources by providing comprehensive documentation and tutorials to help developers quickly understand and utilize our solutions.

- *Industry Collaboration and Community Engagement:* We are proud to have collaborated with Maestro, a Key player in the Cardano ecosystem who also deployed the Linear Vesting Contract on Maestro platform and it was already demoed at the Cardano Summit in Dubai.

- *Accessible via Demeter:* Other than Maestro, we're happy to say that anyone can try our Single-Asset Staking and Linear Vesting apps on Demeter.run as well.

\
#text(size: 18pt)[*Slide 23*]
= Key Learnings and Challenges
\
Throughout our project, we faced several challenges that provided us with valuable insights. Here are the key learnings we've gathered:

- *First, Modular Design and Security.* We've seen the effectiveness of modular, reusable smart contracts. These contracts not only simplify the development process but also enhance security. By providing pre-built, battle-tested contracts, we allow developers to focus more on innovation. Rigorous testing has ensured these contracts are robust against vulnerabilities.

- *Second, Simplifying Integration.* We've learned that simplifying the integration process through APIs is crucial. It lowers the barriers for developers, whether they're part of small teams or large enterprises. This simplicity is key to fostering ecosystem growth and encouraging more developers to build on Cardano.

- *Third, Balancing Customization with Standardization.* Striking a balance between offering customizable solutions and maintaining standardized interfaces is essential. This balance provides the necessary flexibility while ensuring consistency, which is critical to cater to a broad range of developer needs.

- *Lastly, Comprehensive Documentation and Monitoring.* Detailed documentation and user-friendly tutorials are vital for effective developer onboarding. Additionally, implementing monitoring tools for API usage helps us understand user needs and make data-driven improvements. This ensures we can continually refine our offerings to better serve the community.

\
#text(size: 18pt)[*Slide 24*]
= Future Prospects and Community Impact
\
- *Expand Smart Contract Library:* We aim to develop and integrate additional smart contracts, driven by developer feedback and evolving ecosystem needs. This will ensure that our platform remains a valuable resource for the growing Cardano developer community.

- *Enhance API Documentation:* We will improve our API documentation by adding more examples, use cases, and best practices, making it even easier for developers to utilize our services effectively.

- *Optimize Performance and Scalability:* As the use of our smart contract APIs grows, we will monitor performance closely and optimize to ensure high availability and responsiveness, even under heavy load and as the Cardano ecosystem evolves.

- *Collaborate with Ecosystem Partners:* We plan to engage with other projects and partners within the Cardano ecosystem to explore integration opportunities, expanding the reach and adoption of our smart contract APIs.

- *Continuously Gather Feedback:* We will maintain an open dialogue with the developer community, regularly soliciting feedback and suggestions. This input will guide our future development, ensuring we continue to meet the needs of Cardano builders.

- *Long-Term Commitment:* We will keep our libraries up-to-date with the ever-evolving Cardano ecosystem, ensuring our data structures remain relevant. By maintaining the open-source approach and transparent development process, we believe will inspire confidence and trust within the community.

\
#text(size: 18pt)[*Slide 25*]
= Conclusion
\
In conclusion, we're proud to have introduced the 'Plug and Play 01' smart contract library to the Cardano community. Together with Maestro, we have managed to develop secure, modular, and reusable smart contracts, create comprehensive off-chain SDKs, and provide extensive documentation, ultimately supporting the creation of no-code DApps, making it easier for a wider range of users to build on Cardano.

These achievements enhance the capabilities of DApps on Cardano, offering developers valuable tools to innovate and secure their applications. The no-code DApps feature, in particular, opens up blockchain development to those without programming skills, democratizing access to this technology.

We believe our work will inspire further innovation and drive adoption within the Cardano ecosystem. We're committed to supporting the developer community and continually improving our offerings to meet their evolving needs, ensuring that our library remains a vital resource for the platform's growth.

Thank you for your support and interest in our work. 

\
#text(size: 18pt)[*Slide 26*]

\
For more information, visit our GitHub repository at:

https://github.com/Anastasia-Labs/plug-n-play-contracts

If you want to know more about Anastasia Labs or contact us, you can visit 

- Our website at https://anastasialabs.com/
- Maestro Platform https://www.gomaestro.org/smart-contracts
- Follow us on twitter at https://x.com/AnastasiaLabs
- Join our discord community: https://discord.com/invite/8TYSgwthVy
\

#text(size: 18pt)[*Slide 26*]
\

See you next time!

Thank You and Goodbye!

#v(10mm)






