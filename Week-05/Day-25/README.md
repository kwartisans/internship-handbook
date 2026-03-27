# Day 25 - Week 05: Compliance Audit & Final Presentation

## Overview
Welcome to Day 25 of your internship program. This is the final day of Week 5. Today you will complete your `DATA_PROTECTION.md` document, conduct a self-compliance audit of your Discord bot, and present your work to the team.

## Goals for Today
- Complete your `DATA_PROTECTION.md` compliance document
- Conduct a self-audit of your bot against NCSA principles
- Apply at least one code change to improve data protection compliance
- Present your bot and compliance document to the team via Discord

## Schedule

### 08:00 - 09:00: Compliance Audit Preparation
Review your bot codebase with the following checklist:
- [ ] Does the bot log or store any message content beyond what is necessary?
- [ ] Are all stored Discord user IDs and usernames handled securely?
- [ ] Is the bot token stored in an environment variable (never hardcoded)?
- [ ] Does the bot have a documented data retention policy?
- [ ] Are there any unnecessary permissions in the bot's OAuth2 scope?

### 09:00 - 11:00: Task - Finalize `DATA_PROTECTION.md` & Code Fix

**Complete your `DATA_PROTECTION.md`** with all required sections:
1. **Overview** — What the bot does and what data it processes
2. **Data Collected** — List every type of personal data the bot touches
3. **Legal Basis** — Why you are legally permitted to process each type
4. **Data Minimization** — Steps taken to avoid collecting unnecessary data
5. **Storage Policy** — What is stored, where, for how long, and with what access controls
6. **User Rights** — How users can request access, correction, or deletion of their data
7. **Data Breach Response Plan** — What you would do if the bot were compromised
8. **Contact** — Who to contact for data-related requests

**Apply at least one code improvement** based on your audit findings. For example:
- Remove unnecessary `console.log` statements that print message content
- Limit the message content intent if your bot doesn't need to read messages
- Add a note to your `/help` command linking to the bot's data policy

### 11:00 - 12:00: Week 5 Retrospective
- Write your "Week 5 Report" summarizing what you built and learned
- Answer this: "How does Rwanda's NCSA data protection law affect the software you build?"
- Post your report and your GitHub repository link in the Discord channel

### 12:00 - 13:00: Final Presentation (Discord voice or written)
Present the following to your mentors and peers:
1. A live demo or screen recording of your Discord bot in action
2. A walk-through of your `DATA_PROTECTION.md` document
3. One thing you would change or improve if you had more time

## Resources
- [Discord.js Guide](https://discordjs.guide/)
- [NCSA Rwanda](https://ncsa.gov.rw/)
- [Rwanda Law No. 058/2021](https://www.rura.rw/index.php?id=2)
- [LeetCode - Running Sum of 1d Array](https://leetcode.com/problems/running-sum-of-1d-array/)

## Homework
- Submit your final `DATA_PROTECTION.md` in your GitHub repository
- Submit your Week 5 Report in Discord
- Ensure your bot is deployed and accessible for the mentor demo

## Notes
🎉 **Congratulations on completing Week 5!** You've built a real Discord bot and learned how data protection law applies to your work as a software engineer. These are skills that professional engineers use every day.
