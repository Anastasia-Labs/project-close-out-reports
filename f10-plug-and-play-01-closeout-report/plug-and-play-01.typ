#let image-background = image("../images/Background-Carbon-Anastasia-Labs-01.jpg", height: 100%, fit: "cover")
#let image-foreground = image("../images/Logo-Anastasia-Labs-V-Color02.png", width: 100%, fit: "contain")
#let image-header = image("../images/Logo-Anastasia-Labs-V-Color01.png", height: 75%, fit: "contain")
#let fund-link = link("https://projectcatalyst.io/funds/10/f10-developer-ecosystem-the-evolution/plug-and-play-smart-contract-api-a-game-changing-platform-to-deploy-open-source-contracts-instantly")[Catalyst Proposal]

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
#align(center)[#strong[Plug-and-play-01 Smart Contract API]]
#set text(18pt, fill: white)

#align(center)[#strong[PROJECT CLOSE-OUT REPORT]]

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
      *Anastasia Labs – Plug-and-play-01 Smart Contract API*
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

// Display project details
#set terms(separator:[: ],hanging-indent: 18mm)
/ Project Name: Plug-and-play Smart Contract API: A game-changing platform to deploy open-source contracts instantly
/ URL: #link("link")[#fund-link]
\
= List of KPIs
\
== Challenge KPIs
\
  + *Enhancing Developer Productivity:* Given the complexities and time-consuming nature of building secure and reliable smart contracts from scratch, we aimed to streamline the development process. By providing a comprehensive library of modular, reusable, and secure smart contracts, this proposal simplifies integration and deployment. Developers will be able to leverage ready-made and customizable smart contracts, employing best practices and security patterns through a standardized smart contract interface. This minimizes the effort developers spend on repetitive tasks, allowing them to focus on innovation and application-specific logic.

  + *Increasing Smart Contract Security:* A major challenge for developers is the high risk of smart contract exploitation due to insufficient auditing and security expertise. Our solution provides battle-tested smart contracts, significantly reducing vulnerability risks and enhancing the overall security of Cardano DApps.

  + *Driving Ecosystem Growth and Adoption:* Our smart contract-as-a-service platform simplifies integration and deployment, attracting more developers to the Cardano ecosystem. Developers will have access to fully integrated smart contracts and be able to interact with them simply via APIs. This will revolutionize Cardano dApp development, unleashing the full potential of Cardano. By offering a standardized interface and best practices, we make it easier for both small teams and large enterprises to build on Cardano.

#pagebreak()

== Project KPIs
\
+ *Provide Secure, Modular and Reusable APIs :* The team developed robust, optimized, and well-tested implementations of Single Asset Staking Contracts, Linear Vesting Contracts, and Direct Offer Contracts. These solutions aim to reduce the time required for developers to build and deploy smart contracts, from weeks or months to even mere minutes, depending on the developer's skill level. By providing secure, modular, and reusable APIs, we address the community's needs for reliable and efficient tools.

+ *Ensuring Robustness and Reliability:* We conducted rigorous code reviews and comprehensive unit testing to ensure that all smart contracts are robust, reliable, and production-ready. This effort included validating the correctness and efficiency of our implementations, guaranteeing their performance in real-world applications.

+ *Streamlined Onboarding and Integration:* The project delivered ready-to-use smart contract APIs, along with comprehensive documentation and user-friendly tutorials available on the project’s #git-link. Additionally, our smart contracts and SDKs were seamlessly integrated with Maestro, providing developers with a unified platform for deploying and managing smart contracts. This integration simplifies the development process, allowing developers to interact with our contracts easily and efficiently.

+ *Increased Developer Adoption:* We have implemented tools to monitor key metrics such as API call volume, the number of unique developers using the APIs, and the number of projects integrating the APIs. This monitoring, combined with community feedback, will guide us in continuously improving the projects and developing new features throughout the project's lifecycle.
#pagebreak()

\
= Key achievements
\
+ *Development and Deployment of Core Smart Contracts:*

  - *Single Asset Staking Contracts:* We successfully developed and deployed contracts that enable users to collectively stake their digital assets and distribute rewards fairly. This contract addresses a significant need within the Cardano ecosystem, providing a reliable and standardized way to implement staking mechanisms.

  - *Linear Vesting Contracts:* Our team implemented secure linear vesting contracts, which offer customizable options for releasing assets gradually over a specified period. This feature is essential for projects that need to manage token distributions in a controlled manner, such as vesting schedules for team members or early investors.

  - *Direct Offer Contracts:* We developed a contract that facilitates peer-to-peer trading of assets through a Direct Offer feature. This contract enhances the flexibility of trading within the ecosystem, enabling secure and efficient transactions directly between parties.

+ *Creation of Comprehensive Off-Chain SDKs:*

  - We developed off-chain SDKs for each of our smart contracts, including Single Asset Staking, Linear Vesting, and Direct Offer. These SDKs are available on our #git-link and are designed to simplify the integration of our smart contracts into dApps, providing developers with the tools they need to interact with the blockchain seamlessly.

+ *Integration with Maestro:*

  - We successfully integrated our smart contracts and SDKs with Maestro, enabling developers to interact with our contracts through Maestro's platform. This integration provides a streamlined interface for deploying and managing smart contracts, further lowering the barrier to entry for developers.

+ *Extensive documentation and tutorials:* 

  - We provided thorough documentation and tutorials for each contract available on our #git-link. These resources are designed to help developers quickly understand and implement our solutions, ensuring a smooth onboarding process and encouraging adoption.
#pagebreak()

\
= Key learnings:
\
- *Modular Design and Security:* Our project reaffirmed the value of modular, reusable smart contracts for streamlining development and enhancing security. By providing pre-built contracts, we enabled developers to focus on innovation, reducing the need for extensive coding. Rigorous testing and code reviews further validated that our battle-tested contracts effectively mitigate vulnerabilities. This approach demonstrated the potential of modular smart contracts to accelerate the development of secure and reliable dApps on Cardano.

- *Simplifying Integration for Ecosystem Growth:* We confirmed that simplifying integration via APIs lowers barriers for developers, making it easier for both small teams and larger enterprises to adopt Cardano. This strategy is essential for driving ecosystem growth and increasing adoption.

- *Balancing Customization with Standardization:* The project underscored the need to balance customizable solutions with standardized interfaces. This flexibility ensures consistency while catering to diverse developer needs, which will be crucial as the project evolves.

- *Importance of Comprehensive Documentation and Monitoring:*  Creating thorough documentation and user-friendly tutorials is vital for effective developer onboarding. Additionally, implementing monitoring tools for key metrics prepares us to make informed, data-driven improvements, helping guide future development based on real-world usage patterns.
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

We are proud to introduce our modular smart contract library to the Cardano community. Our commitment to creating secure and scalable solutions lays a strong foundation for future development.

We believe that our implementations can enhance the capabilities of DApps on Cardano and serve as a valuable resource for developers. We eagerly anticipate how these tools will inspire innovation and drive adoption in upcoming projects.

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