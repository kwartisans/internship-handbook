# Day 12: JavaScript Basics & DOM Manipulation

## 🎯 Today's Objective
Learn JavaScript fundamentals and bring your web pages to life with interactivity. By the end of today, you will be able to manipulate HTML elements, handle user events, and create dynamic web experiences.

---

## 📚 Pre-Work (Watch Before Starting)

**Required Videos** (Watch in order):
1. **JavaScript Tutorial for Beginners** - [Programming with Mosh](https://www.youtube.com/watch?v=W6NZfCO5SIk) (1 hour)
2. **JavaScript DOM Manipulation** - [Traversy Media](https://www.youtube.com/watch?v=0ik6X4DJKCc) (45 minutes)
3. **JavaScript Event Listeners** - [Web Dev Simplified](https://www.youtube.com/watch?v=XF1_MlZ5l6M) (20 minutes)

**Take notes on:**
- What are variables, functions, and arrays?
- How do you select HTML elements with JavaScript?
- What are event listeners and how do they work?

---

## 🗓️ Daily Schedule (8 Hours)

### **8:00 AM - 9:00 AM**: Morning Review & Video Learning
- Review Day 11 concepts
- Watch JavaScript Tutorial for Beginners

### **9:00 AM - 11:00 AM**: JavaScript Fundamentals
- Complete JavaScript basics exercises
- Practice variables, functions, and control flow
- Work with arrays and objects

### **11:00 AM - 11:15 AM**: Break ☕

### **11:15 AM - 1:00 PM**: DOM Manipulation Practice
- Learn to select and modify HTML elements
- Change styles dynamically
- Create and remove elements

### **1:00 PM - 2:00 PM**: Lunch Break 🍽️

### **2:00 PM - 3:30 PM**: Event Handling & Interactivity
- Add click events
- Handle form submissions
- Create interactive components

### **3:30 PM - 3:45 PM**: Break ☕

### **3:45 PM - 4:00 PM**: Daily Project & Documentation
- Complete the interactive challenge
- Commit code to GitHub
- Write reflection notes

---

## 💻 Coding Tasks

### Task 1: JavaScript Fundamentals (1 hour)

Create a file called `basics.js` and practice these concepts:

```javascript
// ===== VARIABLES =====
// Declare variables using let and const
let name = "Your Name";
const age = 18;
let isStudent = true;

console.log("Name:", name);
console.log("Age:", age);
console.log("Is Student:", isStudent);

// ===== FUNCTIONS =====
// Function to greet a user
function greet(userName) {
    return `Hello, ${userName}! Welcome to JavaScript.`;
}

console.log(greet("Alice"));

// Arrow function (modern syntax)
const calculateArea = (width, height) => width * height;
console.log("Area:", calculateArea(10, 5));

// ===== ARRAYS =====
// Working with arrays
const skills = ["HTML", "CSS", "JavaScript"];

// Add a new skill
skills.push("React");

// Loop through skills
console.log("My Skills:");
skills.forEach((skill, index) => {
    console.log(`${index + 1}. ${skill}`);
});

// ===== OBJECTS =====
// Create an object
const person = {
    firstName: "John",
    lastName: "Doe",
    age: 20,
    skills: ["Python", "JavaScript", "Git"],
    getFullName: function() {
        return `${this.firstName} ${this.lastName}`;
    }
};

console.log("Full Name:", person.getFullName());
console.log("Skills:", person.skills);

// ===== CONDITIONALS =====
// If-else statements
const score = 85;

if (score >= 90) {
    console.log("Grade: A");
} else if (score >= 80) {
    console.log("Grade: B");
} else if (score >= 70) {
    console.log("Grade: C");
} else {
    console.log("Grade: F");
}

// ===== EXERCISES =====
// TODO: Complete these exercises

// Exercise 1: Write a function that checks if a number is even
function isEven(number) {
    // Your code here
}

// Exercise 2: Write a function that finds the maximum number in an array
function findMax(numbers) {
    // Your code here
}

// Exercise 3: Create an object representing a book with title, author, and pages
const book = {
    // Your code here
};

// Exercise 4: Write a function that filters even numbers from an array
function filterEvenNumbers(numbers) {
    // Your code here
}

// Test your functions
console.log("Is 4 even?", isEven(4));
console.log("Max of [1,5,3,9,2]:", findMax([1,5,3,9,2]));
console.log("Even numbers from [1,2,3,4,5,6]:", filterEvenNumbers([1,2,3,4,5,6]));
```

**Action Steps:**
1. Create `basics.js` in your Day-12 folder
2. Complete the TODO exercises
3. Run the file with Node.js: `node basics.js`
4. Check your console output

---

### Task 2: DOM Manipulation (1.5 hours)

Create an HTML file called `dom-practice.html`:

```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>DOM Manipulation Practice</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            max-width: 800px;
            margin: 50px auto;
            padding: 20px;
        }
        .highlight {
            background-color: yellow;
            padding: 5px;
        }
        .box {
            border: 2px solid #333;
            padding: 20px;
            margin: 10px 0;
            border-radius: 8px;
        }
        button {
            background: #667eea;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin: 5px;
        }
        button:hover {
            background: #764ba2;
        }
    </style>
</head>
<body>
    <h1 id="main-title">DOM Manipulation Practice</h1>
    
    <div class="box">
        <h2>Section 1: Text Manipulation</h2>
        <p id="demo-text">This is a sample paragraph.</p>
        <button onclick="changeText()">Change Text</button>
        <button onclick="toggleHighlight()">Toggle Highlight</button>
    </div>

    <div class="box">
        <h2>Section 2: Style Manipulation</h2>
        <div id="color-box" style="width: 200px; height: 200px; background: blue;"></div>
        <button onclick="changeColor()">Change Color</button>
    </div>

    <div class="box">
        <h2>Section 3: Creating Elements</h2>
        <ul id="item-list">
            <li>Item 1</li>
            <li>Item 2</li>
        </ul>
        <input type="text" id="new-item" placeholder="Enter new item">
        <button onclick="addItem()">Add Item</button>
    </div>

    <script src="dom-script.js"></script>
</body>
</html>
```

Create `dom-script.js`:

```javascript
// ===== SELECTING ELEMENTS =====
const mainTitle = document.getElementById('main-title');
const demoText = document.getElementById('demo-text');
const colorBox = document.getElementById('color-box');
const itemList = document.getElementById('item-list');
const newItemInput = document.getElementById('new-item');

console.log("Elements selected successfully!");

// ===== MANIPULATING TEXT =====
function changeText() {
    demoText.textContent = "The text has been changed!";
    demoText.style.color = "green";
}

function toggleHighlight() {
    demoText.classList.toggle('highlight');
}

// ===== MANIPULATING STYLES =====
const colors = ['red', 'green', 'blue', 'purple', 'orange', 'pink'];
let colorIndex = 0;

function changeColor() {
    colorIndex = (colorIndex + 1) % colors.length;
    colorBox.style.backgroundColor = colors[colorIndex];
}

// ===== CREATING AND ADDING ELEMENTS =====
function addItem() {
    const itemText = newItemInput.value;
    
    if (itemText.trim() === '') {
        alert('Please enter an item!');
        return;
    }
    
    // Create new list item
    const newLi = document.createElement('li');
    newLi.textContent = itemText;
    
    // Add click event to remove item
    newLi.addEventListener('click', function() {
        this.remove();
    });
    
    // Append to list
    itemList.appendChild(newLi);
    
    // Clear input
    newItemInput.value = '';
}

// Add enter key support for adding items
newItemInput.addEventListener('keypress', function(event) {
    if (event.key === 'Enter') {
        addItem();
    }
});

// ===== CHANGE TITLE ON HOVER =====
mainTitle.addEventListener('mouseenter', function() {
    this.style.color = '#667eea';
});

mainTitle.addEventListener('mouseleave', function() {
    this.style.color = 'black';
});

console.log("All event listeners attached!");
```

**Action Steps:**
1. Create both files in your Day-12 folder
2. Open `dom-practice.html` with Live Server
3. Test all buttons and interactions
4. Experiment with different DOM methods

---

### Task 3: Interactive Counter App (1 hour)

Build a counter application with increment, decrement, and reset functionality.

Create `counter.html`:

```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Counter App</title>
    <link rel="stylesheet" href="counter-styles.css">
</head>
<body>
    <div class="container">
        <h1>Counter App</h1>
        <div class="counter-display">
            <span id="counter-value">0</span>
        </div>
        <div class="button-group">
            <button id="decrease-btn" class="btn">Decrease</button>
            <button id="reset-btn" class="btn btn-reset">Reset</button>
            <button id="increase-btn" class="btn">Increase</button>
        </div>
    </div>
    <script src="counter-script.js"></script>
</body>
</html>
```

Create `counter-styles.css`:

```css
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
    min-height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;
}

.container {
    background: white;
    padding: 3rem;
    border-radius: 15px;
    box-shadow: 0 10px 30px rgba(0,0,0,0.2);
    text-align: center;
}

h1 {
    color: #333;
    margin-bottom: 2rem;
}

.counter-display {
    font-size: 5rem;
    font-weight: bold;
    margin: 2rem 0;
    color: #667eea;
}

.button-group {
    display: flex;
    gap: 1rem;
}

.btn {
    padding: 1rem 2rem;
    font-size: 1.1rem;
    border: none;
    border-radius: 8px;
    cursor: pointer;
    transition: all 0.3s;
    background: #667eea;
    color: white;
}

.btn:hover {
    transform: translateY(-2px);
    box-shadow: 0 5px 15px rgba(102, 126, 234, 0.4);
}

.btn:active {
    transform: translateY(0);
}

.btn-reset {
    background: #e74c3c;
}

.btn-reset:hover {
    box-shadow: 0 5px 15px rgba(231, 76, 60, 0.4);
}
```

Create `counter-script.js`:

```javascript
// Select elements
const counterValue = document.getElementById('counter-value');
const decreaseBtn = document.getElementById('decrease-btn');
const resetBtn = document.getElementById('reset-btn');
const increaseBtn = document.getElementById('increase-btn');

// Initialize counter
let count = 0;

// Function to update display
function updateDisplay() {
    counterValue.textContent = count;
    
    // Change color based on value
    if (count > 0) {
        counterValue.style.color = '#2ecc71'; // Green for positive
    } else if (count < 0) {
        counterValue.style.color = '#e74c3c'; // Red for negative
    } else {
        counterValue.style.color = '#667eea'; // Purple for zero
    }
}

// Event listeners
decreaseBtn.addEventListener('click', () => {
    count--;
    updateDisplay();
});

resetBtn.addEventListener('click', () => {
    count = 0;
    updateDisplay();
});

increaseBtn.addEventListener('click', () => {
    count++;
    updateDisplay();
});

// Keyboard shortcuts
document.addEventListener('keydown', (event) => {
    if (event.key === 'ArrowUp') {
        count++;
        updateDisplay();
    } else if (event.key === 'ArrowDown') {
        count--;
        updateDisplay();
    } else if (event.key === 'r' || event.key === 'R') {
        count = 0;
        updateDisplay();
    }
});

console.log('Counter app initialized!');
```

**Action Steps:**
1. Create all three files
2. Open `counter.html` with Live Server
3. Test all functionality
4. Try the keyboard shortcuts (Arrow keys and 'R')

---

## 🏆 Daily Challenge

**Build a To-Do List Application**

Requirements:
- Add new tasks with an input field
- Mark tasks as complete (strikethrough)
- Delete tasks
- Show total number of tasks
- Save to localStorage (bonus)

Features:
- Clean, modern UI
- Smooth animations
- Responsive design
- Keyboard support (Enter to add)

**Bonus Points:**
- Add categories or tags
- Add a search/filter feature
- Add task priority levels
- Persist data in browser localStorage

---

## ✅ End of Day Checklist

- [ ] Watched all required videos
- [ ] Completed JavaScript fundamentals exercises
- [ ] Built DOM manipulation practice page
- [ ] Created interactive counter app
- [ ] Completed the daily challenge (To-Do List)
- [ ] Tested all functionality
- [ ] Committed code to GitHub
- [ ] Documented learning in `NOTES.md`

---

## 📝 Reflection Questions

Answer these in your `NOTES.md` file:

1. What is the difference between `let`, `const`, and `var`?
2. How do you select an element by ID vs by class?
3. What is an event listener and how does it work?
4. What was the most challenging part of JavaScript today?
5. How does JavaScript make web pages interactive?

---

## 📚 Additional Resources

**Recommended Reading:**
- [MDN JavaScript Guide](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide)
- [JavaScript.info](https://javascript.info/)
- [DOM Manipulation](https://developer.mozilla.org/en-US/docs/Learn/JavaScript/Client-side_web_APIs/Manipulating_documents)

**Practice Platforms:**
- [JavaScript30](https://javascript30.com/) - 30 Day Vanilla JS Challenge
- [freeCodeCamp JavaScript](https://www.freecodecamp.org/learn/javascript-algorithms-and-data-structures/)
- [Codewars](https://www.codewars.com/) - JavaScript challenges

**YouTube Channels:**
- [Traversy Media](https://www.youtube.com/c/TraversyMedia)
- [Web Dev Simplified](https://www.youtube.com/c/WebDevSimplified)
- [The Net Ninja](https://www.youtube.com/c/TheNetNinja)

---

## 🆘 Common Issues & Solutions

**Issue 1: Script not loading**
- Solution: Make sure your `<script>` tag is at the end of `<body>` or use `defer` attribute
- Check file paths are correct

**Issue 2: Element is null**
- Solution: Ensure HTML elements exist before selecting them
- Check your element IDs match exactly

**Issue 3: Event not working**
- Solution: Verify event listener is attached correctly
- Check browser console for errors (F12)

---

**Tomorrow:** Introduction to Vibe Coding and building creative interactive projects! 🎨🚀

---

**Remember:** JavaScript is the language of the web. Every interactive website you've ever used relies on JavaScript. You're learning a superpower!
