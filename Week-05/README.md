# Week 05: Discord Bot Development & Cybersecurity / Data Protection

## Overview
Welcome to **Week 5** of your software engineering internship! This week introduces you to two important and complementary disciplines: **Discord bot programming** using Node.js and the Discord API, and **data protection policy** as defined by the National Cyber Security Authority (NCSA) of Rwanda.

You will build a functional Discord bot, understand how bots interact with real users, and learn how Rwanda's national cybersecurity framework governs data protection responsibilities for software engineers and organizations.

---

## 🎯 Week Goals

By the end of this week, you will:
- ✅ Understand how the Discord API and bot ecosystem work
- ✅ Build a fully functional Discord bot using Discord.js (Node.js)
- ✅ Implement bot commands, event listeners, and automated responses
- ✅ Understand Rwanda's NCSA data protection framework and policy
- ✅ Apply data protection principles to your own projects
- ✅ Know how to handle user data responsibly as a software engineer

---

## 🏆 Week 5 Milestones

### Milestone 1: Discord Bot Programming

Build a functional Discord bot from scratch that can:
- Respond to slash commands (e.g., `/hello`, `/help`, `/ping`)
- Listen to and react to server events (new members, messages, reactions)
- Send formatted embed messages
- Manage basic moderation features (e.g., welcome new users)

**Tech Stack:**
- **Node.js** (runtime)
- **Discord.js v14** (official Node.js library for the Discord API)
- **Discord Developer Portal** (create and register your bot)

**Deliverable:** A deployed bot running in a Discord test server with at least 3 working slash commands and 1 event listener.

---

### Milestone 2: Data Protection Policy by NCSA

Study and apply Rwanda's National Cyber Security Authority (NCSA) data protection guidelines. The NCSA defines legal and technical obligations for how personal data must be collected, stored, processed, and shared.

**Topics to cover:**
- Rwanda's Law No. 058/2021 relating to the protection of personal data and privacy
- Key NCSA data protection principles: lawfulness, fairness, transparency, data minimization, accuracy, storage limitation, integrity, and accountability
- Rights of data subjects: access, rectification, erasure, and portability
- How to apply data protection by design in software projects
- What constitutes a data breach and the required response procedures
- How your Discord bot must comply with data protection rules (e.g., not storing messages without consent)

**Deliverable:** A `DATA_PROTECTION.md` document in your project that outlines how your Discord bot handles user data in compliance with NCSA guidelines.

---

## 🗓️ Week Structure

| Day | Focus | Folder |
|-----|-------|--------|
| **Day 21** | Discord API & Bot Setup | [Day-21/](./Day-21/) |
| **Day 22** | Building Bot Commands & Events | [Day-22/](./Day-22/) |
| **Day 23** | Advanced Bot Features & Deployment | [Day-23/](./Day-23/) |
| **Day 24** | NCSA Data Protection Policy Deep Dive | [Day-24/](./Day-24/) |
| **Day 25** | Compliance Audit & Final Presentation | [Day-25/](./Day-25/) |

---

## 🧩 Weekly LeetCode Challenge

**Problem (Easy):** [Running Sum of 1d Array](https://leetcode.com/problems/running-sum-of-1d-array/)

> Given an array `nums`, return an array where each element at index `i` is the sum of all elements from index `0` to `i`.

This problem builds cumulative computation skills — useful for processing sequential event data in bots and data analytics pipelines.

---

## 💻 Technologies You'll Use

### Discord Bot Development
- **Node.js** - JavaScript runtime environment
- **Discord.js v14** - Library for interacting with the Discord API
- **Discord Developer Portal** - Bot registration and permissions management
- **Slash Commands** - Modern Discord bot interaction model
- **Event System** - Listening to Discord gateway events

### Data Protection & Cybersecurity
- **Rwanda Law No. 058/2021** - Personal Data and Privacy Protection
- **NCSA Guidelines** - National Cyber Security Authority of Rwanda
- **GDPR Principles** - International data protection best practices
- **Privacy by Design** - Embedding data protection into software architecture

---

## 🎓 Learning Objectives

### Technical Skills
- Register and configure a Discord application and bot
- Authenticate and connect a bot to the Discord gateway
- Implement slash commands using the Discord REST API
- Handle Discord gateway events (messageCreate, guildMemberAdd, etc.)
- Deploy a persistent Node.js bot process

### Policy & Compliance Skills
- Understand the legal obligations for data processors in Rwanda
- Apply the 8 core data protection principles to software projects
- Write a compliant data handling policy document
- Identify personal data in your applications and handle it responsibly
- Respond to a simulated data breach scenario

---

## ⚡ Daily Schedule Template

Each day follows this structure:

**8:00 AM - 9:00 AM**: Morning Review
- Review previous day's work and progress
- Set objectives for the day

**9:00 AM - 11:00 AM**: Core Development / Study Session
- Hands-on coding or policy reading
- Follow step-by-step tasks in the daily README

**11:00 AM - 12:00 PM**: LeetCode / Problem Solving
- Work on the weekly LeetCode challenge
- Document your approach and solution

**12:00 PM - 1:00 PM**: Documentation & Reflection
- Write daily summary
- Commit code and push to GitHub

**1:00 PM - 2:00 PM**: Lunch Break

---

## 🌟 Week 5 Success Tips

1. **Read the Discord.js Docs**: They are excellent and well-structured
2. **Use a Test Server**: Create a private Discord server for development
3. **Never Share Your Bot Token**: Treat it like a password — use `.env` files
4. **Understand NCSA Policy**: These are real legal obligations, not just theory
5. **Connect Policy to Code**: Apply what you learn about data protection directly to your bot
6. **Document as You Build**: Your `DATA_PROTECTION.md` is a deliverable

---

## 📖 Essential Resources

### Discord Bot Development
1. **Discord.js Official Guide** - [https://discordjs.guide/](https://discordjs.guide/)
2. **Discord Developer Portal** - [https://discord.com/developers/applications](https://discord.com/developers/applications)
3. **Discord.js Documentation** - [https://discord.js.org/](https://discord.js.org/)
4. **Discord.js Crash Course** - [YouTube Tutorial](https://www.youtube.com/watch?v=KZ3tIGHU4O4)

### Data Protection & NCSA
1. **Rwanda Law No. 058/2021** - [Rwanda Official Gazette](https://www.rura.rw/index.php?id=2)
2. **NCSA Rwanda** - [https://ncsa.gov.rw/](https://ncsa.gov.rw/)
3. **GDPR Principles (International Reference)** - [https://gdpr-info.eu/](https://gdpr-info.eu/)
4. **Privacy by Design** - [https://www.ipc.on.ca/privacy/protecting-personal-information/privacy-by-design/](https://www.ipc.on.ca/privacy/protecting-personal-information/privacy-by-design/)

### LeetCode
1. **Running Sum of 1d Array** - [https://leetcode.com/problems/running-sum-of-1d-array/](https://leetcode.com/problems/running-sum-of-1d-array/)

---

## 🚀 Getting Started

1. **Go to the Discord Developer Portal** and create a new application
2. **Enable the Bot** in your application settings and copy your bot token
3. **Install Discord.js**: `npm install discord.js`
4. **Create a `.env` file** to store your token securely
5. **Navigate to Day 21** to begin building your bot
6. **Read the NCSA data protection summary** before Day 24

---

## 📊 Week 5 Expectations

This week focuses on:
- **Bot Development** (40%): Building and deploying a working Discord bot
- **Policy Understanding** (30%): Understanding and applying NCSA data protection principles
- **Documentation** (20%): Writing compliant data handling documentation
- **Problem Solving** (10%): Weekly LeetCode challenge

---

## ⚠️ Important Notes

- **Never commit your bot token** to GitHub — always use environment variables
- **Data protection is a legal requirement** in Rwanda — understand it seriously
- **Your bot handles real user data** — apply NCSA principles from day one
- **Test in a private server** before inviting your bot to any shared community

---

**Let's build responsibly and securely! 🚀**

Navigate to [Day-21](./Day-21/) to start your Week 5 journey!
