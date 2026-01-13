# Day 16: Project Planning & Design

## 🎯 Today's Objective
By the end of today, you will have:
- ✅ Chosen your final project (Option 1 or Option 2)
- ✅ Written a clear problem statement
- ✅ Designed your data model
- ✅ Created a project folder structure
- ✅ Outlined your algorithm approach

---

## 📚 Pre-Work (Do This First!)

**Watch these videos before starting:**
1. [Python Machine Learning Tutorial](https://www.youtube.com/watch?v=7eh4d6sabA0)
2. [Machine Learning for Everybody](https://www.youtube.com/watch?v=S6iuhdYsGC8&t=4s)

Take notes on:
- What is Linear Regression?
- How do you prepare data for ML?
- What are features and labels?

---

## 🗓️ Daily Tasks

### Task 1: Choose Your Project (30 minutes)

**Read both options carefully:**

#### Option 1: Weather Data & Farmer Loss Prediction System
- Predict potential farmer losses
- Input: Rainfall data, Month/Season, Manure price
- Output: Predicted loss amount or risk level
- **Rwanda context preferred**

#### Option 2: Informal Economy Credit Scoring Simulator
- Estimate credit score for informal workers
- Input: Income consistency, Transaction frequency, Savings, Risk flags
- Output: Credit score (0-100), Loan eligibility

**Decision:** Write down which project you choose and WHY.

---

### Task 2: Write Your Problem Statement (45 minutes)

Create a document called `PROBLEM_STATEMENT.md` with:

```markdown
# Problem Statement

## Project Title
[Your project name]

## Problem Description
[What problem are you solving? Who is affected? Why does it matter?]

## Target Users
[Who will use this system?]

## Objectives
- Objective 1
- Objective 2
- Objective 3

## Expected Outputs
[What will your system produce?]

## Constraints
- No real user data
- Simulated data only
- Ethical and explainable

## Success Criteria
[How will you know your project is successful?]
```

---

### Task 3: Design Your Data Model (1 hour)

Create a document called `DATA_MODEL.md` with:

#### For Farmer Loss Prediction:
```markdown
# Data Model

## Input Features
1. **Rainfall (mm)** - float (0-500)
2. **Month** - integer (1-12) or categorical (Dry Season, Rainy Season)
3. **Manure Price (RWF/kg)** - float (100-1000)

## Output (Label)
- **Predicted Loss (RWF)** - float (0-1000000)

## Sample Data Row
| Rainfall | Month | Manure_Price | Loss |
|----------|-------|--------------|------|
| 120.5    | 3     | 350          | 45000|
```

#### For Credit Scoring:
```markdown
# Data Model

## Input Features
1. **Income Consistency Score** - integer (0-10)
2. **Transaction Frequency (per month)** - integer (0-100)
3. **Savings Ratio (%)** - float (0-100)
4. **Risk Flags** - integer (0-5)

## Output (Label)
- **Credit Score** - float (0-100)

## Sample Data Row
| Income_Consistency | Transactions | Savings_Ratio | Risk_Flags | Credit_Score |
|--------------------|--------------|---------------|------------|--------------|
| 7                  | 45           | 15.5          | 1          | 68.3         |
```

**Task:** Create 20 sample data rows in a CSV file called `sample_data.csv`

---

### Task 4: Design Your Folder Structure (30 minutes)

Create the following folder structure:

```
project_name/
│
├── README.md                 # Project overview
├── PROBLEM_STATEMENT.md      # Your problem statement
├── DATA_MODEL.md             # Data model explanation
│
├── data/
│   ├── sample_data.csv       # Your simulated dataset
│   └── processed_data.csv    # (created later)
│
├── src/
│   ├── main.py               # Entry point
│   ├── data_loader.py        # Load and validate data
│   ├── preprocessor.py       # Clean and prepare data
│   ├── model.py              # ML model implementation
│   └── predictor.py          # Make predictions
│
├── tests/
│   └── test_cases.md         # Edge cases and test scenarios
│
└── docs/
    ├── algorithm_explanation.md
    └── reflection.md
```

**Action:** Create this folder structure on your computer.

---

### Task 5: Outline Your Algorithm Approach (1 hour)

Create a document called `docs/algorithm_explanation.md`:

```markdown
# Algorithm Explanation

## Overview
[Briefly describe how your system will work]

## Step-by-Step Process

### Step 1: Data Loading
- Read CSV file
- Validate data types
- Check for missing values

### Step 2: Data Preprocessing
- Handle missing values (strategy: ___)
- Normalize/scale features (if needed)
- Split into training (80%) and testing (20%)

### Step 3: Model Training
- Algorithm: Linear Regression
- Formula: y = b0 + b1*x1 + b2*x2 + b3*x3 + ...
- Training method: [Explain]

### Step 4: Prediction
- Take new input
- Apply same preprocessing
- Use trained model to predict
- Return result with explanation

### Step 5: Evaluation
- Calculate accuracy metrics
- Test edge cases

## Pseudocode

```
function train_model(data):
    X = extract_features(data)
    y = extract_labels(data)
    model = LinearRegression()
    model.fit(X, y)
    return model

function predict(model, new_data):
    X_new = preprocess(new_data)
    prediction = model.predict(X_new)
    return prediction
```

## Edge Cases to Handle
1. Missing data
2. Negative values where not allowed
3. Out-of-range inputs
4. Zero division errors
```

---

### Task 6: Define Function Names (30 minutes)

Create a file called `src/main.py` with function signatures:

```python
# src/main.py

def load_data(filepath):
    """
    Load data from CSV file.
    
    Args:
        filepath (str): Path to CSV file
    
    Returns:
        DataFrame: Loaded data
    """
    pass

def preprocess_data(data):
    """
    Clean and prepare data for ML model.
    
    Args:
        data (DataFrame): Raw data
    
    Returns:
        DataFrame: Processed data
    """
    pass

def train_model(X_train, y_train):
    """
    Train Linear Regression model.
    
    Args:
        X_train: Training features
        y_train: Training labels
    
    Returns:
        model: Trained model
    """
    pass

def predict(model, X_new):
    """
    Make prediction using trained model.
    
    Args:
        model: Trained model
        X_new: New data to predict
    
    Returns:
        prediction: Predicted value
    """
    pass

def explain_prediction(prediction, features):
    """
    Explain why the prediction was made.
    
    Args:
        prediction: Predicted value
        features: Input features used
    
    Returns:
        str: Explanation text
    """
    pass
```

---

## ✅ End of Day Checklist

- [ ] I have chosen my project (Option 1 or 2)
- [ ] I have written my problem statement
- [ ] I have designed my data model
- [ ] I have created my folder structure
- [ ] I have outlined my algorithm approach
- [ ] I have defined my function names
- [ ] I have created 20 sample data rows

---

## 📝 Reflection Questions (Write in your journal)

1. Why did you choose this project?
2. What is the most challenging part of your design?
3. What are you worried about?
4. What are you excited about?

---

**Tomorrow:** You will start implementing data loading and preprocessing!

Current Date and Time (UTC - YYYY-MM-DD HH:MM:SS formatted): 2026-01-13 19:29:46
Current User's Login: MUGWANEZAMANZI
