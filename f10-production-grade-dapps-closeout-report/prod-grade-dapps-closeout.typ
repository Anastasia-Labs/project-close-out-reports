
#let image-background = image("../images/Background-Carbon-Anastasia-Labs-01.jpg", height: 100%)
#set page(background: image-background,
          paper :"a4",
          margin: (left : 20mm,right : 20mm,top : 40mm,bottom : 30mm)
          )
#set text(15pt, font: "Barlow")

#v(3cm) 

#align(center)[#box(width: 75%, image("../images/Logo-Anastasia-Labs-V-Color02.png"))]

#v(1cm)

#set text(20pt, fill: white)

#align(center)[#strong[PROJECT CLOSE-OUT REPORT]]

#v(5cm)

#set text(13pt, fill: white)

#table(
  columns: 2,
  stroke: none,
  [*Project Number*], [: 1000010],
  [*Project manager*], [: Jonathan Rodriguez],
  [*Project Start Date*], [: Oct 8, 2023],
  [*Project Completion Date*], [: May 31,2024 ],
)

#set text(fill: luma(0%))

#set page(
  background: none,
  header: [
    #place(right, dy: 12pt)[#box(image(height: 75%,"../images/Logo-Anastasia-Labs-V-Color01.png"))]
    #line(length: 100%) 
  ],
  header-ascent: 5%,
   footer: [
    #set text(11pt)
    #line(length: 100%)
    #align(center)[*Anastasia Labs* \
    Project Close-out Report]
  ],
  footer-descent: 20%
)

#show link: underline
 #show outline.entry.where(level: 1): it => {
  v(12pt, weak: true)
  strong(it)
} 

#counter(page).update(0)

#v(100pt)

#outline(depth:2, indent: 1em)

#pagebreak()

#set page(
  footer: [
    #set text(11pt)
    #line(length: 100%) // Add a line above the footer
    #align(center)[*Anastasia Labs* \ Project Close-out Report]
    #place(right, dy:-7pt)[#counter(page).display("1/1", both: true)]
  ]
)

#v(20pt)

#show link: underline
#set terms(separator: [: ],hanging-indent: 40pt)

/ Project Name : Anastasia Labs - Open Source Production Grade DApps
#v(10pt)
/ URL : #link("https://projectcatalyst.io/funds/10/f10-developer-ecosystem-the-evolution/anastasia-labs-open-source-production-grade-dapps")

#v(5pt)

= List of KPIs  
== Challenge KPIs 
#v(5pt)
- *Addressing the Scarcity : * Aimed at reducing the scarcity of openly available, production-level codebases, the project achieved its goal by providing a suite of five versatile, open-source smart contract libraries. These libraries are readily accessible and can be used as-is or customized with additional application-specific logic.

- *Fostering Ecosystem Innovation :* The five smart contract libraries are a testament to best practices in smart contract design, testing and optimization. Designed with composability in mind, they serve as foundational blocks for building complex DApps. These libraries are ideal for teams aspiring to transition or start fresh in the Cardano ecosystem, streamlining the development process and fostering innovation within the ecosystem.

- *Ensure Code Quality and Production-Ready Resources : * The challenge was to uphold high standards of code quality, adherence to best practices, and readiness for production, aimed at alleviating the pain points faced by developers. The quality of the smart contract libraries was assessed through comprehensive methods, including code reviews, unit testing and property-based testing.

#v(10pt)
== Project KPIs 
#v(15pt)
- *Adoption Rate and Usage Metrics :*  The important statistics of each project's GitHub activity can be found at the following links #link("https://github.com/Anastasia-Labs/bridge-template/pulse/monthly")[bridge-template], #link("https://github.com/Anastasia-Labs/linear-vesting/pulse/monthly")[linear-vesting], #link("https://github.com/Anastasia-Labs/plutarch-merkle-tree/pulse/monthly")[plutarch-merkle-trees], #link("https://github.com/Anastasia-Labs/yieldfarming/pulse/monthly")[yield-farming], #link("https://github.com/Anastasia-Labs/single-asset-staking/pulse")[single-asset-staking]. This includes all the key repositories of this proposal which are detailed in the extensive documentation found here #link("https://anastasia-labs.github.io/production-grade-dapps")[documentation].


- *Extensive Documentation  :* Comprehensive documentation for each smart contract library, including detailed explanations of contract functionality, parameters, and usage, was provided. Detailed diagrams aid in understanding contract architecture and data flows.The document can be found #link("https://anastasia-labs.github.io/production-grade-dapps")[here].

#pagebreak()
#v(40pt)

= Key achievements 
#v(10pt)

-  All five smart contracts have been successfully made available on the Demeter platform, providing a user-friendly development environment to simplify the setup process for users.

-  Successful implementation of smart contracts, providing the Cardano developer community with production-ready resources and comprehensive documentation to help developers understand.

#v(10pt)

= Key learnings 
#v(20pt)
- *Enhanced Understanding of Business Domains :* One of the key learnings was gaining a deeper insight into various business domains where these smart contract projects add significant value. This understanding allows for better alignment of technical solutions with business needs, ensuring that the developed smart contracts effectively address real-world challenges.

#v(10pt)
- *Improvements in Tooling and Documentation :* Another important learning was the recognition of the need for improved tooling and documentation. By enhancing the style and clarity of documentation, we facilitate easier onboarding for developers, making it simpler for them to understand and contribute to the projects. This improvement not only accelerates the development process but also promotes a more inclusive and collaborative environment.

#v(10pt)
= Next steps
#v(10pt)
- *Expand with New Production-Grade DApps :* Develop and release additional high-quality DApps to enhance the ecosystem.

- *Increase Adoption :* Make these smart contracts available in various smart contract languages to reach a broader developer audience.

- *Provide Developer Support:* Offer comprehensive support to developers, including documentation and community engagement, to facilitate the adoption and use of these smart contracts.

#pagebreak()
#v(40pt)

= Final thoughts 
#v(20pt)
The project successfully addressed a significant challenge within the Cardano ecosystem by creating five versatile, open-source smart contract libraries with comprehensive documentation, ensuring high code quality and adherence to best practices. These libraries, available on the Demeter platform, provide production-ready resources and a user-friendly development environment, streamlining the setup process and fostering innovation. Moving forward, the focus will be on expanding with new production-grade DApps and increasing adoption by supporting various smart contract languages. This initiative not only reduces redundant development efforts but also sets a new standard for open-source contributions in the Cardano ecosystem.

#v(20pt)
= Resources : 
#v(20pt)
+ #link("https://github.com/Anastasia-Labs/bridge-template")[GitHub Repository - Bridge-Template]
+ #link("hhttps://github.com/Anastasia-Labs/linear-vesting")[GitHub Repository - Linear-Vesting]
+ #link("https://github.com/Anastasia-Labs/plutarch-merkle-tree")[GitHub Repository - Plutarch Merkle Trees]
+ #link("https://github.com/Anastasia-Labs/yieldfarming")[GitHub Repository -Yield Farming]
+ #link("https://github.com/Anastasia-Labs/single-asset-staking")[GitHub Repository -Single Asset Staking ]
+ #link("https://anastasia-labs.github.io/production-grade-dapps")[Documentation]
+ #link("https://demeter.run/ports")[Smart Contracts on Demeter]

#v(20pt)
= Close-out Video  : #link("https://www.loom.com/share/edbe02444de74baab114b76275fa1912?sid=4e2e9de3-65cc-46ae-9bc7-ba6f4934a74c")[Production Grade DApps - Closeout Video]
