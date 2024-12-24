
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
  [*Project Number*], [: 1100156],
  [*Project manager*], [: Jonathan Rodriguez],
  [*Project Start Date*], [: Sep 2,2024 ],
  [*Project Completion Date*], [: Dec 30,2024],
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

/ Project Name : High Quality Japanese Translations for Popular Cardano DApps
#v(10pt)
/ URL : #link("https://projectcatalyst.io/funds/11/cardano-open-ecosystem/high-quality-japanese-translations-for-popular-cardano-dapps")

#v(5pt)

= List of KPIs  
== Challenge KPIs 
#v(5pt)
- Integration Time
Ensure that the translation of each DApp is integrated and live within 2 months after translation, without significant delays.

- Collaborative Engagement with DApp Teams
Achieve successful collaboration with at least 80% of the DApp teams, ensuring their active involvement in the integration and adoption of the translations.

- Language Quality Assurance
Ensure that the Japanese translations are reviewed by at least 2 native language experts per DApp to maintain accuracy, context relevance, and consistency across platforms.

- User Retention
Achieve a 30% retention rate among new Japanese users who interact with the platforms after the translation rollout, within 6 months of launch.

- Market Penetration
Increase the percentage of Japanese ADA holders interacting with Cardano DApps, targeting at least a 10% increase in engagement from the Japanese ADA community after the translations are completed.

- Cultural Sensitivity & Accuracy
Achieve a 99% accuracy rate in translation accuracy (based on peer review and user feedback) to ensure culturally sensitive and contextually appropriate language usage.

#v(10pt)
== Project KPIs 
#v(15pt)
- Number of DApps Translated
Measure the successful translation and integration of front-end interfaces for at least 7 Cardano DApps (DJED, Liqwid Finance, SundaeSwap, Optim, Minswap, Lenfi, and Encoins) into Japanese.

- Quality of Translations
Achieve a 95% satisfaction rate from users and DApp teams regarding the accuracy and quality of the Japanese translations, based on feedback surveys and assessments.

- Increased Japanese User Engagement
Track the increase in Japanese-speaking users on each DApp, aiming for a 20% rise in Japanese user activity (sign-ups, transactions, interactions) within 6 months of implementing translations.

- DApp Transaction Volume
Measure the growth in transaction volumes for each DApp, aiming for a 15% increase in transactions from Japanese users within the first 3 months of launch.

- Community Feedback
Collect and evaluate positive feedback from the Japanese community, targeting at least 75% positive sentiment regarding the new translations, as measured by surveys, social media, and community channels.

- Open Source Contributions
Track the number of contributions (issues, pull requests, improvements) made to the project repository, aiming for at least 10 community contributions in the first year.

#pagebreak()
#v(40pt)

= Key achievements 
#v(10pt)

-  The project successfully achieved professional, high-quality Japanese translations for the front-end interfaces of prominent Cardano DApps, specifically targeting:
  - DJED
  - Liqwid Finance
  - Lace Wallet
  - SundaeSwap
  - Minswap
  - Optim
  - Encoins

-  Successful translations of respective projects translated to Japanese and are available for projects to use and implement on their websites.

#v(10pt)

= Key learnings 
#v(20pt)



#v(10pt)
= Next steps
#v(10pt)


#pagebreak()
#v(40pt)

= Final thoughts 
#v(20pt)


#v(20pt)
= Resources : 
#v(20pt)
+ #link("https://github.com/Anastasia-Labs/high-quality-japanese-translation/blob/main/Milestone1/djed-website-words.pdf")[Translation of DJED Front-end to Japanese]
+ #link("https://github.com/Anastasia-Labs/high-quality-japanese-translation/blob/main/Milestone1/liqwid.pdf")[Translation of Liqwid Finance Front-end to Japanese]
+ #link("https://github.com/Anastasia-Labs/high-quality-japanese-translation/blob/main/Milestone1/lace.pdf")[Translation of Lace Wallet Front-end to Japanese]
+ #link("https://github.com/Anastasia-Labs/high-quality-japanese-translation/blob/main/Milestone2/sundaeswap.pdf")[Translation of SundaeSwap Front-end to Japanese]
+ #link("https://github.com/Anastasia-Labs/high-quality-japanese-translation/blob/main/Milestone2/minswap.pdf")[Translation of MinSwap Front-end to Japanese]
+ #link("https://github.com/Anastasia-Labs/high-quality-japanese-translation/blob/main/Milestone3/Optim%20-%20Website%20Translation%20Japanese.pdf")[Translation of Optim Front-end to Japanese]
+ #link("https://github.com/Anastasia-Labs/high-quality-japanese-translation/blob/main/Milestone3/encoins-website-words-japanese.pdf")[Translation of Encoins Front-end to Japanese]

#v(20pt)
= Close-out Video  : 
#link("")[High Quality Japanese Translations for Popular Cardano DApps]
