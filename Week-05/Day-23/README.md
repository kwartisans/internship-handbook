# Day 23 - Week 05: Advanced Bot Features & Deployment

## Overview
Welcome to Day 23 of your internship program. Today you will extend your bot with more advanced features and deploy it so it runs persistently without needing your laptop to be on.

## Goals for Today
- Add a moderation command to your bot
- Implement a simple command cooldown system
- Deploy your bot to a free hosting platform (Railway or Render)
- Ensure your bot token is stored securely in environment variables on the host

## Schedule

### 08:00 - 09:00: Review & Planning
- Review yesterday's commands and fix any outstanding bugs
- Read: [Discord.js Guide - Additional Features](https://discordjs.guide/additional-info/changes-in-v14.html)
- Plan the 2 new features you will build today

### 09:00 - 11:00: Task - Advanced Features & Deployment

**Feature 1: `/serverinfo` command**
- Displays information about the current Discord server (name, member count, creation date, region)
- Return the data as a rich embed

**Feature 2: Command cooldowns**
- Add a 5-second cooldown to the `/ping` command to prevent spam
- Return a message telling the user how many seconds remain if they try again too early

**Deployment:**
1. Push your project to a GitHub repository (ensure `.env` is in `.gitignore`)
2. Create an account on [Railway](https://railway.app/) or [Render](https://render.com/)
3. Connect your GitHub repository to the platform
4. Set your `DISCORD_TOKEN` as an environment variable in the platform's dashboard
5. Deploy and verify your bot stays online after closing your laptop

### 11:00 - 12:00: LeetCode Challenge
**Problem (Easy):** [Running Sum of 1d Array](https://leetcode.com/problems/running-sum-of-1d-array/)
*(Finalize your solution and document your approach)*

### 12:00 - 13:00: Documentation
- Write Daily Summary
- Document your deployment process step by step
- Push finalized code to GitHub

## Resources
- [Discord.js Guide - Command Handling](https://discordjs.guide/creating-your-bot/command-handling.html)
- [Railway Deployment Guide](https://railway.app/new)
- [Render Free Tier Guide](https://render.com/docs/free)
- [LeetCode - Running Sum of 1d Array](https://leetcode.com/problems/running-sum-of-1d-array/)

## Homework
- Bot must be deployed and running on a cloud platform
- `/serverinfo` and cooldown features must be working
- Document your `.env` usage and how the token is kept secure in production

## Notes
[Add any additional notes here]
