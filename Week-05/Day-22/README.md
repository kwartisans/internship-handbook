# Day 22 - Week 05: Building Bot Commands & Events

## Overview
Welcome to Day 22 of your internship program. Today you will implement slash commands and event listeners to make your bot interactive and functional.

## Goals for Today
- Register and handle Discord slash commands
- Implement event listeners for bot events
- Build at least 3 working slash commands
- Handle errors gracefully in your bot

## Schedule

### 08:00 - 09:00: Understanding Discord's Interaction Model
Read: [Discord.js Guide - Slash Commands](https://discordjs.guide/slash-commands/response-methods.html)
- Understand the difference between prefix commands and slash commands
- Learn how Discord registers application commands via the REST API
- Review the Interaction lifecycle (receive → defer → reply)

### 09:00 - 11:00: Task - Slash Commands & Event Listeners
Create a commands folder and implement the following slash commands:

1. **`/ping`** - Replies with "Pong! 🏓" and the bot's current latency
2. **`/hello`** - Greets the user by name with a friendly embedded message
3. **`/help`** - Lists all available commands and their descriptions

Also implement the following event listeners in `index.js`:
- **`guildMemberAdd`** - Sends a welcome message to a designated channel when a new user joins
- **`messageCreate`** - Logs the content of messages to the console (for learning purposes only — do NOT store them)

Register your commands using a `deploy-commands.js` script that calls the Discord REST API.

### 11:00 - 12:00: LeetCode Challenge
**Problem (Easy):** [Running Sum of 1d Array](https://leetcode.com/problems/running-sum-of-1d-array/)
*(Continue working on this week's challenge if not completed)*

### 12:00 - 13:00: Documentation
- Write Daily Summary
- Commit and push your bot code
- Document each command with its purpose and expected output

## Resources
- [Discord.js Guide - Slash Commands](https://discordjs.guide/slash-commands/response-methods.html)
- [Discord.js Guide - Event Handling](https://discordjs.guide/creating-your-bot/event-handling.html)
- [Discord.js Embed Builder](https://discord.js.org/docs/packages/builders/stable/EmbedBuilder:Class)
- [LeetCode - Running Sum of 1d Array](https://leetcode.com/problems/running-sum-of-1d-array/)

## Homework
- All 3 slash commands must be working in your test server
- The `guildMemberAdd` event must fire and send a welcome message
- Ensure proper error handling so the bot doesn't crash on bad input

## Notes
[Add any additional notes here]
