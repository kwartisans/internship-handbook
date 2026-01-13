// Portfolio JavaScript

// Smooth scrolling
document.querySelectorAll('a[href^="#"]').forEach(anchor => {
    anchor.addEventListener('click', function (e) {
        e.preventDefault();
        const target = document.querySelector(this.getAttribute('href'));
        if (target) {
            target.scrollIntoView({ behavior: 'smooth' });
        }
    });
});

// TODO: Add your JavaScript features here
// - Navbar background change on scroll
// - Mobile menu toggle
// - Form validation
// - Project card animations
// - Any other interactive features

console.log('Portfolio loaded successfully!');
