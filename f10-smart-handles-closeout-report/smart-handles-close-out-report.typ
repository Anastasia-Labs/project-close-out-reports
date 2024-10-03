#let image-background = image("images/Background-Carbon-Anastasia-Labs-01.jpg", height: 100%)
#set page(
  background: image-background,
  paper: "a4",
  margin: (left: 20mm, right: 20mm, top: 40mm, bottom: 30mm)
)

#set text(15pt, font: "Barlow")

#v(3cm)

#align(center)[#box(width: 75%, image("images/Logo-Anastasia-Labs-V-Color02.png"))]

#v(1cm)

#set text(20pt, fill: white)

#align(center)[#strong[Smart Handles - Final Milestone]\
#set text(15pt); Project Close-out Report]
#v(5cm)

#set text(13pt, fill: white)

#table(
  columns: 2,
  stroke: none,
  [*Project Number*], [1000011],
  [*Project manager*], [Jonathan Rodriguez],
  [*Date Started*], [2023, October],
  [*Date Completed*], [2024, October],
)

#set text(fill: luma(0%))

#set page(
  background: none,
  header: [
    #place(right, dy: 12pt)[#box(image(height: 75%,"images/Logo-Anastasia-Labs-V-Color01.png"))]
    #line(length: 100%)
  ],
  header-ascent: 5%,
  footer: [
    #set text(11pt)
    #line(length: 100%)
    #align(center)[*Anastasia Labs* \ Project Close-out Report]
  ],
  footer-descent: 20%
)

#show link: underline
#show outline.entry.where(level: 1): it => {
  v(12pt, weak: true)
  strong(it)
}

#counter(page).update(0)
#set page(
  footer: [
    #set text(11pt)
    #line(length: 100%)
    #align(center)[*Anastasia Labs* \ Project Close-out Report]
    #place(right, dy: -7pt)[#counter(page).display("1/1", both: true)]
  ]
)

#v(100pt)


#outline(depth: 2, indent: 1em)
#pagebreak()
#set terms(separator: [: ], hanging-indent: 40pt)

#v(150pt)

= Smart Handles

#v(20pt)
An abstract contract, enabling dedicated script addresses (enhanceable with ADA
Handles) for interaction with dApps without going through their official
frontends, and only with use of a wallet.

/ URL: #link("https://projectcatalyst.io/funds/10/f10-osde-open-source-dev-ecosystem/anastasia-labs-smart-beacons-router-nfts")[Project Catalyst Proposal]

#pagebreak()
#v(20pt)

= Introduction

Considering how most dApps provide services through a single frontend, one can
argue this centralized aspect can go against the ethos of the blockchain
industry.  While many of these user interfaces are open source, the
inconvenience of going through having a local build makes it hard for excluded
audience to use such dApps.

We offer an abstract smart contract, which developers can leverage to implement
specific instances for dedicated tasks (such as swapping ADA to MIN via
Minswap), lock an ADA Handle in the generated address, and allow wallet owners
to simply send funds to the contract and benefit the underlying dApp.

Since at the time of proposal Cardano contracts where incapable of handling
datum-less UTxOs, this project also includes providing configurations to open
source wallets for supporting smart handles.

#v(60pt)

= Objectives and Challenges 

- Create an abstract contract as a foundation for implementing dedicated routing endeavours
- Accompany the contract with an off-chain SDK for developers
- Complement the suite with a CLI generator package so that smart handles instances can be utilized with much more ease
- Implement a simple (ADA-MIN swap via Minswap V2) and advanced (arbitrary swaps via MinswapV1) instances of smart handles as examples
- Submit sample transactions on preprod testnet
- Open a PR to an open source wallet, providing documentation for how users can benefit from the ADA-MIN smart handles instance

#pagebreak()
#v(20pt)
= Planning

Our project comprised of five main phases:
#v(60pt)
=== Design
The wrapper contract needed to provide a few stipulations (detailed further
down) in order to guarantee integrity for all instances. Furthermore,
convenience for both users and router agents were of utmost importance.

=== On-Chain Development
As it is inevitable for most abstractions to introduce overheads, we aimed to
minimize the performance cost by employing Plutarch for the wrapper contract.

=== Off-Chain SDK
Adhering to the same interface introduced in our other off-chain SDKs, we
provided a consistent and robust interface between all endpoints. Due to the
abstract nature of this contract, the SDK requires the users to provide
functions with predefined structures.

=== CLI Agent
To facilitate a convenient experience for router agents, we also developed a CLI
application generator function that allows instances to easily provide a simple
CLI which works through standard input and accompanying JSON files.

=== Wallet Integration
Since smart handles instances can only work with datums, wallets needed minor
configurations in order to provide the intended level of convenience for their
users. By openning a PR in an open source wallet (GameChanger), we provided the
basic guideline for wallets so that they could implement this feature if
desired.

#pagebreak()
#v(20pt)

= Recap - Smart Handles

#v(20pt)

== On-Chain Stipulations

- The contract needed to provide incentive for decentralized agents to carry out
  requests of smart handles instances, therefore ensuring agents getting their
  fees was one of the requirements
- Instances needed to be parameterized by their destination addresses so that
  the contract could guarantee their proper continuations without fault
- Two variants must have been supported (which we call "targets"): single, for
  instances that only supported single routes per transactions, and batch, for
  contracts that utilized a staking script to support multiple routes per
  transactions with minimal overhead
- Users needed to be able to cancel their requests at will
- As some dApp instances could benefit from other values provided in a
  transaction, the framework needed to also provide an advanced interface on top
  of the simple case (which only housed a users' addresses)

== Off-Chain Endpoints
All endpoints comprise of both single and batch target, while also supporting
simple and advanced cases.

=== Request
The simple variant only requires specifying assets to be locked at the instance.
The advanced variant on the other hand, is much more involved, requiring a
multitude of specs:
- Whether an owner is associated with the request
- How much is the router fee for routing to the destination address
- Router fee for invoking the reclaim endpoint
- Required mint for the routing scenario
- Required mint for the reclaim scenario
- An additional callback for tweaking the transaction as desired

=== Reclaim
Similar to the request endpoint, only the advanced datum requires considerable
configuration:
- An output datum maker function, which provides the users with inputs assets
  and all the fields stored in the advanced datum
- A set of configurations for handling a required mint for reclaim
- An additional callback for tweaking the transaction as desired

=== Route
Unlike other endpoints, the interface here offers both simple and advanced cases
with various configurations:
- Both require datum maker functions, the only difference between the two is the
  input datum provided (simple for one, advanced for the other)
- The advanced case expects the required mint configurations for routing
- Both take an additional callback for tweaking the transaction as desired

== CLI Agent
Given a `Config` value (a datatype defined in the package), users can generate a
CLI application with three endpoints:

=== `monitor`
The primary endpoint for router agents, polling an instance's address
periodically to route upcoming requests and accruing the fees. With a
`--reclaim` flag the endpoint aims to invoke the advanced reclaim logic of the
instance.

=== `submit-simple`
This endpoint will only require the Lovelace count to be provided, along with
any additional assets to be locked at the instance.

=== `submit-advanced`
In addition to the Lovelace and assets arguments, this endpoint takes additional
values to correspond directly to the off-chain SDK's advanced request endpoint.


#pagebreak()

#v(20pt)
= Detailed list of KPIs and references
#v(60pt)
#box(height: 360pt,
  stroke: none,
  columns(2, gutter: 21pt)[
    == Challenge KPIs
    === Performance Optimization
    - Optimized #link("https://github.com/Anastasia-Labs/design-patterns/blob/main/enum-redeemers/ENUM-REDEEMERS.md")[mapping functions] to reduce complexity and cost of smart contracts
    - Managed #link("https://github.com/Anastasia-Labs/design-patterns/blob/main/merkelized-validators/merkelized-validators.md")[script size and execution budgets] to reduce transaction fees
    - #link("https://github.com/Anastasia-Labs/design-patterns/blob/main/stake-validator/STAKE-VALIDATOR.md")[Reduced ExUnits cost] compared to traditional checks
    === Security Enhancement
    - Measures against known exploits like #link("https://github.com/Anastasia-Labs/design-patterns/blob/main/stake-validator/STAKE-VALIDATOR.md")[double satisfaction]
    - Comprehensive validation by incorporating #link("https://github.com/Anastasia-Labs/design-patterns/blob/main/utxo-indexers/UTXO-INDEXERS.md")[UTxO indices] within the redeemer
    === Consistency 
    - Predictable #link("https://github.com/Anastasia-Labs/design-patterns/blob/main/strict-and-checks/STRICT-AND-CHECKS.md")[compilation outcomes]
    - Provided a normalized representation of #link("https://github.com/Anastasia-Labs/design-patterns/blob/main/validity-range-normalization/VALIDITY-RANGE-NORMALIZATION.md")[validity ranges]
== Project KPIs
=== Library Completeness 
- Inclusion of key #link("https://github.com/Anastasia-Labs/design-patterns/tree/main/enum-redeemers")[design patterns] for #link("https://github.com/Anastasia-Labs/plutarch-design-patterns/tree/main")[Plutarch] and #link("https://github.com/Anastasia-Labs/aiken-design-patterns/tree/main")[Aiken]
=== Documentation Quality
- High-quality, detailed documentation for each smart contract library with detailed flow charts/images displaying solution architectures
=== Engagement
- Active participation in social networks, GitHub, and community events
  ]
)

#pagebreak()

#v(20pt)
= Key achievements <key-achievements>
#v(60pt)
=== Development of Comprehensive Libraries
User-friendly libraries for Plutarch and Aiken, simplifying complex design patterns without sacrificing readability and circumventing repetitive boilerplate. 

A comprehensive testing suite has been developed utilizing unit and property based tests. More on it can be observed on our extensive #link("https://drive.google.com/file/d/1Oju4cMF7jrIjh5VbIueTyp45T45g1159/view?usp=sharing")[*Milestone-4 report*]

Exemplary use of these libraries are found for 8 different design pattern scenarios: \
\
- #link("https://github.com/Anastasia-Labs/aiken-design-patterns/tree/main/validators")[*For Aiken*] \
- #link("https://github.com/Anastasia-Labs/plutarch-design-patterns/blob/main/src/Plutarch/MerkelizedValidator.hs")[*For Plutarch*]

#v(20pt)
=== Engagement
This year presentations on our implemented design patterns was given in Buidlfest, a community event specifically scheduled for 100 developers on Cardano. Communication with the developer community is really important to us, as we create tools specifically to make development on Cardano easier day by day.

Examples of the #link("https://docs.google.com/document/d/1DV6hN0lrFCPdHLbMYQHwmUUv_VsRQYvKjSe-U7k1x9s/edit?usp=sharing")[feedback we received during our presentations/on-stage] (Toulouse, Buidlfest) 

#pagebreak()
#v(20pt)
= Measurable Result Examples
#v(30pt)
*Transaction-Level Validation Efficiency*

Utilizing the "Withdraw" redeemer in staking scripts to run global logic once, rather than for each input. A really significant efficiency improvement over current design patterns can be observed, depending on the number of script inputs in the transaction.

*Script Size Reduction*

Implementation of techniques like Merkelized Validators to address script size limitations. Potential for "near-infinite" script size while maintaining efficiency, enabling more complex on-chain logic.

*Transaction Cost Reduction*

Implementation of the UTxO Indexer Design Pattern for efficient sorting and pairing of inputs and outputs. A performance boost for transactions with multiple inputs and outputs. Or the introduction of Stict && Checks for more predictable compilation outcomes and optimized transaction costs

#v(10pt)
= Key learnings <key-learnings>
#v(15pt)
=== User Feedback
Incorporated feedback from developers/users to improve the libraries
=== Process Improvements
Development process has been improved based on insights gained during the project development 
=== Best Practices
Documenting best practices for smart contract development and future maintainability and the importance of clear documentation and examples in promoting adoption of advanced design patterns


#pagebreak()

#v(20pt)
= Next steps <next-steps>
#v(10pt)
=== Feature Enhancements
We will maintain and further optimize our existing libraries created for the developers. 

Additional design pattern libraries that streamline the implementation process for other existing smart contract languages might come to life as the needs of our developer community requires it. (Such as #link("https://github.com/Anastasia-Labs/scalus-design-patterns")[Scalus], Helios, Plu-ts ...)

=== Expansion
Targeting a wider developer audience through increased outreach. We are utilizing our design patterns in other tools we develop on Cardano too. 

For example, for Lucid Evolution we want to display design patterns in our tutorial series via the evolution library. We strive to create value by making our tools complimentary to each other

#v(10pt)
= Final thoughts 
#v(10pt)
The project successfully addresses its purpose by creating a freely accessible library of design patterns for Cardano developers. Initiatives alike help best practices and already solved puzzles of development on Cardano spread and create ecosystem-wide returns. 

We would like to believe our long-lasting open-source efforts have simplified design decisions and improved developer accessibility.
#v(15pt)
= Resources
#v(10pt)
#box(height: 50pt,
  columns(3, gutter: 1pt)[
    == Project 
    - #link("https://github.com/Anastasia-Labs/design-patterns")[GitHub Repository] \
    - #link("https://projectcatalyst.io/funds/10/f10-development-and-infrastructure/anastasia-labs-streamlining-development-a-user-friendly-smart-contract-library-for-plutarch-and-aiken-design-patterns-and-efficiency")[Catalyst Proposal]
    === Aiken
    - #link("https://github.com/Anastasia-Labs/aiken-design-patterns")[Aiken - Design Patterns] \
    - #link("https://github.com/Anastasia-Labs/aiken-design-patterns/blob/main/assets/images/test_report.png")[Test Results] / #link("https://github.com/Anastasia-Labs/aiken-design-patterns/blob/main/assets/images/aiken-design-patterns.gif")[GIF]

    === Plutarch
    - #link("https://github.com/Anastasia-Labs/plutarch-design-patterns")[Plutarch - Design Patterns] \
    - #link("https://github.com/Anastasia-Labs/plutarch-design-patterns/blob/main/assets/images/test_report.png")[Test Results] / #link("https://github.com/Anastasia-Labs/plutarch-design-patterns/blob/main/assets/images/plutarch-design-patterns.gif")[GIF]
  ]
)

#v(15pt)
#align(center)[== Close-out Video <link-other>
- #link("https://youtu.be/k6ovQpRyUOM")[Youtube]]

