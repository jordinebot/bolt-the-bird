#!/usr/bin/env bash
set -euo pipefail

check() {
  local file="$1"
  local pattern="$2"
  local label="$3"

  if ! grep -Eq "$pattern" "$file"; then
    printf 'Missing %s in %s\n' "$label" "$file" >&2
    exit 1
  fi
}

check "public/ca/posts/foundations-phantom-draft/index.html" '<html lang="?ca"?' 'Catalan html lang'
check "public/ca/posts/foundations-phantom-draft/index.html" '<link rel="?canonical"? href="?https://www\.bolt-the-bird\.com/ca/posts/foundations-phantom-draft/' 'Catalan canonical'
check "public/ca/posts/foundations-phantom-draft/index.html" 'hreflang="?ca"? href="?https://www\.bolt-the-bird\.com/ca/posts/foundations-phantom-draft/' 'Catalan hreflang'
check "public/ca/posts/foundations-phantom-draft/index.html" 'hreflang="?en"? href="?https://www\.bolt-the-bird\.com/posts/foundations-phantom-draft/' 'English hreflang on Catalan page'
check "public/ca/posts/foundations-phantom-draft/index.html" 'hreflang="?x-default"? href="?https://www\.bolt-the-bird\.com/posts/foundations-phantom-draft/' 'x-default on Catalan page'

check "public/posts/foundations-phantom-draft/index.html" '<html lang="?en"?' 'English html lang'
check "public/posts/foundations-phantom-draft/index.html" '<link rel="?canonical"? href="?https://www\.bolt-the-bird\.com/posts/foundations-phantom-draft/' 'English canonical'
check "public/posts/foundations-phantom-draft/index.html" 'hreflang="?en"? href="?https://www\.bolt-the-bird\.com/posts/foundations-phantom-draft/' 'English hreflang'
check "public/posts/foundations-phantom-draft/index.html" 'hreflang="?ca"? href="?https://www\.bolt-the-bird\.com/ca/posts/foundations-phantom-draft/' 'Catalan hreflang on English page'
check "public/posts/foundations-phantom-draft/index.html" 'hreflang="?x-default"? href="?https://www\.bolt-the-bird\.com/posts/foundations-phantom-draft/' 'x-default on English page'

check "public/sitemap.xml" 'https://www\.bolt-the-bird\.com/en/sitemap\.xml' 'English sitemap index entry'
check "public/sitemap.xml" 'https://www\.bolt-the-bird\.com/ca/sitemap\.xml' 'Catalan sitemap index entry'
check "public/en/sitemap.xml" 'https://www\.bolt-the-bird\.com/posts/foundations-phantom-draft/' 'English post URL in sitemap'
check "public/ca/sitemap.xml" 'https://www\.bolt-the-bird\.com/ca/posts/foundations-phantom-draft/' 'Catalan post URL in sitemap'

printf 'SEO checks passed\n'
