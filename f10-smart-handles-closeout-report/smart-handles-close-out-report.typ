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
Handles) for interaction with DApps without going through their official
frontends, and only with use of a wallet.

/ URL: #link("https://projectcatalyst.io/funds/10/f10-osde-open-source-dev-ecosystem/anastasia-labs-smart-beacons-router-nfts")[Project Catalyst Proposal]

#pagebreak()
#v(20pt)

= Introduction

Considering how most DApps provide services through a single frontend, one can
argue this centralized aspect can go against the ethos of the blockchain
industry.  While many of these user interfaces are open source, the
inconvenience of going through having a local build makes it hard for excluded
audience to use such DApps.

We offer an abstract smart contract, which developers can leverage to implement
specific instances for dedicated tasks (such as swapping ADA to MIN via
Minswap), lock an ADA Handle in the generated address, and allow wallet owners
to simply send funds to the contract and benefit the underlying DApp.

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
- As some DApp instances could benefit from other values provided in a
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
    === Simplicity
    - #link("https://github.com/Anastasia-Labs/smart-handles/blob/164144475227882773582ae15197aa62444ec615/src/SingleValidator.hs#L35")[Simple datum] for easier adoption by wallets
    === Flexibility
    - #link("https://github.com/Anastasia-Labs/smart-handles/blob/164144475227882773582ae15197aa62444ec615/src/SingleValidator.hs#L57-L69")[Advanced datum] for more elaborate instances
    === Tooling
    - #link("https://github.com/Anastasia-Labs/smart-handles-offchain")[Off-chain SDK] with consistent interface between endpoints
    - #link("https://github.com/Anastasia-Labs/smart-handles-agent")[CLI generator package] for convenient product development
== Project KPIs
=== All-Round Solution
- From on-chain wrapper contract to a CLI application that end-users can enjoy
=== Correctness via Tests
- Implemented off-chain tests using an emulator
=== Fully Documented for Easier Adoption
- Complete example of utilizing this solution
  ]
)

#pagebreak()

#v(20pt)
= Key achievements <key-achievements>
#v(60pt)
== Development of a Wrapper Contract
A customizable contract that relieves adopters from certain validations and
attack vectors such as agent reimbursement and double satisfaction.

== Development of a Complete Off-Chain Suite
Accompanied by an off-chain SDK and CLI application generator, instance
developers can easily achieve sample transactions, and consequently shipping a
working product.

== Provision of a Sample Reference for Instance Developers
The example provided within the off-chain SDK package provides an all-round
use-case for the contract and the accompanied off-chain interfaces:
- #link("https://github.com/Anastasia-Labs/smart-handles-offchain/tree/988347747e1d3bbb80244781916620db8f2b8d8a/example")[*Minswap V1 & V2 Examples*]

#pagebreak()
#v(20pt)
= Key learnings <key-learnings>
#v(15pt)
=== Ups and Downs of Adding Features to Frameworks
Ensuring flexibility in such a product proved to be a rewarding challenge,
as support for each new feature propagated throughout the whole suite.
=== Importance of Emulated Tests
Without sample transactions carried out within an emulator environment, dealing
with testnets would be much more time consuming.
=== Importance of Testnet Transactions
As much as emulated tests provide convenience, they won't replace real
transactions submitted on chain, approvable by anyone.


#pagebreak()

#v(20pt)
= Next steps <next-steps>
#v(10pt)
=== Support for Datum-less UTxOs
With activation of CIP-67, we can now avoid the required configuration by the
wallets, and support direct deposits without any maintenance. This'll offer the
true vision of this product where users can interact with developed instances
from any wallet and/or off-chain frameworks.

#v(15pt)
= Resources
#v(10pt)
#box(height: 50pt,
  columns(3, gutter: 1pt)[
    == On-Chain Contract 
    - #link("https://github.com/Anastasia-Labs/smart-handles")[GitHub Repository]
    == Off-Chain SDK
    - #link("https://github.com/Anastasia-Labs/smart-handles-offchain")[GitHub Repository]
    == CLI Agent
    - #link("https://github.com/Anastasia-Labs/smart-handles-agent")[GitHub Repository]
  ]
)
