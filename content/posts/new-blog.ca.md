---
title: "Estreno blog!"
date: 2026-05-12T18:32:17+02:00
featured: true
image: "/images/nou-blog_bolt-the-bird.webp"
tags: [blog]
---

Des que l'any passat vaig anar al Relic Fest i em vaig plantejar escriure la meva crònica del torneig, em va passar pel cap la idea de crear un blog per parlar sobre Magic. El problema és que, en els últims anys, sempre que he volgut crear un blog m'he vist inmers en una espiral de triar plataforma, _theme_, hosting, etc. i he acabat deixant-ho tot a mitges i el post per escriure... Així que aquest cop ho vaig fer diferent: vaig començar pel contingut; vaig escriure la crònica del torneig, la vaig publicar en un _gist_ privat a GitHub i el vaig compartir només amb els amics que vaig pensar que tindrien interès en llegir-lo.

Finalment, però, m'he animat a crear el blog. L'objectiu el tenia clar: un blog estàtic (per poder publicar gratuïtament a GitHub Pages) i que em permetés molt fàcilment renderitzar símbols de manà: {{< mana "{W}" >}} {{< mana "{U}" >}} {{< mana "{B}" >}} {{< mana "{R}" >}} {{< mana "{G}" >}}, previsualitzacions de cartes en el text ({{< cardname "Black Lotus|leb" >}}) o com a imatges:

{{< combo "Birds of Paradise|leb" "Lightning Bolt|leb" >}}

D'una forma tan senzilla com escriure:

```md
{{</* combo "Birds of Paradise" "Lightning Bolt" */>}}
```

Per aquest motiu vaig escollir [Hugo](https://gohugo.io/), que ja he fet servir en altres projectes (avui semi-abandonats), i amb Claude vaig crear un conjunt de _shortcodes_ per MTG que tothom qui ho vulgui pot utilitzar lliurement carregant el mòdul des de [`jordinebot/hugo-mtg-shortcodes`](https://github.com/jordinebot/hugo-mtg-shortcodes). El _theme_ en si, anomenat _Leyline_ també l'he creat amb Claude i el podeu trobar a [`jordinebot/hugo-leyline`](https://github.com/jordinebot/hugo-leyline)

A banda d'aquest, el primer post del blog és la crònica de la meva participació al torneig de Modern del [Relic Fest 2025](/ca/posts/relic-fest-2025), del qual he mantingut la data de publicació original.

Fins aviat!
