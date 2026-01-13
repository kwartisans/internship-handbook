# Day 14 Git Practice - Starter Guide

## Quick Reference Commands

### Basic Workflow
```bash
# Check status
git status

# Stage changes
git add filename.txt
git add .

# Commit
git commit -m "Your message here"

# Push
git push origin branch-name

# Pull
git pull origin branch-name
```

### Branching
```bash
# Create branch
git checkout -b feature-name

# Switch branch
git checkout branch-name

# List branches
git branch -a

# Merge branch
git merge feature-name
```

### Practice Exercise Structure
```
git-practice/
├── README.md
├── feature-1.txt
├── feature-2.txt
└── main.txt
```

## Today's Goals
- [ ] Practice creating branches
- [ ] Make commits with good messages
- [ ] Merge branches successfully
- [ ] Handle a merge conflict
- [ ] Create a pull request
- [ ] Review someone's code

## Commit Message Template
```
type(scope): brief description

Longer explanation if needed.

- Key point 1
- Key point 2
```

## Need Help?
- Check the Day 14 README for detailed instructions
- Ask in Discord
- Use `git help <command>` for documentation
