# Ruby Programming Collection

A collection of Ruby programs demonstrating fundamental programming concepts, data structures, and practical applications. These programs were developed as part of CS 410W coursework and showcase various Ruby features including loops, conditionals, classes, and persistent data storage.

## Table of Contents

- [Programs Overview](#programs-overview)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Usage](#usage)
- [Program Descriptions](#program-descriptions)
- [Features Demonstrated](#features-demonstrated)
- [Author](#author)
- [License](#license)

## Programs Overview

This repository contains seven Ruby programs that demonstrate different programming concepts:

1. **hello.rb** - Basic "Hello World" program
2. **loops.rb** - Various loop constructs and string interpolation
3. **nameAndAge.rb** - User input and age calculation
4. **scoreAvg.rb** - Score averaging calculator
5. **mealPriceCal.rb** - Meal price and tip calculator
6. **powerBase.rb** - Power calculation program
7. **studentLog.rb** - Student management system with persistent storage

## Prerequisites

- Ruby 2.0 or higher
- Ruby Standard Library (included with Ruby installation)

## Installation

1. Ensure Ruby is installed on your system:
   ```bash
   ruby --version
   ```

2. Clone or download this repository to your local machine

3. Make the scripts executable (Unix/Linux/macOS):
   ```bash
   chmod +x *.rb
   ```

## Usage

Each program can be run independently from the command line:

```bash
ruby program_name.rb
```

Or if executable permissions are set:

```bash
./program_name.rb
```

## Program Descriptions

### hello.rb
A simple introduction program that prints "Hello World" to the console.

**Usage:**
```bash
ruby hello.rb
```

### loops.rb
Demonstrates various Ruby loop constructs including:
- `times` method
- `upto` and `downto` methods
- `step` method
- String interpolation techniques

**Usage:**
```bash
ruby loops.rb
```

### nameAndAge.rb
Interactive program that:
- Prompts user for name and age
- Calculates age in months
- Displays formatted output

**Usage:**
```bash
ruby nameAndAge.rb
```

### scoreAvg.rb
Score averaging calculator that:
- Accepts multiple test scores
- Calculates and displays average
- Formats output to one decimal place

**Usage:**
```bash
ruby scoreAvg.rb
```

**Example:**
```
How many scores? 3
Enter score #1: 85
Enter score #2: 92
Enter score #3: 78
Average is 85.0
```

### mealPriceCal.rb
Comprehensive tip calculator featuring:
- Meal price input validation
- Tip calculations (10%, 15%, 20%)
- Total cost calculations
- Continuous operation option
- Error handling for negative prices

**Usage:**
```bash
ruby mealPriceCal.rb
```

**Features:**
- Input validation
- Formatted currency output
- Loop continuation option

### powerBase.rb
Power calculation program that:
- Accepts a base number
- Calculates powers from 0 to the point where result exceeds 100,000
- Displays all calculations within the limit

**Usage:**
```bash
ruby powerBase.rb
```

**Example:**
```
What is the base? 2
2 to the power 0 is 1
2 to the power 1 is 2
2 to the power 2 is 4
...
2 to the power 16 is 65536
```

### studentLog.rb
Advanced student management system featuring:
- Object-oriented design with Student class
- Persistent data storage using PStore
- Full CRUD operations (Create, Read, Update, Delete)
- Interactive menu system
- Data validation

**Usage:**
```bash
ruby studentLog.rb
```

**Features:**
- Add new students
- List all students
- Update student majors
- Delete students
- Persistent storage in "disneyFile"

**Menu Options:**
1. List all students
2. Add a new student
3. Update a student's major
4. Delete a student
5. Exit

## Features Demonstrated

### Basic Ruby Concepts
- Variables and data types
- User input with `gets`
- String manipulation and interpolation
- Numeric operations and formatting

### Control Structures
- Conditional statements (`if/else/elsif`)
- Various loop constructs (`while`, `times`, `upto`, `downto`, `step`)
- Input validation and error handling

### Object-Oriented Programming
- Class definition and instantiation
- Instance variables and methods
- Accessor methods (`attr_accessor`)
- Method parameters and return values

### Advanced Features
- Persistent data storage with PStore
- File I/O operations
- Array manipulation
- String formatting and validation

### Programming Best Practices
- Code documentation and comments
- Input validation
- Error handling
- User-friendly interfaces
- Modular design

## File Structure

```
.
├── README.md
├── hello.rb              # Basic hello world
├── loops.rb              # Loop demonstrations
├── nameAndAge.rb          # Age calculator
├── scoreAvg.rb           # Score averaging
├── mealPriceCal.rb       # Tip calculator
├── powerBase.rb          # Power calculations
├── studentLog.rb         # Student management system
└── disneyFile            # Persistent storage file (created by studentLog.rb)
```

## Author

**Kethan Pilla**  
CS 410W - Programming Languages  
Date: March 2025

## Contributing

This is an educational project. If you find any issues or have suggestions for improvements, please feel free to create an issue or submit a pull request.

## License

This project is created for educational purposes. Feel free to use and modify the code for learning and teaching purposes.

---

*Note: Some programs create persistent data files (like `disneyFile` from studentLog.rb). These files will be created in the same directory as the scripts when first run.*
