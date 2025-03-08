#!/bin/bash

# https://til.simonwillison.net/llms/claude-hacker-news-themes
# Validate that the argument is an integer
if [[ ! $1 =~ ^[0-9]+$ ]]; then
  echo "Please provide a valid integer as the argument."
  exit 1
fi

# Make API call, parse and summarize the discussion
curl -s "https://hn.algolia.com/api/v1/items/$1" | \
  jq -r 'recurse(.children[]) | .text' | \
  llm -m gemini-2.0-flash '<system_prompt>不管我发给你的是什么语言，你都需要用中文回复我。</system_prompt>
  Summarize the themes of the opinions expressed here.
  For each theme, output a markdown header.
  Include direct "quotations" (with author attribution) where appropriate.
  You MUST quote directly from users when crediting them, with double quotes.
  Fix HTML entities. Output markdown. Go long.'
