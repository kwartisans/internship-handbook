# Day 15: Week 3 Mini-Project - Personal Portfolio Website

## 🎯 Today's Objective
Build your **Personal Portfolio Website** - a professional showcase of your skills, projects, and journey. This will serve as your digital presence and demonstrate everything you've learned this week. By day's end, your portfolio will be live on GitHub Pages!

**This is your capstone project for Week 3!**

---

## 📚 Pre-Work (Optional Review)

**Quick Refreshers:**
1. **Portfolio Website Examples** - [Traversy Media](https://www.youtube.com/watch?v=dgcYOm8n8ME) (20 minutes)
2. **GitHub Pages Deployment** - [GitHub](https://www.youtube.com/watch?v=2MsN8gpT6jY) (10 minutes)
3. **Responsive Design Tips** - [Kevin Powell](https://www.youtube.com/watch?v=bn-DQCifeQQ) (15 minutes)

---

## 🗓️ Daily Schedule (8 Hours)

### **8:00 AM - 9:00 AM**: Planning & Design
- Sketch your portfolio layout
- Choose color scheme
- Plan sections and content
- Set up project structure

### **9:00 AM - 11:00 AM**: Build HTML Structure
- Create semantic HTML
- Set up all sections
- Add content (bio, projects, skills)
- Ensure accessibility

### **11:00 AM - 11:15 AM**: Break ☕

### **11:15 AM - 1:00 PM**: Style with CSS
- Design responsive layout
- Add animations and effects
- Make it mobile-friendly
- Polish visual design

### **1:00 PM - 2:00 PM**: Lunch Break 🍽️

### **2:00 PM - 3:30 PM**: Add JavaScript Interactivity
- Smooth scrolling navigation
- Interactive elements
- Form validation
- Dynamic content

### **3:30 PM - 3:45 PM**: Break ☕

### **3:45 PM - 4:00 PM**: Deploy & Share
- Deploy to GitHub Pages
- Test on multiple devices
- Share with community
- Celebrate your achievement!

---

## 🎨 Project Requirements

### Must-Have Sections:

1. **Hero/Landing Section**
   - Your name and title
   - Brief tagline or elevator pitch
   - Call-to-action button
   - Eye-catching design

2. **About Me**
   - Professional photo or avatar
   - Your story and background
   - What drives you
   - Your goals

3. **Skills**
   - Technical skills (HTML, CSS, JavaScript, Git)
   - Tools you've learned
   - Visual representation (icons, progress bars)

4. **Projects**
   - At least 3 projects from this week
   - Screenshots or demos
   - Brief descriptions
   - Links to live demos and code

5. **Contact**
   - Contact form or email
   - Social media links (GitHub, LinkedIn)
   - Discord username
   - Professional email

6. **Footer**
   - Copyright notice
   - Quick links
   - Additional info

### Technical Requirements:
- ✅ Fully responsive (mobile, tablet, desktop)
- ✅ Semantic HTML5
- ✅ Modern CSS (Flexbox/Grid)
- ✅ JavaScript interactivity
- ✅ Fast loading (< 3 seconds)
- ✅ Accessible (proper alt text, ARIA labels)
- ✅ Works on all modern browsers
- ✅ Deployed and live

---

## 💻 Starter Template

### Project Structure:
```
portfolio/
├── index.html
├── css/
│   ├── style.css
│   └── responsive.css
├── js/
│   └── script.js
├── images/
│   ├── profile.jpg
│   ├── project1.png
│   ├── project2.png
│   └── project3.png
├── projects/
│   └── [Links to your Week 3 projects]
└── README.md
```

### HTML Structure:

```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Portfolio of [Your Name] - Software Engineering Intern">
    <title>[Your Name] - Portfolio</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/responsive.css">
</head>
<body>
    <!-- Navigation -->
    <nav class="navbar" id="navbar">
        <div class="container">
            <div class="logo">Your Name</div>
            <ul class="nav-menu">
                <li><a href="#home">Home</a></li>
                <li><a href="#about">About</a></li>
                <li><a href="#skills">Skills</a></li>
                <li><a href="#projects">Projects</a></li>
                <li><a href="#contact">Contact</a></li>
            </ul>
            <div class="hamburger">
                <span></span>
                <span></span>
                <span></span>
            </div>
        </div>
    </nav>

    <!-- Hero Section -->
    <section id="home" class="hero">
        <div class="container">
            <div class="hero-content">
                <h1>Hi, I'm <span class="highlight">Your Name</span></h1>
                <h2>Software Engineering Intern</h2>
                <p>Building the future, one line of code at a time.</p>
                <div class="cta-buttons">
                    <a href="#projects" class="btn btn-primary">View My Work</a>
                    <a href="#contact" class="btn btn-secondary">Get In Touch</a>
                </div>
            </div>
        </div>
    </section>

    <!-- About Section -->
    <section id="about" class="about">
        <div class="container">
            <h2 class="section-title">About Me</h2>
            <div class="about-content">
                <div class="about-image">
                    <img src="images/profile.jpg" alt="Your Name">
                </div>
                <div class="about-text">
                    <p>I'm a passionate software engineering intern with a love for creating innovative web solutions.</p>
                    <p>Currently learning HTML, CSS, JavaScript, and machine learning fundamentals through an intensive internship program.</p>
                    <p>I enjoy solving complex problems and building user-friendly applications that make a difference.</p>
                </div>
            </div>
        </div>
    </section>

    <!-- Skills Section -->
    <section id="skills" class="skills">
        <div class="container">
            <h2 class="section-title">My Skills</h2>
            <div class="skills-grid">
                <div class="skill-card">
                    <div class="skill-icon">🌐</div>
                    <h3>HTML5</h3>
                    <p>Semantic markup and accessibility</p>
                </div>
                <div class="skill-card">
                    <div class="skill-icon">🎨</div>
                    <h3>CSS3</h3>
                    <p>Responsive design and animations</p>
                </div>
                <div class="skill-card">
                    <div class="skill-icon">⚡</div>
                    <h3>JavaScript</h3>
                    <p>DOM manipulation and interactivity</p>
                </div>
                <div class="skill-card">
                    <div class="skill-icon">🔧</div>
                    <h3>Git & GitHub</h3>
                    <p>Version control and collaboration</p>
                </div>
                <div class="skill-card">
                    <div class="skill-icon">🤖</div>
                    <h3>Machine Learning</h3>
                    <p>Python and ML fundamentals</p>
                </div>
                <div class="skill-card">
                    <div class="skill-icon">💡</div>
                    <h3>Problem Solving</h3>
                    <p>Logical thinking and debugging</p>
                </div>
            </div>
        </div>
    </section>

    <!-- Projects Section -->
    <section id="projects" class="projects">
        <div class="container">
            <h2 class="section-title">My Projects</h2>
            <div class="projects-grid">
                <div class="project-card">
                    <div class="project-image">
                        <img src="images/project1.png" alt="Project 1">
                    </div>
                    <div class="project-info">
                        <h3>Color Palette Generator</h3>
                        <p>A web app that generates beautiful color palettes with one click. Built with vanilla JavaScript.</p>
                        <div class="project-tags">
                            <span>HTML</span>
                            <span>CSS</span>
                            <span>JavaScript</span>
                        </div>
                        <div class="project-links">
                            <a href="#" class="btn-small">Live Demo</a>
                            <a href="#" class="btn-small">View Code</a>
                        </div>
                    </div>
                </div>

                <div class="project-card">
                    <div class="project-image">
                        <img src="images/project2.png" alt="Project 2">
                    </div>
                    <div class="project-info">
                        <h3>Interactive Calculator</h3>
                        <p>A fully functional calculator with keyboard support and beautiful UI design.</p>
                        <div class="project-tags">
                            <span>HTML</span>
                            <span>CSS</span>
                            <span>JavaScript</span>
                        </div>
                        <div class="project-links">
                            <a href="#" class="btn-small">Live Demo</a>
                            <a href="#" class="btn-small">View Code</a>
                        </div>
                    </div>
                </div>

                <div class="project-card">
                    <div class="project-image">
                        <img src="images/project3.png" alt="Project 3">
                    </div>
                    <div class="project-info">
                        <h3>To-Do List App</h3>
                        <p>A task management app with local storage, categories, and beautiful animations.</p>
                        <div class="project-tags">
                            <span>HTML</span>
                            <span>CSS</span>
                            <span>JavaScript</span>
                        </div>
                        <div class="project-links">
                            <a href="#" class="btn-small">Live Demo</a>
                            <a href="#" class="btn-small">View Code</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Contact Section -->
    <section id="contact" class="contact">
        <div class="container">
            <h2 class="section-title">Get In Touch</h2>
            <div class="contact-content">
                <div class="contact-info">
                    <h3>Let's Connect!</h3>
                    <p>I'm always open to discussing new projects, creative ideas, or opportunities.</p>
                    <div class="social-links">
                        <a href="https://github.com/yourusername" target="_blank">
                            <svg><!-- GitHub icon --></svg>
                            GitHub
                        </a>
                        <a href="https://linkedin.com/in/yourusername" target="_blank">
                            <svg><!-- LinkedIn icon --></svg>
                            LinkedIn
                        </a>
                        <a href="mailto:your.email@example.com">
                            <svg><!-- Email icon --></svg>
                            Email
                        </a>
                    </div>
                </div>
                <div class="contact-form">
                    <form id="contactForm">
                        <div class="form-group">
                            <input type="text" id="name" name="name" placeholder="Your Name" required>
                        </div>
                        <div class="form-group">
                            <input type="email" id="email" name="email" placeholder="Your Email" required>
                        </div>
                        <div class="form-group">
                            <textarea id="message" name="message" rows="5" placeholder="Your Message" required></textarea>
                        </div>
                        <button type="submit" class="btn btn-primary">Send Message</button>
                    </form>
                </div>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer class="footer">
        <div class="container">
            <p>&copy; 2026 Your Name. Built with ❤️ during my internship.</p>
            <p>Made with HTML, CSS, and JavaScript</p>
        </div>
    </footer>

    <script src="js/script.js"></script>
</body>
</html>
```

---

## 🎨 CSS Starter (style.css)

See the starter-code folder for complete CSS templates including:
- Modern color schemes
- Smooth animations
- Responsive layouts
- Flexbox/Grid implementations
- Custom scrollbar
- Hover effects

---

## ⚡ JavaScript Features (script.js)

```javascript
// Smooth scrolling for navigation links
document.querySelectorAll('a[href^="#"]').forEach(anchor => {
    anchor.addEventListener('click', function (e) {
        e.preventDefault();
        const target = document.querySelector(this.getAttribute('href'));
        if (target) {
            target.scrollIntoView({ behavior: 'smooth' });
        }
    });
});

// Navbar background on scroll
window.addEventListener('scroll', () => {
    const navbar = document.getElementById('navbar');
    if (window.scrollY > 100) {
        navbar.classList.add('scrolled');
    } else {
        navbar.classList.remove('scrolled');
    }
});

// Mobile menu toggle
const hamburger = document.querySelector('.hamburger');
const navMenu = document.querySelector('.nav-menu');

hamburger.addEventListener('click', () => {
    hamburger.classList.toggle('active');
    navMenu.classList.toggle('active');
});

// Close menu when link is clicked
document.querySelectorAll('.nav-menu a').forEach(link => {
    link.addEventListener('click', () => {
        hamburger.classList.remove('active');
        navMenu.classList.remove('active');
    });
});

// Contact form handling
document.getElementById('contactForm').addEventListener('submit', function(e) {
    e.preventDefault();
    
    const name = document.getElementById('name').value;
    const email = document.getElementById('email').value;
    const message = document.getElementById('message').value;
    
    // In a real application, you would send this to a backend
    console.log('Form submitted:', { name, email, message });
    
    alert('Thank you for your message! I will get back to you soon.');
    this.reset();
});

// Animate elements on scroll
const observerOptions = {
    threshold: 0.1
};

const observer = new IntersectionObserver((entries) => {
    entries.forEach(entry => {
        if (entry.isIntersecting) {
            entry.target.classList.add('animate');
        }
    });
}, observerOptions);

document.querySelectorAll('.skill-card, .project-card').forEach(el => {
    observer.observe(el);
});
```

---

## 🚀 Deployment to GitHub Pages

### Step 1: Prepare Your Repository
```bash
# Navigate to your portfolio folder
cd portfolio

# Initialize Git (if not already done)
git init

# Add all files
git add .

# Commit
git commit -m "Initial commit: Personal portfolio website"
```

### Step 2: Create GitHub Repository
1. Go to GitHub.com
2. Click "New Repository"
3. Name it: `your-username.github.io`
4. Don't initialize with README
5. Create repository

### Step 3: Push Your Code
```bash
# Add remote
git remote add origin https://github.com/your-username/your-username.github.io.git

# Push to GitHub
git push -u origin main
```

### Step 4: Enable GitHub Pages
1. Go to repository Settings
2. Navigate to "Pages" section
3. Source: Select "main" branch
4. Click "Save"
5. Wait 1-2 minutes

Your site will be live at: `https://your-username.github.io`

---

## 🏆 Daily Challenge Additions

**Make Your Portfolio Stand Out:**

1. **Add a typing animation** for your hero section
2. **Include a dark mode toggle**
3. **Add a project filter** (by technology/category)
4. **Create a blog section** (optional)
5. **Add testimonials** from peers or mentors
6. **Include download CV button**
7. **Add Google Analytics** to track visitors
8. **Implement a contact form backend** (FormSpree, EmailJS)

---

## ✅ End of Day Checklist

- [ ] Planned and designed portfolio layout
- [ ] Built complete HTML structure
- [ ] Styled with responsive CSS
- [ ] Added JavaScript interactivity
- [ ] Included at least 3 projects
- [ ] Tested on mobile, tablet, and desktop
- [ ] Optimized images and performance
- [ ] Deployed to GitHub Pages
- [ ] Shared on Discord
- [ ] Documented your code
- [ ] Wrote reflection in README

---

## 📝 Reflection Questions

1. What part of your portfolio are you most proud of?
2. What was the most challenging aspect of building it?
3. How does your portfolio represent you as a developer?
4. What would you add or improve given more time?
5. How will you maintain and update your portfolio?

---

## 🌟 Portfolio Showcase

Once you're done:
1. **Share on Discord** - Get feedback from peers
2. **Add to LinkedIn** - Update your profile with the link
3. **Include in CV** - Show employers your work
4. **Tweet about it** - Use #100DaysOfCode #DevCommunity
5. **Keep updating** - Add new projects as you build them

---

## 📚 Additional Resources

**Inspiration:**
- [One Page Love](https://onepagelove.com/) - Portfolio examples
- [Awwwards](https://www.awwwards.com/) - Web design inspiration
- [Dribbble](https://dribbble.com/) - Design ideas

**Tools:**
- [Unsplash](https://unsplash.com/) - Free images
- [Flaticon](https://www.flaticon.com/) - Free icons
- [Google Fonts](https://fonts.google.com/) - Web fonts
- [Coolors](https://coolors.co/) - Color palette generator

**Performance:**
- [PageSpeed Insights](https://pagespeed.web.dev/) - Test site speed
- [GTmetrix](https://gtmetrix.com/) - Performance analysis
- [TinyPNG](https://tinypng.com/) - Image optimization

---

## 🎓 Week 3 Completion

**Congratulations!** You've completed Week 3! 🎉

### What You've Achieved:
- ✅ Mastered HTML & CSS fundamentals
- ✅ Learned JavaScript and DOM manipulation
- ✅ Experienced vibe coding and creative development
- ✅ Mastered Git workflows and collaboration
- ✅ Built and deployed your professional portfolio

### Skills Gained:
- Front-end development
- Responsive design
- JavaScript programming
- Version control with Git
- Project deployment
- Creative problem-solving

### What's Next:
**Week 4** begins on Monday with your **Final Machine Learning Project**. Your web development skills will be crucial for building the user interface of your ML application.

Take this weekend to:
- Review Week 3 concepts
- Plan your Week 4 project
- Choose between the two project options
- Rest and recharge

---

**You've Done Amazing Work!** 🌟

Your portfolio is now live and showcases your journey. Keep building, keep learning, and get ready for the exciting final week ahead!

**Remember:** Your portfolio is a living document. Update it regularly with new projects, skills, and experiences. This is your digital presence—make it shine!
