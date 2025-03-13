# Assembly print number :

Project by  __ARCAS__ Manon

This project is aimed at providing an assembly script to print the number from 0 to 10000.

### 📌 Table of contents :

I. [Badges](#🎯-badges)

II. [Prerequisites](#🔧-prerequisites)

III. [Installing the project](#💻-project-installing)

IV. [Starting the project](#💻-project-start)


### 🎯 Badges :
[![Assembly badge](https://img.shields.io/badge/Language-Assembly-black
)](https://www.rust-lang.org/fr)


### 🔧 Prerequisites :
- [A linux distribution](https://www.linux.org) <br>
OR 
- [WSL](https://learn.microsoft.com/fr-fr/windows/wsl/install) installed on your system.


### 💻 Project installing :

#### 1. Clone the Repository :
```bash
git clone https://github.com/Manon-Arc/Assembly_print_number.git
```

#### 2. Navigate to the Project Directory :
```bash
cd Assembly_print_number
```

#### 3. Generate binary file :
The [binary file](/nombre.o) is generate with the following command :
```bash
nasm -f elf32 -O3 nombre.s -o nombre.o
```

#### 4. Generate exe file
The [exe file](/nombre) is generate with the following command :
```bash
ld -m elf_i386 -s -z norelro -z noseparate-code --strip-all --gc-sections -o nombre nombre.o
```

### 💻 Project start :

#### 1. Start the program :
```bash
./nombre
```

**✅ Done !**
