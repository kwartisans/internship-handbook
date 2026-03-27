# Day 21 - Week 05: Discord API & Bot Setup

## Overview
Welcome to Day 21 of your internship program. Today you will register your Discord bot, set up your development environment, and make your first successful connection to the Discord gateway.

## Goals for Today
- Create a Discord application and bot in the Developer Portal
- Understand the Discord OAuth2 permission system
- Set up a Node.js project with Discord.js
- Connect your bot to a test server and verify it comes online

## Schedule

### 08:00 - 09:00: Introduction to Discord Bot Architecture
Read the Discord.js Guide introduction: [https://discordjs.guide/](https://discordjs.guide/)
- Understand the difference between a Discord Application and a Bot
- Learn what the Discord Gateway is and how bots connect to it
- Review the permission scopes required to operate a bot

### 09:00 - 11:00: Task - Bot Registration & Project Setup
1. Go to the [Discord Developer Portal](https://discord.com/developers/applications) and create a new application
2. Navigate to **Bot** settings, enable the bot, and copy the token
3. Enable the following **Privileged Gateway Intents**: `SERVER MEMBERS INTENT`, `MESSAGE CONTENT INTENT`
4. Initialize a Node.js project: `npm init -y`
5. Install Discord.js: `npm install discord.js`
6. Create a `.env` file with your bot token (`DISCORD_TOKEN=your_token_here`)
7. Install dotenv: `npm install dotenv`
8. Write a basic `index.js` that logs in and prints "Bot is online!" to the console
9. Generate an invite URL with the required permissions and add your bot to a private test server

### 11:00 - 12:00: LeetCode Challenge
**Problem (Easy):** [Running Sum of 1d Array](https://leetcode.com/problems/running-sum-of-1d-array/)

### 12:00 - 13:00: Documentation
- Write Daily Summary
- Push code to GitHub (make sure `.env` is in your `.gitignore`!)
- Document the bot's OAuth2 invite URL and permission scopes used

## Resources
- [Discord.js Guide - Getting Started](https://discordjs.guide/preparations/)
- [Discord Developer Portal](https://discord.com/developers/applications)
- [Discord.js Documentation](https://discord.js.org/)
- [LeetCode - Running Sum of 1d Array](https://leetcode.com/problems/running-sum-of-1d-array/)

## Homework
- Ensure your bot successfully comes online in your test server
- Add `.env` and `node_modules` to `.gitignore`
- Document what Privileged Gateway Intents are and why they exist

## Notes
⚠️ **Security Reminder**: Never share or commit your bot token. If you accidentally push it to GitHub, immediately regenerate it in the Developer Portal.
