# Day 11: HTML & CSS Fundamentals

## 🎯 Today's Objective
Master the foundations of web development by learning HTML structure and CSS styling. By the end of today, you will build your first responsive web page from scratch.

---

## 📚 Pre-Work (Watch Before Starting)

**Required Videos** (Watch in order):
1. **HTML Crash Course** - [Traversy Media](https://www.youtube.com/watch?v=UB1O30fR-EE) (1 hour)
2. **CSS Crash Course** - [Traversy Media](https://www.youtube.com/watch?v=yfoY53QXEnI) (1.5 hours)
3. **Flexbox Tutorial** - [Web Dev Simplified](https://www.youtube.com/watch?v=fYq5PXgSsbE) (30 minutes)

**Take notes on:**
- What are semantic HTML tags?
- How does the CSS box model work?
- What is Flexbox and when should you use it?

---

## 🗓️ Daily Schedule (8 Hours)

### **8:00 AM - 9:00 AM**: Morning Setup & Video Review
- Set up your Day 11 workspace
- Watch HTML Crash Course video
- Set up your code editor with Live Server extension

### **9:00 AM - 11:00 AM**: HTML Fundamentals Practice
- Complete the HTML exercises below
- Build semantic HTML structures
- Practice proper nesting and indentation

### **11:00 AM - 11:15 AM**: Break ☕

### **11:15 AM - 1:00 PM**: CSS Fundamentals Practice
- Complete the CSS exercises below
- Style your HTML structures
- Experiment with colors, fonts, and layouts

### **1:00 PM - 2:00 PM**: Lunch Break 🍽️

### **2:00 PM - 3:30 PM**: Flexbox & Responsive Design
- Learn and practice Flexbox layouts
- Build a responsive navigation bar
- Create a card-based layout

### **3:30 PM - 3:45 PM**: Break ☕

### **3:45 PM - 4:00 PM**: Daily Project & Documentation
- Complete the daily challenge
- Commit your code to GitHub
- Write reflection notes

---

## 💻 Coding Tasks

### Task 1: Your First HTML Page (30 minutes)

Create a file called `index.html`:

```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My First Web Page</title>
</head>
<body>
    <header>
        <h1>Welcome to My Web Page</h1>
        <nav>
            <ul>
                <li><a href="#about">About</a></li>
                <li><a href="#skills">Skills</a></li>
                <li><a href="#contact">Contact</a></li>
            </ul>
        </nav>
    </header>

    <main>
        <section id="about">
            <h2>About Me</h2>
            <p>Write a brief introduction about yourself here.</p>
        </section>

        <section id="skills">
            <h2>My Skills</h2>
            <ul>
                <li>HTML</li>
                <li>CSS</li>
                <li>Git & GitHub</li>
            </ul>
        </section>

        <section id="contact">
            <h2>Contact Me</h2>
            <form>
                <label for="name">Name:</label>
                <input type="text" id="name" name="name" required>
                
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>
                
                <label for="message">Message:</label>
                <textarea id="message" name="message" rows="4" required></textarea>
                
                <button type="submit">Send Message</button>
            </form>
        </section>
    </main>

    <footer>
        <p>&copy; 2026 Your Name. All rights reserved.</p>
    </footer>
</body>
</html>
```

**Action Steps:**
1. Create `index.html` in your Day-11 folder
2. Replace "Your Name" with your actual name
3. Customize the content with your information
4. Open with Live Server to see your page

---

### Task 2: Style Your Page with CSS (1 hour)

Create a file called `styles.css`:

```css
/* Reset default styles */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

/* Body styling */
body {
    font-family: 'Arial', sans-serif;
    line-height: 1.6;
    color: #333;
    background-color: #f4f4f4;
}

/* Header styling */
header {
    background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
    color: white;
    padding: 2rem 0;
    text-align: center;
}

header h1 {
    margin-bottom: 1rem;
    font-size: 2.5rem;
}

/* Navigation styling */
nav ul {
    list-style: none;
    display: flex;
    justify-content: center;
    gap: 2rem;
}

nav a {
    color: white;
    text-decoration: none;
    font-weight: bold;
    transition: opacity 0.3s;
}

nav a:hover {
    opacity: 0.7;
}

/* Main content styling */
main {
    max-width: 1200px;
    margin: 2rem auto;
    padding: 0 1rem;
}

section {
    background: white;
    margin-bottom: 2rem;
    padding: 2rem;
    border-radius: 8px;
    box-shadow: 0 2px 5px rgba(0,0,0,0.1);
}

section h2 {
    color: #667eea;
    margin-bottom: 1rem;
    font-size: 2rem;
}

/* Skills list styling */
#skills ul {
    display: flex;
    flex-wrap: wrap;
    gap: 1rem;
    list-style: none;
}

#skills li {
    background: #667eea;
    color: white;
    padding: 0.5rem 1rem;
    border-radius: 20px;
}

/* Form styling */
form {
    display: flex;
    flex-direction: column;
    gap: 1rem;
}

label {
    font-weight: bold;
    color: #667eea;
}

input, textarea {
    padding: 0.5rem;
    border: 2px solid #ddd;
    border-radius: 4px;
    font-family: inherit;
}

input:focus, textarea:focus {
    outline: none;
    border-color: #667eea;
}

button {
    background: #667eea;
    color: white;
    padding: 1rem 2rem;
    border: none;
    border-radius: 4px;
    font-size: 1rem;
    cursor: pointer;
    transition: background 0.3s;
}

button:hover {
    background: #764ba2;
}

/* Footer styling */
footer {
    background: #333;
    color: white;
    text-align: center;
    padding: 1rem 0;
    margin-top: 2rem;
}

/* Responsive design */
@media (max-width: 768px) {
    header h1 {
        font-size: 2rem;
    }
    
    nav ul {
        flex-direction: column;
        gap: 0.5rem;
    }
    
    section {
        padding: 1rem;
    }
}
```

**Action Steps:**
1. Create `styles.css` in your Day-11 folder
2. Link it in your HTML: `<link rel="stylesheet" href="styles.css">` (in the `<head>` section)
3. Refresh your page to see the styling
4. Experiment with colors and spacing

---

### Task 3: Responsive Card Layout (1.5 hours)

Create a new file called `cards.html`:

```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Card Layout Practice</title>
    <link rel="stylesheet" href="cards.css">
</head>
<body>
    <div class="container">
        <h1>My Projects</h1>
        
        <div class="cards-grid">
            <div class="card">
                <div class="card-header">
                    <h3>Project 1</h3>
                </div>
                <div class="card-body">
                    <p>Description of your first project goes here.</p>
                </div>
                <div class="card-footer">
                    <a href="#" class="btn">View Project</a>
                </div>
            </div>

            <div class="card">
                <div class="card-header">
                    <h3>Project 2</h3>
                </div>
                <div class="card-body">
                    <p>Description of your second project goes here.</p>
                </div>
                <div class="card-footer">
                    <a href="#" class="btn">View Project</a>
                </div>
            </div>

            <div class="card">
                <div class="card-header">
                    <h3>Project 3</h3>
                </div>
                <div class="card-body">
                    <p>Description of your third project goes here.</p>
                </div>
                <div class="card-footer">
                    <a href="#" class="btn">View Project</a>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
```

Create `cards.css`:

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
    padding: 2rem;
}

.container {
    max-width: 1200px;
    margin: 0 auto;
}

.container h1 {
    color: white;
    text-align: center;
    margin-bottom: 2rem;
    font-size: 3rem;
}

.cards-grid {
    display: flex;
    flex-wrap: wrap;
    gap: 2rem;
    justify-content: center;
}

.card {
    background: white;
    border-radius: 12px;
    overflow: hidden;
    box-shadow: 0 4px 6px rgba(0,0,0,0.1);
    width: 300px;
    transition: transform 0.3s, box-shadow 0.3s;
}

.card:hover {
    transform: translateY(-10px);
    box-shadow: 0 8px 12px rgba(0,0,0,0.2);
}

.card-header {
    background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
    color: white;
    padding: 1.5rem;
}

.card-header h3 {
    font-size: 1.5rem;
}

.card-body {
    padding: 1.5rem;
}

.card-body p {
    color: #666;
    line-height: 1.6;
}

.card-footer {
    padding: 1.5rem;
    text-align: center;
}

.btn {
    display: inline-block;
    background: #667eea;
    color: white;
    padding: 0.75rem 2rem;
    border-radius: 25px;
    text-decoration: none;
    transition: background 0.3s;
}

.btn:hover {
    background: #764ba2;
}

/* Responsive design */
@media (max-width: 768px) {
    .container h1 {
        font-size: 2rem;
    }
    
    .card {
        width: 100%;
    }
}
```

**Action Steps:**
1. Create both files in your Day-11 folder
2. Open `cards.html` with Live Server
3. Try adding more cards
4. Change colors and styles to make it your own

---

## 🏆 Daily Challenge

**Build a Personal Profile Card**

Create a single card that includes:
- Your profile photo (or placeholder)
- Your name and title (e.g., "Software Engineering Intern")
- A brief bio (2-3 sentences)
- Social media icons/links (GitHub, LinkedIn, etc.)
- A "Download CV" button

Requirements:
- Use semantic HTML
- Style with CSS (no frameworks)
- Make it responsive
- Add hover effects
- Use Flexbox or Grid for layout

**Bonus Points:**
- Add subtle animations
- Include a dark mode toggle
- Make it accessible (proper alt text, semantic tags)

---

## ✅ End of Day Checklist

- [ ] Watched all required videos
- [ ] Created `index.html` with proper semantic structure
- [ ] Created and linked `styles.css`
- [ ] Built the responsive card layout
- [ ] Completed the daily challenge
- [ ] Committed all code to GitHub with meaningful commit messages
- [ ] Tested responsiveness on different screen sizes
- [ ] Documented what you learned in a `NOTES.md` file

---

## 📝 Reflection Questions

Answer these in your `NOTES.md` file:

1. What is the difference between `<div>` and `<section>`?
2. How does the CSS box model work?
3. What are the benefits of using Flexbox?
4. What was the most challenging part of today?
5. What would you like to improve on tomorrow?

---

## 📚 Additional Resources

**Recommended Reading:**
- [MDN HTML Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML)
- [MDN CSS Documentation](https://developer.mozilla.org/en-US/docs/Web/CSS)
- [CSS Tricks Flexbox Guide](https://css-tricks.com/snippets/css/a-guide-to-flexbox/)
- [HTML Semantic Elements](https://www.w3schools.com/html/html5_semantic_elements.asp)

**Practice Platforms:**
- [freeCodeCamp Responsive Web Design](https://www.freecodecamp.org/learn/responsive-web-design/)
- [Flexbox Froggy](https://flexboxfroggy.com/) - Learn Flexbox through a game
- [CSS Grid Garden](https://cssgridgarden.com/) - Learn CSS Grid through a game

---

## 🆘 Common Issues & Solutions

**Issue 1: CSS not loading**
- Solution: Check that your CSS file path is correct in the `<link>` tag
- Make sure both files are in the same folder

**Issue 2: Live Server not working**
- Solution: Install the "Live Server" extension in VS Code
- Right-click on your HTML file and select "Open with Live Server"

**Issue 3: Layout not responsive**
- Solution: Make sure you have the viewport meta tag in your HTML head
- Test on different screen sizes using browser dev tools (F12)

---

**Tomorrow:** We'll add interactivity with JavaScript! Get ready to make your web pages come alive! 🚀

---

**Remember:** It's okay to make mistakes. Every professional developer started exactly where you are now. Keep experimenting, stay curious, and don't hesitate to ask for help!
