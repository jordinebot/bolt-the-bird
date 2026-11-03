![Bolt the bird!](./static/images/cover.webp)

## Scryfall bulk data

Use `npm run serve` or `npm run build` to prepare the offline Scryfall index
automatically (Python 3.9+ required). Run `npm run prepare:scryfall` before
calling Hugo directly. The shared sibling checkout of `hugo-mtg-shortcodes`
provides the preparation script. The generated JSON is ignored by Git.

The snapshot is cached locally for 24 hours; Actions restores and saves its own
repository cache before building. If Scryfall is unavailable, an existing valid
snapshot is reused with a warning. Without one, preparation fails. Hugo makes
no individual card API requests. To force a refresh, run
`npm run prepare:scryfall -- --refresh`. See the shortcode module README for
lookup rules and cache configuration.
