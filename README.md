# UkaApp

App developed for Uka i Ås 

---

# 📥 Download & Run

Currently not available
Will be published at appstore
Will be realeased as a public git 


## ✅ Run the Game

```bash
  python src/main.py
```

# 🛠️ Development

## Clone the Repository

```bash
git clone git@github.com:kasper280403/UkaApp-iOS.git
cd /path/to/folder/UkaApp
```

## 📋 Ruleset 

Rules for collaborators working on the project:

1. Always create pull request before merging to main
2. Never accept your own pull request
3. Never push directly to main
4. Always create issue before branching
5. Always write commit-message  
Use imperative mood: “Add feature”, not “Added feature” or “Adding feature”.  
Keep the summary under 50 characters.  
Start with a capital letter, and omit the period at the end.
6. Write commit-message with the format: ```<type>: <short summary>```

```
Examples:
feat: add user login functionality
fix: correct null pointer in storage manager
docs: update README with setup instructions
refactor: simplify price calculation logic
test: add unit tests for event registration
```
7. Use following keywords:
```
feat: Adds a new feature
fix: Fixes a bug
refactor: Changes code without altering functionality
docs: Updates documentation
style: Changes code formatting only (e.g. spaces, commas, indentation)
test: Adds or updates tests
chore: Maintenance tasks (e.g. dependencies, build, CI configuration)

```



# 🧪 Run Tests

Run the tests with xCode from 
Products -> Test or CMD + U  


# 🧹 Code Style

## General
- Follow **Swift API Design Guidelines**.
- Use **camelCase** for variables and functions.
- Use **PascalCase** for types, classes, structs, and enums.
- Use **4 spaces** for indentation (no tabs).
- Keep lines **under 100 characters**.
- Always include **access control modifiers** (`public`, `private`, etc.) when relevant.

## Formatting
- Curly braces `{}` start on the **same line** as declarations.
- Add a blank line between methods for readability.
- Avoid trailing whitespace.
- Place one statement per line.
- Prefer explicit over implicit types when clarity improves.

## Naming
- Use descriptive, meaningful names.
- Boolean variables and functions should read naturally:
  - `isEnabled`, `hasAccess`, `shouldUpdate()`.
- Constants should be written in **camelCase** unless global.

## Comments
- Use `///` for documentation comments.
- Keep comments concise and up to date.
- Explain *why* something is done, not *what* it does.

## Files and Structure
- One type (class, struct, enum) per file.
- File name should match the main type.
- Group related code logically using `// MARK:` sections.

Example:
```swift
// MARK: - View Lifecycle
override func viewDidLoad() {
    super.viewDidLoad()
}
```

---

## 🧱 Project Structure
```
.
├── README.md
├── ukaAppen
│   ├── Assets.xcassets
│   │   ├── AccentColor.colorset
│   │   │   └── Contents.json
│   │   ├── AppIcon.appiconset
│   │   │   └── Contents.json
│   │   └── Contents.json
│   ├── ContentView.swift
│   ├── Item.swift
│   └── ukaAppenApp.swift
├── ukaAppen.xcodeproj
│   ├── project.pbxproj
│   ├── project.xcworkspace
│   │   ├── contents.xcworkspacedata
│   │   ├── xcshareddata
│   │   │   └── swiftpm
│   │   │       └── configuration
│   │   └── xcuserdata
│   │       └── kasperkarlsen.xcuserdatad
│   │           └── UserInterfaceState.xcuserstate
│   └── xcuserdata
│       └── kasperkarlsen.xcuserdatad
│           └── xcschemes
│               └── xcschememanagement.plist
├── ukaAppenTests
│   └── ukaAppenTests.swift
└── ukaAppenUITests
    ├── ukaAppenUITests.swift
    └── ukaAppenUITestsLaunchTests.swift
```

---
## 👤 Admin(s)

**Kasper S. Karlsen**  
[GitHub Profile](https://github.com/kasper280403)

---

### 👥 Collaborator(s)

**Marte Tangen** [GitHub Profile](https://github.com/kasper280403)

---

_Developed for Samfundet i Ås at Ås_