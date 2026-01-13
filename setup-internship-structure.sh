#!/bin/bash

# Script to set up the internship handbook directory structure
# Creates a 4-week program with 5 days per week (20 days total)

set -e  # Exit on error

echo "Setting up internship handbook directory structure..."

# Create the main directory (internship-handbook)
MAIN_DIR="internship-handbook"

# Check if we're already inside the internship-handbook directory
if [[ "$(basename "$PWD")" == "internship-handbook" ]]; then
    echo "Already inside internship-handbook directory. Creating week folders here..."
    MAIN_DIR="."
else
    mkdir -p "$MAIN_DIR"
    echo "Created main directory: $MAIN_DIR"
fi

# Create Week folders (Week-01 through Week-04)
for week in {1..4}; do
    week_folder=$(printf "%s/Week-%02d" "$MAIN_DIR" "$week")
    mkdir -p "$week_folder"
    echo "Created $week_folder"
    
    # Create Day folders for each week (5 days per week)
    # Week 1: Day 01-05, Week 2: Day 06-10, Week 3: Day 11-15, Week 4: Day 16-20
    for day_in_week in {1..5}; do
        # Calculate the overall day number
        day_number=$(( (week - 1) * 5 + day_in_week ))
        day_folder=$(printf "%s/Day-%02d" "$week_folder" "$day_number")
        mkdir -p "$day_folder"
        
        # Create README.md in each Day folder
        readme_file="$day_folder/README.md"
        
        # Special content for Day-01
        if [[ $day_number -eq 1 ]]; then
            cat > "$readme_file" << 'EOF'
# Day 01 - Welcome to the Internship Program

## Overview
Welcome to Day 1 of your 20-day high school remote internship program! Today marks the beginning of your journey into software engineering.

## Goals for Today
- Get familiar with the internship structure
- Set up your development environment
- Meet your team and mentors
- Understand the program expectations

## Schedule
- **9:00 AM - 10:00 AM**: Welcome & Orientation
- **10:00 AM - 11:00 AM**: Development Environment Setup
- **11:00 AM - 12:00 PM**: Introduction to Version Control (Git)
- **12:00 PM - 1:00 PM**: Lunch Break
- **1:00 PM - 2:30 PM**: Team Meeting & Ice Breakers
- **2:30 PM - 3:30 PM**: Overview of Week 1 Projects
- **3:30 PM - 4:00 PM**: Q&A and Wrap-up

## Resources
- [Git Documentation](https://git-scm.com/doc)
- [GitHub Guides](https://guides.github.com/)

## Homework
- Complete development environment setup
- Create your first GitHub repository
- Introduce yourself in the team Slack channel

## Notes
Please reach out to your mentor if you have any questions or need assistance!
EOF
        else
            # Generic template for other days
            cat > "$readme_file" << EOF
# Day $(printf "%02d" "$day_number") - Week $(printf "%02d" "$week")

## Overview
Welcome to Day $(printf "%02d" "$day_number") of your internship program.

## Goals for Today
- [To be filled in]

## Schedule
- [To be filled in]

## Resources
- [To be filled in]

## Homework
- [To be filled in]

## Notes
[Add any additional notes here]
EOF
        fi
        
        echo "Created $day_folder with README.md"
    done
done

echo ""
echo "✅ Internship handbook structure created successfully!"
echo ""
echo "Structure:"
echo "  internship-handbook/"
echo "  ├── Week-01/"
echo "  │   ├── Day-01/ (README.md)"
echo "  │   ├── Day-02/ (README.md)"
echo "  │   ├── Day-03/ (README.md)"
echo "  │   ├── Day-04/ (README.md)"
echo "  │   └── Day-05/ (README.md)"
echo "  ├── Week-02/"
echo "  │   ├── Day-06/ (README.md)"
echo "  │   ├── Day-07/ (README.md)"
echo "  │   ├── Day-08/ (README.md)"
echo "  │   ├── Day-09/ (README.md)"
echo "  │   └── Day-10/ (README.md)"
echo "  ├── Week-03/"
echo "  │   ├── Day-11/ (README.md)"
echo "  │   ├── Day-12/ (README.md)"
echo "  │   ├── Day-13/ (README.md)"
echo "  │   ├── Day-14/ (README.md)"
echo "  │   └── Day-15/ (README.md)"
echo "  └── Week-04/"
echo "      ├── Day-16/ (README.md)"
echo "      ├── Day-17/ (README.md)"
echo "      ├── Day-18/ (README.md)"
echo "      ├── Day-19/ (README.md)"
echo "      └── Day-20/ (README.md)"
echo ""
