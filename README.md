<div align="center">
  <h1>Path as a comment (PowerShell Script)</h1>
  <a href="https://github.com/CarlosUlisesOchoa/Path-as-a-comment-PowerShell"><img src="https://img.shields.io/badge/latest%20release-v1.0.0-blue" /></a>
  <a href="https://github.com/CarlosUlisesOchoa/Path-as-a-comment-PowerShell"><img src="https://img.shields.io/badge/coverage-100%25-brightgreen" /></a>
  <a href="https://github.com/CarlosUlisesOchoa/Path-as-a-comment-PowerShell"><img src="https://img.shields.io/tokei/lines/github/carlosulisesochoa/Path-as-a-comment-PowerShell" /></a>
  <a href="https://github.com/CarlosUlisesOchoa/Path-as-a-comment-PowerShell"><img src="https://img.shields.io/badge/PRs-welcome-brightgreen" /></a>
  <a href="https://github.com/CarlosUlisesOchoa/Path-as-a-comment-PowerShell/blob/main/LICENSE"><img src="https://img.shields.io/badge/license-MIT-blue" /></a>
</div>

<br/>

This script automatically inserts the file path as a comment at the top of each compatible file. This helps developers quickly identify the location of a file while preventing any malfunctions (because the path is added as a comment)

<br/>

## Table of Contents

- [System Requirements](#system-requirements)
- [Usage](#usage)
- [Supported file extensions](#supported-file-extensions)
- [License](#license)
- [About developer](#about-developer)

<br/>

## System Requirements

- Windows OS (tested on Windows 10 and 11)
- PowerShell 5.1 or later

<br/>

## Usage

1. [Download](https://raw.githubusercontent.com/CarlosUlisesOchoa/Path-as-a-comment-PowerShell/main/add-path.ps1) the `add-path.ps1` script.
2. Save the script to a directory on your computer.
3. Open PowerShell and navigate to the directory where the script is saved.
4. Run the script with the `-d` parameter and specify the directory

<br/>

Example:

<br/>

PowerShell:
```PowerShell
.\add-path.ps1 -d "C:\your_directory"
```

<br />

## Supported file extensions

The script supports the following file extensions. It adds their corresponding comment syntax:

- *.js
- *.jsx
- *.ts
- *.tsx
- *.sass
- *.less
- *.scss
- *.php
- *.java
- *.py
- *.rb
- *.css

For file extensions not included above, the script will not modify the file.

<br/>

## Example

Let's say we have a directory `C:\your_directory` with the following structure:

```
your_directory
│
└───js
│   │   script.js
│   │
│   └───lib
│           library.js
│   
└───css
        style.css
```

After running the script, the files will have their file paths inserted as comments:

`script.js`:

```javascript
// your_directory\js\script.js
... (rest of the file content)
```

`library.js`:

```javascript
// your_directory\js\lib\library.js
... (rest of the file content)
```

`style.css`:

```css
/* your_directory\css\style.css */
... (rest of the file content)
```

<br/>

## License

This project is released under the [MIT License](LICENSE).

<br/>

## About developer

Visit my web [Carlos Ochoa](https://carlos8a.com)

<br/>

---

**Note:** If you encounter any issues with the script, please report them [here](https://github.com/CarlosUlisesOchoa/Path-as-a-comment-PowerShell/issues). Contributions are welcome!
