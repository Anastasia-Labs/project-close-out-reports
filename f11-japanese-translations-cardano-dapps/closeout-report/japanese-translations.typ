
#let image-background = image("../../images/Background-Carbon-Anastasia-Labs-01.jpg", height: 100%)
#set page(background: image-background,
          paper :"a4",
          margin: (left : 20mm,right : 20mm,top : 40mm,bottom : 30mm)
          )
#set text(15pt, font: "Barlow")

#v(3cm) 

#align(center)[#box(width: 75%, image("../../images/Logo-Anastasia-Labs-V-Color02.png"))]

#v(1cm)

#set text(20pt, fill: white)

#align(center)[#strong[PROJECT CLOSE-OUT REPORT]]

#v(5cm)

#set text(13pt, fill: white)

#table(
  columns: 2,
  stroke: none,
  [*Project Number*], [: 1100156],
  [*Project manager*], [: Jonathan Rodriguez],
  [*Project Start Date*], [: Sep 2,2024 ],
  [*Project Completion Date*], [: Dec 30,2024],
)

#set text(fill: luma(0%))

#set page(
  background: none,
  header: [
    #place(right, dy: 12pt)[#box(image(height: 75%,"../../images/Logo-Anastasia-Labs-V-Color01.png"))]
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

/ Project Name : High Quality Japanese Translations for Popular Cardano DApps
#v(10pt)
/ URL : #link("https://projectcatalyst.io/funds/11/cardano-open-ecosystem/high-quality-japanese-translations-for-popular-cardano-dapps")

#v(5pt)
= Introduction
#v(5pt)
Japan has the biggest Cardano community in the world in terms of membership and in terms of ADA holdings and so many of them are very active.However, one of the issues that they are facing is that they have a huge language barrier.Many of the community members don't speak English, don't read English. That means there is isolation between Japan and Japanese community and the rest of the world.

Our project is a coproposal with Yuta , a community member from Japan and is aimed to reduce this barrier for Japanese ADA holders by providing translations to some of the popular Cardano DApps and thus reduces the risks associated with misinterpretations in DeFi transactions.

= List of KPIs  
== Challenge KPIs 
#v(5pt)

- *Increased Engagement: * Aimed at eliminating the language barrier to Japanese ADA holders, the project achieved its goal by translating front-end interfaces of seven major Cardano DApps. These translations are available for projects to use and implement on their website. This will lead to a rise in user participation, resulting in higher transaction volumes across various platforms within the Cardano ecosystem.

- *Improved User Experience:* The challenge was to offer high-quality translations to create a better and easier experience for Japanese users. This will help build trust and satisfaction, as users will feel more comfortable using the platform in their native language.

- *Increased DApp Liquidity:*  Japan holds a large amount of ADA, much of which remains unused. Many holders avoid DeFi protocols because of the language barrier. By addressing this, the project can unlock this capital, bringing more liquidity to decentralized applications and strengthening the Cardano ecosystem.

#pagebreak()
#v(10pt)
== Project KPIs 
#v(15pt)

- *Number of DApps Translated:* Successfully translated the front-end websites of the following Cardano DApps into Japanese.


  - #link("https://djed.xyz/")[DJED]
  - #link("https://www.lace.io/")[Liqwid Finance]
  - #link("https://liqwid.finance/")[Lace Wallet]
  - #link("https://sundae.fi/")[SundaeSwap]
  - #link("https://minswap.org/")[MinSwap]
  - #link("https://www.optim.finance/")[OptimFi]
  - #link("https://encoins.io/")[Encoins]


- *Integration by Projects:* The translations are now publicly available for the respective projects in the #link("https://github.com/Anastasia-Labs/high-quality-japanese-translation")[Anastasia Labs repository], allowing projects to integrate the translations into their websites.


#pagebreak()
#v(40pt)

= Key achievements 
#v(10pt)

-  The project successfully achieved professional, high-quality Japanese translations for the front-end interfaces of prominent Cardano DApps, specifically targeting the following

  - DJED
  - Liqwid Finance
  - Lace Wallet
  - SundaeSwap
  - Minswap
  - OptimFi
  - Encoins

-  Successful translations of respective projects translated to Japanese and are available for projects to use and implement on their websites.

#v(10pt)

= Key learnings 
#v(20pt)

A key learning from this experience is the importance of flexibility and adaptability in project management. While the initial approach was to have teams integrate the translations, we learned that sometimes timelines and priorities shift. By adapting our strategy and submitting a change request to focus solely on translating and publishing the content, we were able to achieve the desired outcome without compromising the overall project. This approach allowed us to maintain progress and ensure the value of the translations was still delivered, even if it meant adjusting the scope.

#v(10pt)
#pagebreak()
#v(10pt)
= Final thoughts 
#v(20pt)

The project enhances accessibility for Japanese users, driving long-term growth in adoption and transaction volumes within the Cardano ecosystem. By providing accurate translations, it reduces risks associated with misinterpretations in DeFi transactions, saving costs related to disputes and user support. This investment in inclusivity strengthens Cardano's global image as a user-centric platform, attracting more investment and expanding its user base. Moreover, the approach developed for Japanese translations offers a scalable model for future language expansions, increasing global accessibility. Ultimately, the project builds community engagement, creating a sense of belonging and loyalty among users, which is essential for the growth of community-driven platforms like Cardano.

#v(20pt)
= Resources : 
#v(20pt)
+ #link("https://github.com/Anastasia-Labs/high-quality-japanese-translation/blob/main/Milestone1/djed-website-words.pdf")[Translation of DJED Front-end to Japanese]
+ #link("https://github.com/Anastasia-Labs/high-quality-japanese-translation/blob/main/Milestone1/liqwid.pdf")[Translation of Liqwid Finance Front-end to Japanese]
+ #link("https://github.com/Anastasia-Labs/high-quality-japanese-translation/blob/main/Milestone1/lace.pdf")[Translation of Lace Wallet Front-end to Japanese]
+ #link("https://github.com/Anastasia-Labs/high-quality-japanese-translation/blob/main/Milestone2/sundaeswap.pdf")[Translation of SundaeSwap Front-end to Japanese]
+ #link("https://github.com/Anastasia-Labs/high-quality-japanese-translation/blob/main/Milestone2/minswap.pdf")[Translation of MinSwap Front-end to Japanese]
+ #link("https://github.com/Anastasia-Labs/high-quality-japanese-translation/blob/main/Milestone3/Optim%20-%20Website%20Translation%20Japanese.pdf")[Translation of OptimFi Front-end to Japanese]
+ #link("https://github.com/Anastasia-Labs/high-quality-japanese-translation/blob/main/Milestone3/encoins-website-words-japanese.pdf")[Translation of Encoins Front-end to Japanese]

#v(20pt)

#align(center)[= Close-out Video ] 

#align(center)[#link("")[High Quality Japanese Translations for Popular Cardano DApps]]
