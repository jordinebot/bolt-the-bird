---
title: "Brand new blog!"
date: 2026-05-12T18:32:17+02:00
featured: true
image: "/images/nou-blog_bolt-the-bird.webp"
tags: [blog]
---

Ever since I went to Relic Fest last year and started thiking about writing a tournament report, the thought of starting a blog to talk about Magic has been bouncing around in my head. The problem is that, over the past few years, whenever I've felt like creating a blog I've ended up sucked into a rabbit hole of picking up a platform, a theme, hosting, etc., and inevitably left everything half-done with the post still unwritten... So this time I did it the other way around: I started with the content. I wrote the tournament report, published it as a private GitHub gist, and shared it only with the friends I figured would want to read it.

Eventually, though, I worked up the nerve to actually build the blog. The goal was clear: a static blog (so I could publish it for free on GitHub Pages) that would make it dead-simple to render mana symbols — {{< mana "{W}" >}} {{< mana "{U}" >}} {{< mana "{B}" >}} {{< mana "{R}" >}} {{< mana "{G}" >}} — inline card previews ({{< cardname "Black Lotus|leb" >}}), or full card images:

{{< combo "Birds of Paradise|leb" "Lightning Bolt|leb" >}}

…all from something as straightforward as:

```md
{{</* combo "Birds of Paradise" "Lightning Bolt" */>}}
```

That's why I picked [Hugo](https://gohugo.io/), which I've used on other (now semi-abandoned) projects, and with Claude I put together a set of MTG _shortcodes_ that anyone who wants them can use freely by importing the module from [`jordinebot/hugo-mtg-shortcodes`](https://github.com/jordinebot/hugo-mtg-shortcodes). The theme itself, called _Leyline_, I also built with Claude — you can find it at [`jordinebot/hugo-leyline`](https://github.com/jordinebot/hugo-leyline).

Alongside this one, the blog's first post is the report of my outing in the Modern tournament at [Relic Fest 2025](/posts/relic-fest-2025), for which I've kept the original publication date.

See you soon!
