# Day 07 - Mobile Development Fundamentals

## Overview
Welcome to Day 07! Today you'll dive into **mobile development**—one of the most in-demand skills in software engineering. With billions of smartphones worldwide, mobile apps are how most people interact with technology. You'll explore mobile development frameworks, understand the mobile app ecosystem, and see how mobile connects to machine learning.

---

## Goals for Today
- Understand mobile development landscape (native vs cross-platform)
- Learn about popular mobile frameworks (React Native, Flutter)
- Explore mobile UI/UX principles
- Understand mobile app architecture
- See how ML integrates with mobile applications
- Set up a basic mobile development environment

---

## Schedule

### 8:00 AM - 9:00 AM: Introduction to Mobile Development

**The Mobile Ecosystem**
- Native development: iOS (Swift) vs Android (Kotlin/Java)
- Cross-platform frameworks: React Native, Flutter, Ionic
- Progressive Web Apps (PWAs)
- When to choose each approach

**Mobile App Market in Africa:**
- M-Pesa and mobile money revolution
- Mobile-first internet users
- Opportunities for mobile developers in Rwanda

**Watch:**
- [Mobile App Development Overview](https://www.youtube.com/watch?v=VPvVD8t02U8) - 15 minutes

---

### 9:00 AM - 10:30 AM: React Native Fundamentals

**What is React Native?**
- Build mobile apps using JavaScript/React
- Write once, run on iOS and Android
- Used by Facebook, Instagram, Airbnb, Tesla

**Core Concepts:**
- Components and Props
- State management
- Styling in React Native
- Navigation between screens

**Watch:**
- [React Native Crash Course](https://www.youtube.com/watch?v=0-S5a0eXPoc) - First hour

---

### 10:30 AM - 11:00 AM: Flutter Introduction

**What is Flutter?**
- Google's UI toolkit for mobile, web, and desktop
- Uses Dart programming language
- Beautiful, fast, and productive
- Used by Alibaba, Google Ads, BMW

**Key Features:**
- Hot reload for instant updates
- Rich widget library
- High performance
- Single codebase for multiple platforms

**Watch:**
- [Flutter in 100 Seconds](https://www.youtube.com/watch?v=lHhRhPV--G0)
- [Flutter Tutorial for Beginners](https://www.youtube.com/watch?v=1ukSR1GRtMU) - First 30 minutes

---

### 11:00 AM - 11:15 AM: Break

---

### 11:15 AM - 1:00 PM: Mobile UI/UX Principles

**Mobile Design Considerations:**
- Screen sizes and responsive design
- Touch interactions vs mouse clicks
- Mobile navigation patterns (tabs, drawer, stack)
- Performance and battery considerations
- Offline functionality

**Platform Design Guidelines:**
- iOS Human Interface Guidelines
- Material Design (Android)
- Platform-specific patterns vs consistency

**Hands-On Exercise:**
Explore popular mobile apps and analyze:
1. Pick 3 apps on your phone
2. Identify navigation patterns
3. Note UI elements (buttons, lists, cards)
4. Screenshot interesting design patterns
5. Share observations in Discord

---

### 1:00 PM - 2:00 PM: Lunch Break

---

### 2:00 PM - 3:30 PM: Mobile + Machine Learning

**ML in Mobile Apps:**
1. **On-device ML**: TensorFlow Lite, Core ML
2. **Cloud ML APIs**: Recognition, translation, predictions
3. **Hybrid approaches**: Model on server, results on mobile

**Real-World Examples:**
- **Google Translate**: Camera translation (on-device ML)
- **Snapchat Filters**: Face detection and AR
- **Smart Keyboard**: Predictive text suggestions
- **Health Apps**: Activity recognition and calorie tracking
- **Agriculture Apps**: Plant disease detection via camera

**African Mobile ML Applications:**
- Crop disease detection apps
- Mobile-based credit scoring
- Healthcare diagnosis assistants
- Language translation for local dialects

**Research Activity:**
Find ONE mobile app that uses machine learning:
- What does it do?
- How does ML enhance the user experience?
- Is the ML on-device or cloud-based?
- Write a short summary and share

---

### 3:30 PM - 3:45 PM: Break

---

### 3:45 PM - 4:00 PM: Mobile Development Setup & Reflection

**Setup Options (Choose ONE for exploration):**

**Option 1: React Native Setup**
```bash
# Install Node.js (if not already installed)
# Install Expo CLI
npm install -g expo-cli

# Create a new project
npx create-expo-app my-first-app
cd my-first-app
npm start
```

**Option 2: Flutter Setup**
- Follow: [Flutter Installation Guide](https://docs.flutter.dev/get-started/install)
- Install Flutter SDK
- Set up an editor (VS Code)
- Run `flutter doctor` to verify setup

**Option 3: Browser-Based Exploration**
- Use [Expo Snack](https://snack.expo.dev/) for React Native
- Use [DartPad](https://dartpad.dev/) for Flutter/Dart
- No installation required!

**Reflection Questions:**
1. What excites you about mobile development?
2. Which framework (React Native vs Flutter) interests you more? Why?
3. How do you think mobile apps will evolve in the next 5 years?
4. What mobile app would you like to build someday?

---

## Key Concepts Learned Today

- **Native Development**: Building apps specifically for iOS or Android
- **Cross-Platform**: One codebase for multiple platforms (iOS + Android)
- **React Native**: JavaScript framework for mobile apps
- **Flutter**: Dart-based UI toolkit by Google
- **Mobile UI/UX**: Design principles for touch interfaces
- **On-Device ML**: Machine learning models running on phones
- **Responsive Design**: Adapting to different screen sizes

---

## Resources

### Video Tutorials
- [Mobile Development Overview](https://www.youtube.com/watch?v=VPvVD8t02U8)
- [React Native Crash Course](https://www.youtube.com/watch?v=0-S5a0eXPoc)
- [Flutter Tutorial](https://www.youtube.com/watch?v=1ukSR1GRtMU)
- [Mobile App Design](https://www.youtube.com/watch?v=3K6zqMbtbfc)

### Documentation
- [React Native Docs](https://reactnative.dev/docs/getting-started)
- [Flutter Docs](https://docs.flutter.dev/)
- [Material Design Guidelines](https://material.io/design)
- [iOS Human Interface Guidelines](https://developer.apple.com/design/human-interface-guidelines/)

### Interactive Learning
- [Expo Snack](https://snack.expo.dev/) - Try React Native in browser
- [DartPad](https://dartpad.dev/) - Try Flutter/Dart in browser
- [React Native Tutorial](https://reactnative.dev/docs/tutorial)

---

## Homework

### Required Tasks ✅

1. **Complete Video Tutorials** (2+ hours):
   - React Native Crash Course (first hour)
   - Flutter Tutorial (first 30 minutes)
   - Mobile UI/UX overview

2. **Framework Exploration**:
   - Try ONE framework in browser (Expo Snack or DartPad)
   - Create a simple "Hello World" app
   - Change text, colors, add a button
   - Take a screenshot and share in Discord

3. **Mobile + ML Research**:
   - Find a mobile app that uses ML
   - Write a 1-paragraph summary
   - Share in Discord #week2-mobile channel

4. **UI Analysis Exercise**:
   - Analyze 3 apps on your phone
   - Identify navigation patterns
   - Share interesting design observations

### Optional (Bonus) 💡
- Install React Native or Flutter on your computer (if you have space)
- Complete an interactive tutorial
- Explore TensorFlow Lite documentation
- Design a mockup for a mobile app idea

---

## Mobile App Ideas for Week 4 Project

Your Week 4 ML project will need a user interface. Consider these mobile-friendly ideas:
- **Farmer Loss Predictor**: Mobile form for input, predictions displayed
- **Credit Score Calculator**: Simple input fields, score visualization
- **Weather-based Recommendations**: Location-aware predictions

Think about how a mobile interface could make your ML project more accessible!

---

## Career Pathways

**Mobile Development Careers:**
- Mobile App Developer (iOS/Android)
- Cross-Platform Developer
- Mobile UI/UX Designer
- Mobile ML Engineer
- Mobile Product Manager

**Skills in Demand:**
- React Native / Flutter
- Mobile UI/UX design
- API integration
- Mobile performance optimization
- ML on mobile devices

---

## Discussion Questions

- Why is mobile-first important in Africa?
- Should you learn native or cross-platform development first?
- How does mobile development differ from web development?
- What are the ethical considerations for mobile apps?
- How can mobile apps bridge the digital divide?

---

## Looking Ahead

**Tomorrow (Day 08)**: We'll explore real Kigali Web Artisans machine learning projects and see how professional teams structure ML applications!

**Connection to Week 4**: Understanding mobile frameworks helps you decide how to build the user interface for your final ML project.

---

## Getting Help

- **Discord**: #week2-mobile channel
- **Mentors**: Available for framework questions
- **Peers**: Share setup challenges and solutions

**Remember**: You're exploring, not mastering. Get a feel for mobile development and see if it sparks your interest!

---

**Happy Mobile Exploring! 📱✨**
