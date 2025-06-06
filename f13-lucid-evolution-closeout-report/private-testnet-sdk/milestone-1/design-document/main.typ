#import "@preview/cetz:0.2.2"

#let image-background = image("../../../images/background-1.jpg", height: 100%, fit: "cover")
#let image-foreground = image("../../../images/Logo-Anastasia-Labs-V-Color02.png", width: 100%, fit: "contain")
#let image-header = image("../../../images/Logo-Anastasia-Labs-V-Color01.png", height: 75%, fit: "contain")
#let luid-evolution-link = link("https://anastasia-labs.github.io/lucid-evolution")[Lucid Evolution Website]
#let lucid-evolution-git-link = link("https://github.com/Anastasia-Labs/lucid-evolution")[Main Github Repo]
#let project_link = link("https://projectcatalyst.io/funds/13/cardano-open-developers/lucid-evolution-20-private-testnet-sdk-and-l2-provider-integration")[Catalyst Proposal]
#let milestone_link = link("https://milestones.projectcatalyst.io/projects/1300128/milestones/1")[Milestone 1]


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
#align(center)[#strong[Lucid Evolution 2.0]]
#align(center)[Proof of Achievement - #milestone_link]

#v(5cm)

// Set text style for project details
#set text(13pt, fill: white)

#table(
  columns: 2,
  stroke: none,
  [*Project Id*], [1300128],
  [*Project Manager*], [Jonathan Rodriguez],
  [*Proposal Link*], [#project_link],
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
      *Lucid Evolution 2.0*
      #v(-3mm)
      Private Testnet SDK & L2 Provider Integration - Milestone 1
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
  #strong[Private Testnet SDK & L2 Provider Integration]

  #strong[Design Specification Document]]
#v(50pt)
#set heading(numbering: "1.")
// #show heading: set text(rgb("#c41112"))

= Executive Summary
\
Lucid Evolution 2.0 Private Testnet SDK is a TypeScript package designed to provide developers with a reliable and efficient testing environment for Cardano smart contracts. It addresses the current challenges faced by developers in simulating Cardano blockchain behavior, such as incomplete emulators, shell scripts and manual docker commands, providing developers with programmable control over real Cardano nodes. 

*A key benefit:* is that using Dockerode and Testcontainers enables developers to spin up on-demand, disposable prvate testnets in under 30 seconds, eliminating external dependencies and enabling seamless testing framework integration.

*Core Achievement:* The SDK fundamentally transforms the developer experience by shifting infrastructure control into the codebase, freeing developers to focus on application logic rather than environment orchestration.



#pagebreak()
#v(50pt)
= Introduction & Objectives
\
== Project Context
\
Cardano DApp and smart contract developers lack reliable, reproducible test environments that mirror mainnet behavior. Current TypeScript transaction builders depend on external emulators or ad-hoc Docker scripts, leading to inconsistent results, fragile CI pipelines, and increased development overhead.

\
== Project Objectives
\
+ *Direct Control:* Expose a TypeScript API (Effect-TS) to manage the full lifecycle of Cardano node containers—create, start, stop, remove, status—without leaving the JavaScript/TypeScript ecosystem.

+ *Real-Node Integration:* Run actual Cardano nodes (Byron → Conway) inside Docker containers to guarantee protocol-accurate behavior.

+ *Developer Experience:* Provide zero-configuration sensible defaults while allowing deep customization (genesis parameters, network magic, ports).

+ *Production Parity:* Ensure the SDK replicates mainnet consensus, mempool, transaction validation, and L2 state channels (Hydra).

+ *Modularity & Extensibility:* Design a clear separation between DevNet management, Lucid provider integration, and L2 modules—enabling future expansion.

+ *Security & Resilience:* Implement secure key handling, ephemeral directories, resource isolation, and robust error handling (Tagged Errors).

+ *Seamless Test Framework Integration:* Offer utilities (custom Jest/Vitest matchers, test network manager, mock data) to simplify writing and running automated tests.

#pagebreak()
#v(50pt)

=  Problem Statement
\
== Current Challenges
\
Developers face four primary challenges when building and testing Cardano applications:

External Dependencies: Relying on bash/CLI scripts and raw Docker commands breaks TypeScript-first workflows and complicates CI/CD.

Inconsistent Emulation: Incomplete emulators (e.g., mock ledger states) fail to emulate real block production, consensus rules, or L2 dynamics—leading to false positives/negatives.

Complex Setup: Manual configuration of private testnets, genesis files, and key material demands deep infrastructure knowledge, wasting developer time.

Integration Gaps: No native TypeScript API to spin up, configure, or query a real Cardano node within unit/integration tests.

Without a reliable, repeatable, and programmable test environment, developer productivity, test coverage, and smart contract security suffer.

\
== Proposed Solution
\
Comprehensive TypeScript package enabling private testnets with real Cardano nodes, controllable through Effect-TS APIs, with integrated L2 provider capabilities including Hydra support.

#pagebreak()
#v(50pt)

= Solution Overview
\
== Project Architecture
\

- DevNet Manager: Orchestrates container lifecycle, configuration generation (genesis files, keys), and resource isolation.

- Provider Module: Implements Lucid’s Provider interface backed by DevNet containers, exposing methods for submitting transactions, querying UTxOs, retrieving datums, etc.

- L2 Integration: Extends the Provider to manage Hydra heads, off-chain transactions, and on-chain settlement.

- Effect-TS Core: Functional programming primitives for concurrency, error handling (Tagged Errors), logging, and resource cleanup.

- Dockerode/Testcontainers: Library layers for programmatically interacting with Docker via Node.js.

- Docker Runtime: Runs real Cardano node(s) (any era) and Hydra node(s), each in isolated containers.

\

#pagebreak()

= Detailed Component Specifications
\
== DevNet Container Management

=== Core Types & Errors

```ts

export class CardanoDevNetError extends Data.TaggedError("CardanoDevNetError")<{
  reason: 
    | "container_not_found"
    | "container_creation_failed"
    | "container_start_failed"
    | "container_stop_failed"
    | "container_removal_failed"
    | "container_inspection_failed"
    | "temp_directory_creation_failed"
    | "config_file_write_failed"
    | "file_permissions_failed";
  message: string;
  cause?: unknown;
}> {}

export interface DevNetContainer {
  readonly id: string;
  readonly name: string;
  readonly socketPath: string; // e.g. /opt/cardano/ipc/node.socket
}

```
\
Manages Docker container lifecycle and configuration.

*CardanoDevNetError:* Tagged error types for container operations. Gives precise failure context (e.g. `container_inspection_failed`) with actionable messages and underlying causes.

*DevNetContainer:* Container identifier interface. Holds Docker container ID, name, and socket path for RPC.

#pagebreak()
\
=== DevNetConfig Schema
\
```ts

interface DevNetConfig {
  readonly containerName?: string;
  readonly image?: string; // Docker image (e.g., "ghcr.io/cardano-node:10.4.1")
  readonly ports?: { readonly node: number; readonly submit: number };
  readonly networkMagic?: number;
  readonly nodeConfig?: Partial<NodeConfig>;
  readonly byronGenesis?: Partial<ByronGenesis>;
  readonly shelleyGenesis?: Partial<ShelleyGenesis>;
  readonly alonzoGenesis?: Partial<AlonzoGenesis>;
  readonly conwayGenesis?: Partial<ConwayGenesis>;
  readonly kesKey?: Partial<KesKey>;
  readonly opCert?: Partial<OpCert>;
  readonly vrfSkey?: Partial<VrfSkey>;
}

```

\
- All fields have sensible defaults (DEFAULT_DEVNET_CONFIG) to enable zero-config setups.

- Each genesis interface (Byron, Shelley, Alonzo, Conway) is a partial of a comprehensive era-specific type with 40+ parameters (epoch lengths, protocol params, initial funds, delegation, etc.).

- Cryptographic key types (KES, VRF, OCERT) include default ephemeral key pairs; permissions (0o600) are enforced.

#pagebreak()
\
=== Container Lifecycle APIs
\
```ts

export const make: (
  config?: DevNetConfig
) => Effect<DevNetContainer, CardanoDevNetError>

export const startContainer: (
  container: DevNetContainer
) => Effect<void, CardanoDevNetError>

export const stopContainer: (
  container: DevNetContainer
) => Effect<void, CardanoDevNetError>

export const removeContainer: (
  container: DevNetContainer
) => Effect<void, CardanoDevNetError>

export const getContainerStatus: (
  container: DevNetContainer
) => Effect<Docker.ContainerInspectInfo, CardanoDevNetError>

```
\
- *make(config?):*

  + Constructs a `Required<DevNetConfig>` by merging defaults with overrides.

  + Calls `findContainer` by name; if exists, inspects & stops/removes.

  + Invokes `createDockerContainer`:

    - Creates a secure temporary directory (`fs.promises.mkdtemp`) for config + keys.

    - Writes `config.json`, `topology.json`, all `genesis-*.json`, `kes.skey`, `pool.cert`, `vrf.skey` with proper permissions (0o600).

    - Generates a Docker container spec with `Image`, `Env`, `HostConfig` (port bindings, volume mounts), and `Cmd` to run `cardano-node run --config /opt/cardano/config/config.json ....`

  + Returns DevNetContainer (id, name, socketPath).
  
- *startContainer / stopContainer / removeContainer:* 
  
  Use `docker.getContainer(container.id).start()/stop()/remove()`, each wrapped in Effect.tryPromise with CardanoDevNetError on failure.

- *getContainerStatus:* Inspects container via Docker API, returning `ContainerInspectInfo` for status fields (`State.Status`, `State.Running`, resource usage).

=== Multi-Instance Support & Resource Isolation

- *Isolation:* Unique container names (e.g., devnet-<uuid>), distinct port ranges (node: 4001+, submit: 8090+), separate temp dirs.

- *Resource Limits:* Default Docker HostConfig can include CpuShares: 1024, Memory: 2GB (configurable in DevNetConfig).

- *Health Checks:* Optional polling loop to wait for node readiness (e.g., check socket presence before returning from startContainer).