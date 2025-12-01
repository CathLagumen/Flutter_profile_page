# Personal Profile Page

## Description
A Flutter-based mobile application showcasing my personal profile page, former Mechanical Engineer transitioning into Software Engineering. The app features a modern, interactive interface with multiple sections displaying personal information, skills, tools, hobbies, and contact details.

## Features
- **Profile Picture Display** - Circular avatar with professional photo
- **Personal Information Section** - Displays name, profession, zodiac sign, address, and educational background
- **About Me Section** - Brief biography highlighting career transition
- **Skills Showcase** - Interactive cards displaying programming skills (Java, MySQL, React) with basic proficiency level
- **Development Tools** - List of tools used including VS Code, IntelliJ, GitHub, and Figma
- **Hobbies Section** - Personal interests including Fishkeeping, Reading, and Travelling
- **Contact Details** - Email address and LinkedIn profile for professional connections
- **Bottom Navigation Menu** - Icon-based navigation bar for switching between Profile, Skills, Tools, Hobbies, and Contact sections
- **Interactive Elements** - Tap-to-navigate functionality with visual feedback (blue indicators on selected menu items)

## Screenshots
https://erniegh-my.sharepoint.com/:f:/g/personal/cathlene_ilagan_betterask_erni/IgD__3bfjNwnRqprWxRxl0uAAbeSn-FF79vD27xPrtdKucI?e=c6jp0U

## How to Run
1. Clone the repository
```bash
   git clone https://github.com/CathLagumen/flutter_profile_page.git
```
2. Navigate to the project directory
```bash
   cd flutter_profile_page
```
3. Install dependencies
```bash
   flutter pub get
```
4. Run the app
```bash
   flutter run
```

## Project Structure
```
lib/
├── main.dart          # Main application entry point
├── HomePage           # Landing page with profile overview
└── AboutMePage        # Detailed information page with 5-tab navigation
    ├── Profile        # Personal information and about me
    ├── Skills         # Programming skills showcase
    ├── Tools          # Development tools
    ├── Hobbies        # Personal interests
    └── Contact        # Contact information
```

## Technologies Used
- **Flutter** - UI framework
- **Dart** - Programming language
- **Material Design 3** - Design system

## Challenges Faced
- **State Management** - Managing the selected tab state across different sections required converting `AboutMePage` from StatelessWidget to StatefulWidget
- **Layout Design** - Creating a responsive layout that looks good on different screen sizes while maintaining consistent spacing and alignment
- **Navigation System** - Implementing a custom bottom navigation bar with visual indicators instead of using Flutter's built-in BottomNavigationBar for more design flexibility
- **Bottom Navigation Spacing** - Adjusting icon spacing to accommodate 5 menu items while maintaining visual balance and usability

## What I Learned
- How to structure a multi-page Flutter application with navigation
- State management using StatefulWidget and setState()
- Creating reusable widget components (buildInfoSection, buildSkillCard, buildToolCard, buildHobbyCard, buildContactCard)
- Implementing custom UI designs with Container, BoxDecoration, and shadows
- Using SingleChildScrollView for scrollable content sections
- Working with Material Design 3 theming and color schemes
- Git version control and repository management
- Managing multiple navigation tabs in a single screen

## Future Improvements
- Add animations and transitions between sections
- Implement dark mode theme
- Add clickable links for email (mailto:) and LinkedIn (URL launcher)
- Include project portfolio section
- Add more social media links (GitHub, Twitter, etc.)
- Make the app responsive for tablet and web platforms
- Implement contact form with validation
- Add loading animations and splash screen
- Remove "debug" logo on appbar

## Contact Information
**Email:** cathlene.ilagan@betterask.erni  
**LinkedIn:** [linkedin.com/in/cathlene-ilagan-ab3744195](https://www.linkedin.com/in/cathlene-ilagan-ab3744195/)

## Author
**Cathlene Ilagan**
- Location: Mandaluyong City
- Education: Bachelor of Science in Mechanical Engineering
- Current Role: Aspiring Software Engineer

## License
This project is open source and available under the MIT License.
