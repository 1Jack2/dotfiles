#!/bin/bash

# https://til.simonwillison.net/llms/claude-hacker-news-themes

# Function to extract ID from URL or use as-is if it's just an ID
get_hn_id() {
  local input=$1
  if [[ $input =~ ^[0-9]+$ ]]; then
    # Input is already an ID
    echo "$input"
  elif [[ $input =~ ^https?://news\.ycombinator\.com/item\?id=([0-9]+) ]]; then
    # Extract ID from URL
    echo "${BASH_REMATCH[1]}"
  else
    echo "Error: Invalid Hacker News URL or ID." >&2  # Error to stderr
    exit 1
  fi
}

# Get the Hacker News ID (either directly or from a URL)
hn_id=$(get_hn_id "$1")

# Make API call, parse and summarize the discussion
curl -s "https://hn.algolia.com/api/v1/items/$hn_id" | \
  jq -r 'recurse(.children[]) | .text' | \
  llm -m gemini-2.0-flash '<system_prompt>不管我发给你的是什么语言，你都需要用中文回复我。</system_prompt>
  Summarize the themes of the opinions expressed here.
  For each theme, output a markdown header.
  Include direct "quotations" (with author attribution) where appropriate.
  You MUST quote directly from users when crediting them, with double quotes.
  Fix HTML entities. Output markdown. Go long.'
