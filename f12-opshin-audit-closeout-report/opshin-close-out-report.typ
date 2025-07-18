// Set the background image for the page
#let image-background = image("../images/Background-Carbon-Anastasia-Labs-01.jpg", height: 100%)
#set page(
  background: image-background,
  paper: "a4",
  margin: (left: 20mm, right: 20mm, top: 40mm, bottom: 30mm),
)

// Set default text style
#set text(15pt, font: "Barlow")

#v(3cm) // Add vertical space

// Center-align the logo
#align(
  center,
)[#box(width: 75%, image("../images/Logo-Anastasia-Labs-V-Color02.png"))]

#v(1cm)

// Set text style for the report title
#set text(20pt, fill: white)

// Center-align the report title
#align(center)[#strong[PROJECT CLOSE-OUT REPORT]]

#v(5cm)

// Set text style for project details
#set text(13pt, fill: white)

// Display project details
#table(
  columns: 2,
  stroke: none,
  [*Project number*],
  [1200175],
  [*Project manager*],
  [Philip Disarro],
  [*Date started*],
  [21-Oct-2024],
  [*Date completed*],
  [05-May-2025],
)

// Reset text style to default
#set text(fill: luma(0%))

// Configure the initial page layout
#set page(
  background: none,
  header: [
    // Place logo in the header
    #place(
      right,
      dy: 12pt,
    )[#box(image(height: 75%, "../images/Logo-Anastasia-Labs-V-Color01.png"))]
    #line(length: 100%) // Add a line under the header
  ],
  header-ascent: 5%,
  footer: [
    #set text(11pt)
    #line(length: 100%) // Add a line above the footer
    #align(center)[*Anastasia Labs* \ Project Close-out Report]
  ],
  footer-descent: 20%,
)

// This command can be turned on to justify the text #set par(justify: true)

#show link: underline
#show outline.entry.where(level: 1): it => {
  v(12pt, weak: true)
  strong(it)
}

// Initialize page counter
#counter(page).update(0)

#set page(footer: [
  #set text(11pt)
  #line(length: 100%) // Add a line above the footer
  #align(center)[*Anastasia Labs* \ Project Close-out Report]
  #place(right, dy: -7pt)[#counter(page).display("1/1", both: true)]
])
#v(100pt)

// Configure the outline depth and indentation
#outline(depth: 2, indent: 1em)

// Page break
#pagebreak()
#set terms(separator: [: ], hanging-indent: 40pt)
#v(20pt)
/ Project Name: Opshin Audit
/ URL: #link(
    "link",
  )[https://projectcatalyst.io/funds/12/cardano-open-developers/opshin-audit]

#v(10pt)
= List of KPIs
#v(10pt)
== Challenge KPIs
#v(10pt)
- *Improve smart contract security:* By conducting an in-depth audit of the OpShin
  language, the project directly addresses security risks associated with smart
  contract development. The expected outcome is a measurable reduction in critical
  and high-severity vulnerabilities, making DApps built with OpShin safer for
  users.

- *Enhance developer knowledge and best practices:* The project provides clear,
  actionable best practices and development guidelines for using OpShin
  effectively. This helps elevate the quality of code across the ecosystem and
  supports developer onboarding.

- *Drive ecosystem trust and maturity:* The public audit and transparent
  communication of findings will reinforce OpShin’s position as a secure and
  trustworthy platform for smart contract development. By identifying edge cases
  and potential problems early in OpShin, the audit enables developers to avoid
  time-consuming debugging and security rework.
#pagebreak()
#v(20pt)
== Project KPIs
#v(40pt)
- *Reduction in critical vulnerabilities:* As part of our comprehensive audit of
  the OpShin language, we identified 9 critical and 16 major vulnerabilities
  within the codebase. These findings highlight previously unaddressed security
  risks that could impact smart contract reliability and user safety. By surfacing
  these issues early and providing detailed recommendations, the audit strengthens
  the foundation for secure smart contract development using OpShin. This outcome
  not only enhances developer confidence in using OpShin but also helps reduce the
  risk of exploit-prone contracts being deployed on mainnet.

- *Audit delivered with categorized findings:* The audit report provides a
  detailed breakdown of each identified issue, categorized by Security,
  Performance, Maintainability, and Usability, and classified by severity as
  Critical, Major, Medium, Minor or Informational. Each finding includes an assessment of
  its potential risk or exploitability, along with a clear explanation of its
  impact on smart contract behavior and user assets. Wherever applicable, the
  report outlines steps to reproduce the issue, along with practical
  recommendations and mitigation strategies for each finding.

- *Publicly released outputs:* As part of OpShin's commitment to
  transparency and community impact, several key deliverables have been made
  publicly accessible. These include a #link("https://github.com/Anastasia-Labs/opshin-audit/blob/milestone4-progress/catalyst_docs/milestone4/milestone4-draft-audit-report.pdf")[comprehensive audit report], #link("https://github.com/Anastasia-Labs/opshin-audit/blob/main/catalyst_docs/milestone3/milestone3-audit-tracker.pdf")[edge
  case documentation], and the public dissemination of the finalized report across
  multiple platforms. All outputs are clearly written and freely available to the
  community. These contributions not only demonstrate the value delivered through
  the audit but also support ecosystem-wide learning, adoption, and long-term
  growth.
#pagebreak()

#v(40pt)

// Section for Key achievements
= Key achievements <key-achievements>
#v(40pt)

- *Comprehensive audit report completed:* Delivered a full audit report of the
  OpShin codebase, except Pluthon, including a quantitative breakdown of vulnerabilities across
  Critical, Major, Medium, Minor and Informational severities.

- *Edge cases identified and documented:* Successfully uncovered and described
  multiple unique edge cases relevant to smart contract development, enhancing
  code resilience and safety.

- *High code coverage achieved:* Measured and reported the percentage of OpShin
  code covered by unit tests, strengthening test reliability and identifying gaps.

- *Detailed and actionable recommendations:* Provided clear, prioritized
  recommendations for improvements, addressing both immediate security concerns
  and long-term maintainability.

- *Collaboration and validation by the OpShin team:* Collected structured feedback
  from the OpShin team and confirmed that all critical and high-severity
  issues were addressed via commits, pull requests, or updated documentation.

#pagebreak()

#v(10pt)
// Section for Key learnings
= Key learnings <key-learnings>
#v(40pt)
- *Value of early edge case identification:* Many vulnerabilities stemmed from
  uncommon or edge-case logic paths, reinforcing the importance of proactive edge
  case analysis in language-level audits.

- *Manual review remains crucial:* While automated tools and unit tests offered
  initial coverage, several high-impact issues were only discovered through deep
  manual inspection, especially in performance and maintainability areas.

- *Collaboration drives quality:* Direct engagement with the OpShin team
  significantly improved issue resolution and knowledge transfer. Iterative
  feedback ensured alignment on severity, prioritization, and practical fixes.

- *Documentation is a force multiplier:* The creation of a public-facing audit
  report, updated OpShin book, and edge case documentation not only delivered
  immediate value but also contributed to ecosystem trust and onboarding for
  future developers.

- *Security and developer experience go hand-in-hand:* Improving language
  reliability also improves developer confidence and productivity. A secure,
  well-documented language reduces debugging and accelerates safe contract
  development.

#v(10pt)
#pagebreak()

#v(50pt)

// Section for Next steps
= Next steps <next-steps>
#v(10pt)
- To be filled by OpShin team

= Final thoughts
#v(10pt)
This audit has been a valuable step toward strengthening the security,
reliability, and developer experience of the OpShin language. By uncovering
vulnerabilities, documenting critical edge cases, and providing actionable
recommendations, we’ve laid a strong foundation for safer smart contract
development within the Cardano ecosystem. The collaborative engagement with the
OpShin team throughout the process ensured that findings were not only
identified but also meaningfully addressed. As the language continues to evolve,
we hope this work serves as both a reference and a catalyst for continued
improvements, open collaboration, and greater adoption across the community.

#v(30pt)

// Section for Resources
= Resources
#v(10pt)

#box(
  height: 100pt,
  columns(
    1,
    gutter: 25pt,
  )[
    == Project
    #link("https://github.com/OpShin/opshin")[Main Github Repo] \
    #link(
      "https://projectcatalyst.io/funds/12/cardano-open-developers/opshin-audit",
    )[Catalyst Proposal]

  ],
)

#v(5pt)

// Center-align close-out video link
#align(
  center,
)[== Close-out Video <link-other> #link("link11_placeholder")[Link Placeholder]]
