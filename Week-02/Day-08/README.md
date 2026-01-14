# Day 08 - Exploring Kigali Web Artisans Machine Learning Projects

## Overview
Welcome to Day 08! Today you'll explore **real-world machine learning projects** built and maintained by the Kigali Web Artisans community. This is your opportunity to see how professional software engineers structure ML applications, organize code, write documentation, and solve real problems.

You'll learn to read project READMEs, understand project architecture, and see how the ML concepts from Day 06 are applied in production code.

---

## Goals for Today
- Learn to navigate and understand professional ML project repositories
- Explore real-world ML applications and their architectures
- Understand README documentation standards
- Analyze project structure and code organization
- See data preprocessing and model training workflows
- Connect ML theory to practical implementation

---

## Schedule

### 8:00 AM - 9:00 AM: How to Read a GitHub Project

**Understanding Project Structure:**
- README.md: The project's front door
- requirements.txt / package.json: Dependencies
- src/ or app/: Source code organization
- data/: Datasets and data processing
- models/: Trained models and model artifacts
- tests/: Testing code
- docs/: Additional documentation

**What to Look for in a README:**
- Project description and purpose
- Installation instructions
- Usage examples
- Technology stack
- Contributing guidelines
- License information

**Exercise:**
Pick any open-source ML project on GitHub and identify these components.

---

### 9:00 AM - 10:30 AM: Kigali Web Artisans ML Project #1

**Project Focus: Predictive Analytics / Data Science**

**Your Tasks:**
1. **Clone and Explore** (if repository is public and accessible)
2. **Read the README thoroughly**:
   - What problem does it solve?
   - Who is the target user?
   - What data does it use?
   - What ML algorithm/approach is used?

3. **Explore the Code Structure**:
   - How is data loaded and preprocessed?
   - Where is the ML model defined?
   - How are predictions made?
   - What libraries are used?

4. **Document Your Findings**:
   Create a file `day08-project1-analysis.md` with:
   - Project name and purpose
   - Technology stack
   - ML approach used
   - Interesting code patterns you noticed
   - Questions you have about the implementation

**Note**: If specific Kigali Web Artisans projects are not yet accessible, use these example ML projects as alternatives:
- [House Price Prediction](https://github.com/topics/house-price-prediction)
- [Crop Yield Prediction](https://github.com/topics/crop-prediction)
- [Credit Scoring Systems](https://github.com/topics/credit-scoring)

---

### 10:30 AM - 11:00 AM: ML Project Architecture Patterns

**Common ML Project Structures:**

```
ml-project/
├── README.md
├── requirements.txt
├── data/
│   ├── raw/           # Original data
│   ├── processed/     # Cleaned data
│   └── README.md      # Data documentation
├── notebooks/         # Jupyter notebooks for exploration
│   ├── EDA.ipynb      # Exploratory Data Analysis
│   └── training.ipynb # Model training
├── src/
│   ├── data/          # Data loading and processing
│   ├── features/      # Feature engineering
│   ├── models/        # Model definitions
│   └── utils/         # Helper functions
├── models/            # Saved trained models
├── tests/            # Unit tests
└── docs/             # Documentation
```

**Best Practices Observed:**
- Separation of concerns (data, models, utilities)
- Clear documentation
- Reproducible results
- Version control for models and data
- Testing critical components

---

### 11:00 AM - 11:15 AM: Break

---

### 11:15 AM - 1:00 PM: Kigali Web Artisans ML Project #2

**Project Focus: ML Applications with Web Interface**

**Your Tasks:**
1. **Explore a second ML project** from Kigali Web Artisans (or recommended alternatives)

2. **Focus on Integration**:
   - How does the ML backend connect to the frontend?
   - What API endpoints are exposed?
   - How are predictions served to users?
   - How is the model deployed?

3. **Technology Stack Analysis**:
   - Backend framework (Flask, FastAPI, Django?)
   - Frontend framework (React, Vue, vanilla JS?)
   - Database (if applicable)
   - Deployment platform

4. **Create Analysis Document**: `day08-project2-analysis.md`
   - Project overview
   - How ML integrates with web interface
   - API design patterns
   - Deployment approach
   - Code quality observations

**Recommended Alternative Projects:**
- [ML Model Deployment Examples](https://github.com/topics/ml-deployment)
- [Flask ML API](https://github.com/topics/flask-machine-learning)
- [FastAPI ML Projects](https://github.com/topics/fastapi-ml)

---

### 1:00 PM - 2:00 PM: Lunch Break

---

### 2:00 PM - 3:30 PM: Deep Dive - Code Reading Exercise

**Pick ONE interesting file from a project and analyze it deeply:**

**For a data preprocessing script:**
- What data cleaning steps are performed?
- How are missing values handled?
- How are features engineered?
- What assumptions are made about the data?

**For a model training script:**
- What algorithm is used and why?
- How is the data split (train/test)?
- What hyperparameters are set?
- How is model performance evaluated?

**For an API endpoint:**
- How does it receive input?
- How does it call the ML model?
- How does it format the output?
- What error handling is implemented?

**Exercise:**
1. Choose a file (max 200 lines)
2. Read every line carefully
3. Add comments explaining what each section does
4. Note any patterns or techniques you want to remember
5. Write 3 questions about the code

---

### 3:30 PM - 3:45 PM: Break

---

### 3:45 PM - 4:00 PM: Reflection & Knowledge Synthesis

**Reflection Questions:**
1. What surprised you about professional ML projects?
2. How do these projects compare to tutorial code?
3. What makes a good ML project README?
4. What coding patterns did you notice across projects?
5. What would you do differently in your own ML project?

**Synthesis Exercise:**
Create a comparison table:

| Aspect | Project 1 | Project 2 |
|--------|-----------|-----------|
| Problem Solved | | |
| ML Algorithm | | |
| Tech Stack | | |
| Code Quality | | |
| Documentation | | |
| Interesting Features | | |

**Share Your Findings:**
- Post your analysis in Discord #week2-projects
- Discuss interesting discoveries with peers
- Ask mentors about patterns you observed

---

## Key Concepts Learned Today

- **Project Structure**: How professional ML projects are organized
- **Documentation Standards**: Writing clear READMEs and code comments
- **Data Pipeline**: From raw data to model-ready features
- **Model Deployment**: Making ML models accessible via APIs
- **Code Quality**: Testing, error handling, and maintainability
- **Integration Patterns**: Connecting ML backends to web frontends

---

## Resources

### Kigali Web Artisans Projects
- Check Discord announcements for specific project repositories
- Ask mentors for recommended projects to explore
- Join the Kigali Web Artisans GitHub organization (if available)

### Example ML Projects for Study
- [Awesome Machine Learning Projects](https://github.com/ml-tooling/best-of-ml-python)
- [Applied ML Examples](https://github.com/eugeneyan/applied-ml)
- [Real World ML](https://github.com/microsoft/ML-For-Beginners)

### Project Documentation Guides
- [How to Write a Good README](https://www.makeareadme.com/)
- [README Template](https://github.com/othneildrew/Best-README-Template)
- [Documentation Best Practices](https://docs.github.com/en/repositories)

### Tools for Code Exploration
- GitHub's code navigation features
- VS Code for reading code locally
- GitHub1s.com for web-based code viewing

---

## Homework

### Required Tasks ✅

1. **Explore Two ML Projects**:
   - Complete analysis documents for both projects
   - Document technology stacks
   - Note interesting patterns

2. **Deep Code Reading**:
   - Choose ONE file to analyze deeply
   - Add explanatory comments
   - Write 3 questions about the code

3. **Create Comparison Summary**:
   - Fill out the comparison table
   - Identify common patterns
   - Note unique approaches

4. **Share Findings**:
   - Post analysis in Discord
   - Share most interesting discovery
   - Ask at least one question about what you found

### Optional (Bonus) 💡
- Clone a project and try to run it locally
- Create a diagram of a project's architecture
- Contribute a small documentation improvement
- Start a list of "ML project best practices"

---

## Professional Development

**What You're Learning:**
- Code reading skills (essential for any developer)
- Understanding production-quality code
- Documentation standards
- Project organization patterns
- How to learn from existing codebases

**Career Skills:**
- Reading other people's code (daily task for developers)
- Understanding project requirements from documentation
- Analyzing technical decisions
- Contributing to existing projects

---

## Discussion Topics

- What makes an ML project "production-ready"?
- How important is documentation in professional projects?
- What's the difference between tutorial code and production code?
- How do teams decide which ML algorithm to use?
- What role does testing play in ML projects?

---

## Connection to Your Final Project

**Week 4 Preparation:**
Today's exploration helps you understand:
- How to structure your final ML project
- What to include in your README
- How to organize code professionally
- What documentation to write
- How to deploy your model

Take notes on patterns you want to replicate in your own project!

---

## Looking Ahead

**Tomorrow (Day 09)**: We'll explore Kigali Web Artisans mobile and web projects, seeing how these integrate with ML systems!

**Skills Building**: Today's code reading skills are essential for learning from open-source projects throughout your career.

---

## Getting Help

- **Discord**: #week2-projects channel
- **Mentors**: Ask about specific projects or code patterns
- **Peers**: Share discoveries and learn together

**Tip**: Don't worry if you don't understand everything. Focus on learning HOW professional projects are organized!

---

**Happy Code Exploring! 🔍💻**
