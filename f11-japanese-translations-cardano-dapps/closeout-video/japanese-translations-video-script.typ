#let image-background = image("../../images/Background-Carbon-Anastasia-Labs-01.jpg", height: 100%, fit: "cover")
#let image-foreground = image("../../images/Logo-Anastasia-Labs-V-Color02.png", width: 100%, fit: "contain")
#let image-header = image("../../images/Logo-Anastasia-Labs-V-Color01.png", height: 75%, fit: "contain")
#let fund-link = link("https://projectcatalyst.io/funds/11/cardano-open-ecosystem/high-quality-japanese-translations-for-popular-cardano-dapps")[Catalyst Proposal]
#let git-link = link("https://github.com/Anastasia-Labs/high-quality-japanese-translation/tree/main")[Main Github Repo]



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
#align(center)[#strong[High Quality Japanese Translations for Popular Cardano DApps]]
#set text(18pt, fill: white)

// Center-align the report title
#align(center)[#strong[Project Closout Video Script]]

#v(5cm)

// Set text style for project details
#set text(13pt, fill: white)

// Display project details
#table(
  columns: 2,
  stroke: none,
  [*Project Number*], [1100156 ],
  [*Project manager*], [Jonathan Rodriguez],
  [*Date Started*], [September 2, 2024],
  [*Date Completed*], [December 30, 2024],
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
      *Anastasia Labs – High Quality Japanese Translations for Popular Cardano DApps*
      #v(-3mm)
      Project Closeout Report Script
      #v(-3mm)
      // Copyright © 
      // #set text(fill: black)
      // Anastasia Labs
    ]
    #v(-6mm)
    #align(right)[
      #counter(page).display(  // Page numbering
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
  #strong["High Quality Japanese Translations for Popular Cardano DApps"]]

\
#text(size: 18pt)[*Slide 1*]
= Introduction
\ 

Hello, Cardano community! I'm Mladen Lamesevic from Anastasia Labs. 

Today, I am pleased to present the closeout report for our Catalyst Fund 11 project titled:
High Quality Japanese Translations for Popular Cardano DApps

#text(size: 18pt)[*Slide 2*]
= Project Objective and Challenges

In this presentation, I'll cover why we embarked on this project, how we executed it, and the outcomes we achieved. 

Japan has the biggest Cardano community in the world in terms of membership and in terms of ADA holdings and so many of them are very active.However, one of the issues that they are facing is that they have a huge language barrier.Many of the community members don't speak English, don't read English. That means there is isolation between Japan and Japanese community and the rest of the world.

Our project is a coproposal with Yuta , a community meember from Japan and is aimed to reduce this barrier for Japanese ADA holders by providing translations to some of the popular Cardano DApps and thus reduces the risks associated with misinterpretations in DeFi transactions.

\

#text(size: 18pt)[*Slide 3*]
= List of Cardano DApps Translated
\

The project successfully achieved professional, high-quality Japanese translations for the front-end interfaces of prominent Cardano DApps, specifically targeting DJED, Liqwid Finance, Lace Wallet, SundaeSwap, Minswap, OptimFi and Encoins. The Translations for each respective projects are available to public on our AnastasiaLabs Github repository. The projects can now integrate them on their websites.
\

#text(size: 18pt)[*Slide 4*]
= Availability of Translations
\ 
Click on each link to show where each project's translation is available.

\
#text(size: 18pt)[*Slide 5*]

\
= Community Impact 

By enhancing accessibility for Japanese users, a key market, the project is expected to drive increased adoption and usage of Cardano DApps, contributing to long-term growth in transaction volumes and network value. Accurate translations also help mitigate risks associated with misinterpretation in DeFi transactions, potentially saving significant costs related to dispute resolution and user support. Additionally, investing in inclusivity and improving user experience strengthens Cardano's reputation as a globally accessible and user-centric platform, which can attract further investment and expand its user base. The approach and resources developed for Japanese translations also offer a scalable model that can be adapted for other languages in the future, broadening global accessibility and engagement.

\

#text(size: 18pt)[*Slide 6*]
= Conclusion
\
 In Conclusion, By directly addressing a community need, our project builds a sense of belonging and loyalty among users, which is invaluable for community-driven ecosystems like Cardano.
 We believe our work will inspire further innovation and drive adoption within the Cardano ecosystem.Thank you for your support and interest in our work. 
\
#text(size: 18pt)[*Slide 7*]
= Thank You
\ 
For more information, visit our GitHub repository at:

https://github.com/Anastasia-Labs/high-quality-japanese-translation

If you want to know more about Anastasia Labs or contact us, you can visit 

- Our website at https://anastasialabs.com/
- Follow us on twitter at https://x.com/AnastasiaLabs
- Join our discord community: https://discord.com/invite/8TYSgwthVy

See you Next time!
Thank you and Goodbye!
\








