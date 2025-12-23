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
  llm -m gemini-3-flash-preview -s '不管我发给你的是什么语言，你都需要用中文回复我。
  总结在此发表的意见的主题。
  针对每个主题，输出一个markdown header。
  酌情包含直接 “引用”（注明作者）。
  在引用用户观点时，必须直接引用，并使用双引号。
  修复 HTML entities。输出markdown。'
