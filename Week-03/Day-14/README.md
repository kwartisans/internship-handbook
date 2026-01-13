# Day 14: Git Workflows & Collaborative Development

## 🎯 Today's Objective
Master Git workflows, branching strategies, and collaborative development practices. Learn how professional teams work together on code and prepare for your final project collaboration.

---

## 📚 Pre-Work (Watch Before Starting)

**Required Videos:**
1. **Git & GitHub for Professionals** - [The Coding Train](https://www.youtube.com/watch?v=BCQHnlnPusY) (30 minutes)
2. **Git Branching & Merging** - [Traversy Media](https://www.youtube.com/watch?v=FyAAIHHClqI) (40 minutes)
3. **Pull Requests Explained** - [GitHub](https://www.youtube.com/watch?v=For9VtrQx58) (15 minutes)
4. **Resolving Merge Conflicts** - [Fireship](https://www.youtube.com/watch?v=HosPml1qkrg) (10 minutes)

**Take notes on:**
- What is a branch and why use it?
- How do pull requests work?
- What are merge conflicts?
- What is a good commit message?

---

## 🗓️ Daily Schedule (8 Hours)

### **8:00 AM - 9:00 AM**: Git Review & Advanced Concepts
- Review basic Git commands
- Learn about branching strategies
- Understand Git workflow patterns

### **9:00 AM - 11:00 AM**: Hands-On Branching Practice
- Create feature branches
- Practice merging
- Handle merge conflicts
- Write meaningful commit messages

### **11:00 AM - 11:15 AM**: Break ☕

### **11:15 AM - 1:00 PM**: Collaborative Development
- Fork repositories
- Create pull requests
- Review code
- Collaborate with peers

### **1:00 PM - 2:00 PM**: Lunch Break 🍽️

### **2:00 PM - 3:30 PM**: Real-World Workflows
- Implement GitFlow workflow
- Practice continuous integration concepts
- Learn about code reviews
- Set up project structure for Week 4

### **3:30 PM - 3:45 PM**: Break ☕

### **3:45 PM - 4:00 PM**: Team Collaboration Challenge
- Work on shared repository
- Contribute to peer projects
- Document your workflow

---

## 💻 Essential Git Commands Review

### Basic Commands
```bash
# Check status
git status

# View commit history
git log --oneline --graph --all

# See differences
git diff

# Stage changes
git add <file>
git add .

# Commit changes
git commit -m "Clear, descriptive message"

# Push to remote
git push origin <branch-name>

# Pull latest changes
git pull origin <branch-name>
```

### Branching Commands
```bash
# Create new branch
git branch feature-name

# Switch to branch
git checkout feature-name

# Create and switch (shortcut)
git checkout -b feature-name

# List all branches
git branch -a

# Delete branch
git branch -d feature-name

# Merge branch into current
git merge feature-name
```

### Advanced Commands
```bash
# Stash changes temporarily
git stash
git stash pop

# Revert a commit
git revert <commit-hash>

# Reset to previous commit
git reset --hard <commit-hash>

# View remote repositories
git remote -v

# Fetch without merging
git fetch origin
```

---

## 🌲 Task 1: Branching Practice (1.5 hours)

### Exercise 1: Feature Branch Workflow

1. **Create a new project:**
```bash
mkdir git-practice
cd git-practice
git init
```

2. **Create initial files:**
```bash
echo "# Git Practice Project" > README.md
echo "console.log('Hello World');" > app.js
git add .
git commit -m "Initial commit: Add README and app.js"
```

3. **Create feature branch:**
```bash
git checkout -b feature/add-greeting
```

4. **Make changes:**
```javascript
// Add to app.js
function greet(name) {
    return `Hello, ${name}!`;
}

console.log(greet('Developer'));
```

5. **Commit and push:**
```bash
git add app.js
git commit -m "feat: Add greeting function"
git checkout main
git merge feature/add-greeting
```

### Exercise 2: Multiple Feature Branches

Create these branches and features:
- `feature/add-calculator` - Add calculator functions
- `feature/add-styles` - Add CSS styling
- `feature/add-tests` - Add test cases

Practice merging them one by one into main.

---

## 🤝 Task 2: Pull Request Workflow (2 hours)

### Step 1: Fork a Repository

1. Find a practice repository on GitHub (ask your mentor for the URL)
2. Click "Fork" to create your copy
3. Clone your fork:
```bash
git clone https://github.com/YOUR-USERNAME/REPO-NAME.git
cd REPO-NAME
```

### Step 2: Create Feature Branch

```bash
git checkout -b feature/add-your-name
```

### Step 3: Make Your Contribution

Add your profile to `contributors.md`:
```markdown
## Your Name
- **Skills:** HTML, CSS, JavaScript
- **Project:** [Your Week 3 Project Link]
- **GitHub:** [@yourusername](https://github.com/yourusername)
```

### Step 4: Commit and Push

```bash
git add contributors.md
git commit -m "docs: Add [Your Name] to contributors"
git push origin feature/add-your-name
```

### Step 5: Create Pull Request

1. Go to your forked repository on GitHub
2. Click "Pull Request"
3. Write a clear description:
   - What you changed
   - Why you changed it
   - Any relevant context

4. Submit and wait for review

---

## ⚔️ Task 3: Handling Merge Conflicts (1 hour)

### Creating a Conflict (Practice)

1. **Create two branches:**
```bash
git checkout -b branch-1
echo "Version 1" > file.txt
git add file.txt
git commit -m "Add version 1"

git checkout main
git checkout -b branch-2
echo "Version 2" > file.txt
git add file.txt
git commit -m "Add version 2"
```

2. **Try to merge:**
```bash
git checkout main
git merge branch-1  # This works
git merge branch-2  # This creates a conflict!
```

3. **Resolve the conflict:**
```bash
# Open file.txt in your editor
# You'll see conflict markers:
# <<<<<<< HEAD
# Version 1
# =======
# Version 2
# >>>>>>> branch-2

# Choose what to keep, then:
git add file.txt
git commit -m "Resolve merge conflict between branch-1 and branch-2"
```

---

## 📝 Task 4: Writing Good Commit Messages (30 minutes)

### Commit Message Format

```
type(scope): Brief description

Detailed explanation of what changed and why.

- Key change 1
- Key change 2
```

### Types:
- `feat:` New feature
- `fix:` Bug fix
- `docs:` Documentation changes
- `style:` Code style changes (formatting)
- `refactor:` Code refactoring
- `test:` Adding tests
- `chore:` Maintenance tasks

### Examples:

✅ **Good:**
```
feat(calculator): Add square root function

Implement Math.sqrt() wrapper with input validation
and error handling for negative numbers.
```

❌ **Bad:**
```
updated stuff
```

✅ **Good:**
```
fix(form): Prevent submission with empty fields

Added validation to check all required fields before
allowing form submission. Shows error messages for
empty fields.
```

❌ **Bad:**
```
bug fix
```

---

## 🏆 Daily Challenge: Collaborative Project

**Team Git Workflow Challenge**

Work with 2-3 peers to build a simple project:

### Project: Team Recipe Book

**Requirements:**
- Each person adds 2 recipes
- Use proper Git workflow
- Create feature branches
- Submit pull requests
- Review each other's code
- Resolve any conflicts

**Structure:**
```
recipe-book/
├── README.md
├── index.html
├── styles.css
├── recipes/
│   ├── breakfast/
│   ├── lunch/
│   └── dinner/
└── contributors.md
```

**Git Workflow:**
1. One person creates the repository
2. Others fork and clone
3. Everyone creates feature branches
4. Add recipes in assigned category
5. Submit pull requests
6. Review and merge
7. Handle conflicts if they arise

---

## ✅ End of Day Checklist

- [ ] Reviewed essential Git commands
- [ ] Practiced creating and merging branches
- [ ] Created at least one pull request
- [ ] Handled a merge conflict successfully
- [ ] Wrote 5+ commits with proper messages
- [ ] Collaborated with peers on shared repository
- [ ] Documented Git workflow in notes
- [ ] Set up repository structure for Week 4 project

---

## 📝 Reflection Questions

1. Why is branching important in team projects?
2. What makes a good commit message?
3. How do you resolve merge conflicts?
4. What did you find most challenging about Git today?
5. How will you use Git in your final project?

---

## 📚 Additional Resources

**Documentation:**
- [Git Official Documentation](https://git-scm.com/doc)
- [GitHub Guides](https://guides.github.com/)
- [Atlassian Git Tutorials](https://www.atlassian.com/git/tutorials)

**Interactive Learning:**
- [Learn Git Branching](https://learngitbranching.js.org/) - Visual, interactive tutorial
- [GitHub Skills](https://skills.github.com/) - Hands-on courses
- [Git Exercises](https://gitexercises.fracz.com/) - Practice challenges

**Git Workflows:**
- [GitFlow Workflow](https://www.atlassian.com/git/tutorials/comparing-workflows/gitflow-workflow)
- [GitHub Flow](https://guides.github.com/introduction/flow/)
- [Trunk Based Development](https://trunkbaseddevelopment.com/)

**Tools:**
- [GitKraken](https://www.gitkraken.com/) - Git GUI client
- [GitHub Desktop](https://desktop.github.com/) - Simple Git interface
- [Git Graph (VS Code)](https://marketplace.visualstudio.com/items?itemName=mhutchie.git-graph) - Visualize branches

---

## 🆘 Common Issues & Solutions

**Issue 1: Push rejected**
```bash
# Solution: Pull first, then push
git pull origin main
git push origin main
```

**Issue 2: Wrong branch**
```bash
# Solution: Stash changes and switch
git stash
git checkout correct-branch
git stash pop
```

**Issue 3: Committed to wrong branch**
```bash
# Solution: Cherry-pick to correct branch
git checkout correct-branch
git cherry-pick <commit-hash>
```

**Issue 4: Need to undo last commit**
```bash
# Keep changes, undo commit
git reset --soft HEAD~1

# Discard changes and commit
git reset --hard HEAD~1
```

---

## 🎯 Preparing for Week 4

As you finish Day 14, start thinking about your final project:

### Git Strategy for Week 4:
1. Create project repository
2. Set up branch structure:
   - `main` - Production code
   - `develop` - Integration branch
   - `feature/*` - Feature branches
3. Plan your commits:
   - Day 16: Initial setup commits
   - Day 17: Data and model commits
   - Day 18: Core feature commits
   - Day 19: Testing and refinement
   - Day 20: Documentation and polish

### Team Collaboration:
- If working with others, establish clear branching rules
- Set up code review process
- Use GitHub Projects or Issues for task tracking

---

**Tomorrow:** Final Week 3 project - Portfolio website! Time to showcase everything you've learned! 🎨🚀

---

**Remember:** Git is your time machine for code. Master it, and you'll never fear breaking things again. Commit often, push regularly, and always write clear messages!
