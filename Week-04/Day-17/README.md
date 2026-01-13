# Day 17: Data Preparation & Algorithm Setup

## 🎯 Today's Objective
By the end of today, you will have:
- ✅ Generated or expanded your simulated dataset (50+ rows)
- ✅ Implemented data loading functions
- ✅ Implemented data preprocessing functions
- ✅ Set up your Linear Regression model structure
- ✅ Tested data flow from CSV to model input

---

## 📚 Review: Key Concepts

Before starting, review:
- What is a **feature** vs a **label**?
- What is **data normalization**?
- Why do we **split data** into training and testing sets?

**Rewatch sections from:**
- [Python Machine Learning Tutorial](https://www.youtube.com/watch?v=7eh4d6sabA0)
- [Machine Learning for Everybody](https://www.youtube.com/watch?v=S6iuhdYsGC8&t=4s)

---

## 🗓️ Daily Tasks

### Task 1: Expand Your Dataset (1 hour)

**Goal:** Create a dataset with at least **50 rows** of simulated data.

#### For Farmer Loss Prediction:
Create `data/sample_data.csv` with columns:
- `rainfall_mm` (50-500)
- `month` (1-12)
- `manure_price_rwf` (100-1000)
- `loss_rwf` (0-1000000)

**Tips for realistic simulation:**
- High rainfall → lower loss (good for crops)
- Dry season (Jun-Aug) → higher loss
- Higher manure price → might reduce loss if used properly

**Example Python script to generate data:**
```python
import csv
import random

def generate_farmer_data(num_rows=50):
    data = []
    for _ in range(num_rows):
        rainfall = random.uniform(50, 500)
        month = random.randint(1, 12)
        manure_price = random.uniform(100, 1000)
        
        # Simple loss calculation (you can make it more complex)
        base_loss = 100000
        loss = base_loss - (rainfall * 100) + (manure_price * 20)
        loss = max(0, loss)  # No negative losses
        
        data.append([rainfall, month, manure_price, loss])
    
    return data

# Generate and save
data = generate_farmer_data(50)
with open('data/sample_data.csv', 'w', newline='') as f:
    writer = csv.writer(f)
    writer.writerow(['rainfall_mm', 'month', 'manure_price_rwf', 'loss_rwf'])
    writer.writerows(data)
```

#### For Credit Scoring:
Create `data/sample_data.csv` with columns:
- `income_consistency` (0-10)
- `transaction_frequency` (0-100)
- `savings_ratio` (0-100)
- `risk_flags` (0-5)
- `credit_score` (0-100)

**Tips for realistic simulation:**
- High income consistency → higher credit score
- More transactions → moderate positive effect
- Higher savings → higher credit score
- More risk flags → lower credit score

**Example Python script:**
```python
import csv
import random

def generate_credit_data(num_rows=50):
    data = []
    for _ in range(num_rows):
        income_consistency = random.randint(0, 10)
        transactions = random.randint(0, 100)
        savings_ratio = random.uniform(0, 100)
        risk_flags = random.randint(0, 5)
        
        # Simple credit score calculation
        score = (income_consistency * 5) + (transactions * 0.3) + (savings_ratio * 0.2) - (risk_flags * 8)
        score = max(0, min(100, score))  # Clamp between 0-100
        
        data.append([income_consistency, transactions, savings_ratio, risk_flags, score])
    
    return data

# Generate and save
data = generate_credit_data(50)
with open('data/sample_data.csv', 'w', newline='') as f:
    writer = csv.writer(f)
    writer.writerow(['income_consistency', 'transaction_frequency', 'savings_ratio', 'risk_flags', 'credit_score'])
    writer.writerows(data)
```

**Action:** Run one of these scripts to generate your dataset.

---

### Task 2: Implement Data Loading (1 hour)

**File:** `src/data_loader.py`

```python
import pandas as pd
import os

def load_data(filepath):
    """
    Load data from CSV file.
    
    Args:
        filepath (str): Path to CSV file
    
    Returns:
        DataFrame: Loaded data
    
    Raises:
        FileNotFoundError: If file doesn't exist
        ValueError: If file is empty or invalid
    """
    # Check if file exists
    if not os.path.exists(filepath):
        raise FileNotFoundError(f"File not found: {filepath}")
    
    # Load CSV
    try:
        data = pd.read_csv(filepath)
    except Exception as e:
        raise ValueError(f"Error loading CSV: {e}")
    
    # Validate not empty
    if data.empty:
        raise ValueError("CSV file is empty")
    
    print(f"✅ Loaded {len(data)} rows from {filepath}")
    return data

def validate_data(data, required_columns):
    """
    Validate that data has required columns and correct types.
    
    Args:
        data (DataFrame): Data to validate
        required_columns (list): List of required column names
    
    Returns:
        bool: True if valid
    
    Raises:
        ValueError: If validation fails
    """
    # Check for missing columns
    missing = set(required_columns) - set(data.columns)
    if missing:
        raise ValueError(f"Missing columns: {missing}")
    
    # Check for null values
    null_counts = data[required_columns].isnull().sum()
    if null_counts.any():
        print(f"⚠️  Warning: Found null values:\n{null_counts[null_counts > 0]}")
    
    print("✅ Data validation passed")
    return True

# Test the functions
if __name__ == "__main__":
    # Update with your actual columns
    REQUIRED_COLUMNS = ['rainfall_mm', 'month', 'manure_price_rwf', 'loss_rwf']
    
    data = load_data('../data/sample_data.csv')
    validate_data(data, REQUIRED_COLUMNS)
    print("\n📊 Data Preview:")
    print(data.head())
    print("\n📈 Data Statistics:")
    print(data.describe())
```

**Action:** 
1. Fill in `REQUIRED_COLUMNS` for your project
2. Run the script: `python src/data_loader.py`
3. Fix any errors

---

### Task 3: Implement Data Preprocessing (1.5 hours)

**File:** `src/preprocessor.py`

```python
import pandas as pd
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import StandardScaler

def handle_missing_values(data):
    """
    Handle missing values in the dataset.
    
    Strategy: Fill with median for numerical columns
    
    Args:
        data (DataFrame): Data with potential missing values
    
    Returns:
        DataFrame: Data with missing values handled
    """
    # Count missing values
    missing = data.isnull().sum()
    if missing.any():
        print(f"⚠️  Handling {missing.sum()} missing values")
        
        # Fill numerical columns with median
        for col in data.select_dtypes(include=['float64', 'int64']).columns:
            if data[col].isnull().any():
                median_val = data[col].median()
                data[col].fillna(median_val, inplace=True)
                print(f"   Filled {col} with median: {median_val}")
    
    return data

def remove_outliers(data, columns, z_threshold=3):
    """
    Remove outliers using Z-score method.
    
    Args:
        data (DataFrame): Input data
        columns (list): Columns to check for outliers
        z_threshold (float): Z-score threshold (default: 3)
    
    Returns:
        DataFrame: Data without outliers
    """
    from scipy import stats
    
    original_len = len(data)
    z_scores = stats.zscore(data[columns])
    abs_z_scores = abs(z_scores)
    
    # Keep rows where all z-scores are below threshold
    filtered_entries = (abs_z_scores < z_threshold).all(axis=1)
    data = data[filtered_entries]
    
    removed = original_len - len(data)
    if removed > 0:
        print(f"🗑️  Removed {removed} outlier rows")
    
    return data

def split_features_labels(data, label_column):
    """
    Split data into features (X) and labels (y).
    
    Args:
        data (DataFrame): Complete dataset
        label_column (str): Name of the label column
    
    Returns:
        tuple: (X, y) features and labels
    """
    X = data.drop(columns=[label_column])
    y = data[label_column]
    
    print(f"✅ Split data: {X.shape[1]} features, {len(y)} samples")
    return X, y

def split_train_test(X, y, test_size=0.2, random_state=42):
    """
    Split data into training and testing sets.
    
    Args:
        X: Features
        y: Labels
        test_size (float): Proportion for testing (default: 0.2)
        random_state (int): Random seed for reproducibility
    
    Returns:
        tuple: (X_train, X_test, y_train, y_test)
    """
    X_train, X_test, y_train, y_test = train_test_split(
        X, y, test_size=test_size, random_state=random_state
    )
    
    print(f"✅ Training set: {len(X_train)} samples")
    print(f"✅ Testing set: {len(X_test)} samples")
    
    return X_train, X_test, y_train, y_test

def normalize_features(X_train, X_test):
    """
    Normalize features using StandardScaler.
    
    Args:
        X_train: Training features
        X_test: Testing features
    
    Returns:
        tuple: (X_train_scaled, X_test_scaled, scaler)
    """
    scaler = StandardScaler()
    X_train_scaled = scaler.fit_transform(X_train)
    X_test_scaled = scaler.transform(X_test)
    
    print("✅ Features normalized")
    return X_train_scaled, X_test_scaled, scaler

# Full preprocessing pipeline
def preprocess_pipeline(data, label_column):
    """
    Complete preprocessing pipeline.
    
    Args:
        data (DataFrame): Raw data
        label_column (str): Name of label column
    
    Returns:
        dict: Contains X_train, X_test, y_train, y_test, scaler
    """
    print("\n🔧 Starting Preprocessing Pipeline...\n")
    
    # Step 1: Handle missing values
    data = handle_missing_values(data)
    
    # Step 2: Remove outliers (optional, comment out if not needed)
    # numeric_cols = data.select_dtypes(include=['float64', 'int64']).columns.tolist()
    # numeric_cols.remove(label_column)
    # data = remove_outliers(data, numeric_cols)
    
    # Step 3: Split features and labels
    X, y = split_features_labels(data, label_column)
    
    # Step 4: Train-test split
    X_train, X_test, y_train, y_test = split_train_test(X, y)
    
    # Step 5: Normalize
    X_train_scaled, X_test_scaled, scaler = normalize_features(X_train, X_test)
    
    print("\n✅ Preprocessing Complete!\n")
    
    return {
        'X_train': X_train_scaled,
        'X_test': X_test_scaled,
        'y_train': y_train,
        'y_test': y_test,
        'scaler': scaler,
        'feature_names': X.columns.tolist()
    }

# Test the pipeline
if __name__ == "__main__":
    from data_loader import load_data
    
    # Update with your label column
    LABEL_COLUMN = 'loss_rwf'  # or 'credit_score'
    
    data = load_data('../data/sample_data.csv')
    preprocessed = preprocess_pipeline(data, LABEL_COLUMN)
    
    print("📊 Preprocessed Data Shapes:")
    print(f"   X_train: {preprocessed['X_train'].shape}")
    print(f"   X_test: {preprocessed['X_test'].shape}")
```

**Action:**
1. Update `LABEL_COLUMN` for your project
2. Run: `python src/preprocessor.py`
3. Verify all steps complete successfully

---

### Task 4: Set Up Model Structure (1 hour)

**File:** `src/model.py`

```python
from sklearn.linear_model import LinearRegression
from sklearn.metrics import mean_squared_error, r2_score, mean_absolute_error
import numpy as np

class PredictionModel:
    """
    Wrapper class for Linear Regression model.
    """
    
    def __init__(self):
        self.model = LinearRegression()
        self.is_trained = False
    
    def train(self, X_train, y_train):
        """
        Train the Linear Regression model.
        
        Args:
            X_train: Training features
            y_train: Training labels
        """
        print("🚀 Training model...")
        self.model.fit(X_train, y_train)
        self.is_trained = True
        print("✅ Model trained successfully")
        
        # Display model coefficients
        print(f"\n📊 Model Coefficients: {self.model.coef_}")
        print(f"📊 Model Intercept: {self.model.intercept_}")
    
    def predict(self, X):
        """
        Make predictions.
        
        Args:
            X: Features to predict
        
        Returns:
            array: Predictions
        """
        if not self.is_trained:
            raise ValueError("Model must be trained before prediction")
        
        return self.model.predict(X)
    
    def evaluate(self, X_test, y_test):
        """
        Evaluate model performance.
        
        Args:
            X_test: Testing features
            y_test: True labels
        
        Returns:
            dict: Evaluation metrics
        """
        if not self.is_trained:
            raise ValueError("Model must be trained before evaluation")
        
        y_pred = self.predict(X_test)
        
        mse = mean_squared_error(y_test, y_pred)
        rmse = np.sqrt(mse)
        mae = mean_absolute_error(y_test, y_pred)
        r2 = r2_score(y_test, y_pred)
        
        metrics = {
            'mse': mse,
            'rmse': rmse,
            'mae': mae,
            'r2': r2
        }
        
        print("\n📈 Model Evaluation:")
        print(f"   Mean Squared Error (MSE): {mse:.2f}")
        print(f"   Root Mean Squared Error (RMSE): {rmse:.2f}")
        print(f"   Mean Absolute Error (MAE): {mae:.2f}")
        print(f"   R² Score: {r2:.4f}")
        
        return metrics

# Test the model
if __name__ == "__main__":
    from data_loader import load_data
    from preprocessor import preprocess_pipeline
    
    # Update with your label column
    LABEL_COLUMN = 'loss_rwf'  # or 'credit_score'
    
    # Load and preprocess data
    data = load_data('../data/sample_data.csv')
    preprocessed = preprocess_pipeline(data, LABEL_COLUMN)
    
    # Train model
    model = PredictionModel()
    model.train(preprocessed['X_train'], preprocessed['y_train'])
    
    # Evaluate model
    metrics = model.evaluate(preprocessed['X_test'], preprocessed['y_test'])
```

**Action:**
1. Update `LABEL_COLUMN`
2. Run: `python src/model.py`
3. Note your R² score (should be > 0.5 for decent performance)

---

### Task 5: Create Integration Test (30 minutes)

**File:** `tests/test_pipeline.py`

```python
"""
Integration test: CSV → Preprocessing → Model → Prediction
"""

from src.data_loader import load_data
from src.preprocessor import preprocess_pipeline
from src.model import PredictionModel
import numpy as np

def test_full_pipeline():
    """Test the complete pipeline."""
    
    print("=" * 50)
    print("🧪 RUNNING INTEGRATION TEST")
    print("=" * 50)
    
    # Update these
    DATA_PATH = 'data/sample_data.csv'
    LABEL_COLUMN = 'loss_rwf'  # or 'credit_score'
    
    try:
        # Step 1: Load data
        print("\n[1/4] Loading data...")
        data = load_data(DATA_PATH)
        
        # Step 2: Preprocess
        print("\n[2/4] Preprocessing...")
        preprocessed = preprocess_pipeline(data, LABEL_COLUMN)
        
        # Step 3: Train model
        print("\n[3/4] Training model...")
        model = PredictionModel()
        model.train(preprocessed['X_train'], preprocessed['y_train'])
        
        # Step 4: Make a test prediction
        print("\n[4/4] Making test prediction...")
        sample = preprocessed['X_test'][0:1]  # Take first test sample
        prediction = model.predict(sample)
        print(f"   Sample prediction: {prediction[0]:.2f}")
        
        # Evaluate
        print("\n📊 Final Evaluation:")
        metrics = model.evaluate(preprocessed['X_test'], preprocessed['y_test'])
        
        print("\n" + "=" * 50)
        print("✅ ALL TESTS PASSED!")
        print("=" * 50)
        
        return True
        
    except Exception as e:
        print(f"\n❌ TEST FAILED: {e}")
        return False

if __name__ == "__main__":
    test_full_pipeline()
```

**Action:**
1. Update `DATA_PATH` and `LABEL_COLUMN`
2. Run: `python tests/test_pipeline.py`
3. All steps should pass ✅

---

## ✅ End of Day Checklist

- [ ] I have generated 50+ rows of simulated data
- [ ] My `data_loader.py` loads and validates data correctly
- [ ] My `preprocessor.py` handles missing values and splits data
- [ ] My `model.py` trains and evaluates successfully
- [ ] My integration test passes end-to-end
- [ ] I understand what each function does

---

## 📝 Reflection Questions

1. What was the most confusing part of preprocessing?
2. What does your R² score tell you about your model?
3. What would improve your model's performance?

---

## 🐛 Common Errors & Solutions

| Error | Solution |
|-------|----------|
| `FileNotFoundError` | Check your file path relative to where you run the script |
| `KeyError: 'column_name'` | Verify your column names match exactly (case-sensitive) |
| `ValueError: could not convert string to float` | Check for non-numeric data in numeric columns |
| `ModuleNotFoundError: No module named 'sklearn'` | Install: `pip install scikit-learn pandas numpy` |

---

**Tomorrow:** You will complete core implementation and improve your model!
