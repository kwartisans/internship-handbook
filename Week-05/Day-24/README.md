# Day 24 - Week 05: NCSA Data Protection Policy Deep Dive

## Overview
Welcome to Day 24 of your internship program. Today you will step away from coding and study Rwanda's data protection framework as defined by the National Cyber Security Authority (NCSA). Understanding these policies is a professional obligation for every software engineer working in Rwanda.

## Goals for Today
- Understand Rwanda's Law No. 058/2021 on personal data and privacy protection
- Learn the 8 core principles of data protection
- Identify personal data in your Discord bot project
- Begin writing your `DATA_PROTECTION.md` compliance document

## Schedule

### 08:00 - 09:00: Introduction to Data Protection Law in Rwanda
Read and take notes on:
- **What is personal data?** Any information that can identify a natural person (name, email, IP address, Discord user ID, message content, etc.)
- **Rwanda's Law No. 058/2021**: The primary data protection legislation in Rwanda
- **The NCSA's role**: Oversight, enforcement, and guidance on cybersecurity and data protection

### 09:00 - 11:00: Study - The 8 Core NCSA Data Protection Principles

For each principle, write a one-paragraph explanation AND describe how it applies to your Discord bot:

1. **Lawfulness, Fairness, and Transparency** — You must have a legal basis to process data and be open about how you use it
2. **Purpose Limitation** — Data collected for one purpose must not be used for another
3. **Data Minimization** — Only collect data that is strictly necessary
4. **Accuracy** — Keep data accurate and up to date
5. **Storage Limitation** — Do not keep personal data longer than necessary
6. **Integrity and Confidentiality** — Protect data against unauthorized access, loss, or destruction
7. **Accountability** — You are responsible for demonstrating compliance
8. **Rights of Data Subjects** — Users have the right to access, correct, delete, and export their data

### 11:00 - 12:00: Task - Apply Principles to Your Discord Bot
Answer the following questions in writing:
1. What personal data does your Discord bot currently collect or process?
2. For each type of data, what is your legal basis for processing it?
3. Does your bot store any message content? If so, is that necessary?
4. What would a data breach look like for your bot, and how would you respond?

### 12:00 - 13:00: Start Writing `DATA_PROTECTION.md`
Begin your compliance document with the following sections:
- Overview of what data the bot processes
- Legal basis for processing
- Data minimization measures implemented
- Storage policy (what is kept, for how long, and where)
- User rights and how to exercise them
- Contact information for data-related requests

## Resources
- [Rwanda Official Gazette - Law No. 058/2021](https://www.rura.rw/index.php?id=2)
- [NCSA Rwanda](https://ncsa.gov.rw/)
- [Introduction to GDPR Principles (international reference)](https://gdpr-info.eu/art-5-gdpr/)
- [Privacy by Design Guide](https://www.ipc.on.ca/privacy/protecting-personal-information/privacy-by-design/)

## Homework
- Complete your written answers to the 4 questions above
- Have at least the first 3 sections of `DATA_PROTECTION.md` drafted
- Identify one change you need to make to your bot code to improve compliance

## Notes
📌 **Key Insight**: Your Discord bot likely processes personal data the moment it reads a user's username or ID. Understanding this is the first step to building responsible software.
