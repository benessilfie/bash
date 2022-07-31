# Learning Bash Scripts

### Notes

You start every bash script with:

```bash

#!/bin/bash

```

<br>

### In Bash, `#!` is called a shebang! :joy:

A shebang `#!` is used to tell the kernel which interpreter to use running the commands present in the file.

This is what happens:
When we run a file starting with `#!`, the kernel opens the file and takes the contents written right after the `#!` (in the case of a bash
script, `/bin/bash`) and in a way, saves the string `/bin/bash` after the shebang in a variable say `command`.

Now when you run or execute your script, we are telling the kernel using a shebang what interpreter it should use to run your commands. 
So the kernel now knowing that this is a bash script, will precede your file name with the contents of the variable `command` to execute the 
file as a bash script using the bash interpreter.

<!-- Note that sometimes it could be a python script or a Go script or some other scripting language. -->

So for example, say you have an executable file called hello.sh with some shell commands and a shebang `#!/bin/bash`. 
When you run it, the kernel will execute it as `/bin/bash hello.sh`.

<!-- If for a example your script was a python script, the string after your shebang would be /bin/python3 -->

Okay so let's illustrate the example, let's say `hello.sh` contains the content:

```bash
#!/bin/bash 

echo "Hello, World!"
```

When you run this script in the terminal, the kernel will notice the shebang in the very first line, get the string after it `bin/bash/` 
and preface the file `hello.sh` with it to tell the intrepreter that the scripting language you want to use to run the commands in the file 
should be Bash.

so running `hello.sh` in the terminal by typing `./hello.sh` is the same as typing `/bin/bash hello.sh` when you use a `#!` Shebang.

<br>

### Variables!

So to create a variable in bash, simply type the variable name and use the assignment operator `=` to give it a value.

Example.

This is an example of a variable that stores the name of the high school I went to.

```bash
#!/bin/bash

high_school="St. Augustine's College"
```
To use a varibale you type the dollar sign `$` follow by the variable name like this: `$high_school`.

```bash
#!/bin/bash

high_school="St.Augustine's College"

echo "The best boys school in Ghana is $high_school"
```

The output of the script above will be: "The best boys school in Ghana is St. Augustine's College"

 
NOTE: You can also use the `read` keyword to recieve a user input and store it in a variable.

Example.

```bash
#!/bin/bash

echo "What is the name of the best high school in Ghana??"

read high_school

echo "The name of the best high school in Ghana is $high_school"
```

The output of the script above will be whatever school you type.

<br>

### Arguments

To make your script take an argument, you first create a parameter in your script and assign it a number.
You create a parameter in bash similar to how you create variables but with parameters you assign them a value of `$1` incrementing
by the number of parameters you want to create.

- To make your script recieve an argument, you create a single parameter like this:

```bash
#!/bin/bash

name=$1

echo "Good Morning $name"

sleep 1

echo "You're looking good today $name!!"

sleep 1

echo "You have the best beard I've ever seen $name"
```

- For multiple arguments, you create multpile parameters.

Example.

```bash
#!/bin/bash

name=$1
compliment=$2

echo "Good Morning $name"

sleep 2

echo "You're looking good today $name!!"

sleep 2

echo "You have the best $compliment I've ever seen $name"
```

<br>

### Variables to store the output of commands

To create a variable to store the ouput of a command, we do it a bit diffrently from how normal variables in bash are created.

It is however similar to how parameters are created but instead of assigning the value of the parameter with the `$` and a number, you do this a `$` and the name of the command you want to output in brackets.

Example.

```bash
#!/bin/bash

user=$(whoami)
date=$(date)
whereami=$(pwd)

# NTS: You are totally imagining Alfred and Bruce having this conversation right now lol

echo "Good day Master $user"

sleep 1

echo "Will you be working in the $whereami directory today?"

sleep 2

echo "What day is it, Alfred?"

sleep 1

echo "Well Sir, Today is $date"
```
<br>

### The $RANDOM Variable

`$RANDOM` is a built in variable that comes with linux. It is used to generate random integers in linux and returns a psuedo-random `16-bit` 
integer between 0 and 32767.

```bash
#!/bin/bash

echo $RANDOM
```
<br>

---

**NOTE**

You can actually create your own system variables like `$RANDOM` and `$PWD`.

There are two types of system variables; 

- `Environment Variables`: Variables that are defined for the current shell and can be used by child shells or processes "bash scripts"
- `Shell Variables`: Variables that are contained exclusively within the shell in which they are created or defined. Shell variables can not be inherited or used by child processes.

Example of a `Shell Variable`:
```bash
#!/bin/bash

PRESIDENT="Addo D"

echo $PRESIDENT

# Output: Addo D
```

To create an environment variable, create a shell variable and `export` it. Like this:

```bash
#!/bin/bash

PRESIDENT="Addo D"

export PRESIDENT
```

This `env` variable is not permanent, when you log out of the system, it will go away. To make your environment variables permanent, add it
to the `.bashrc` file.

```bash
#!/bin/bash

nano .bashrc

# When open, add the line below to the .bashrc file

export PRESIDENT="Addo D"

```

By convention, these types of variables are usually defined using all caps. This helps distinguish them within other contexts.

---
<br>

### Conditionals Statements - If/Esle

We use `if/else` statements in shell scripts to make decisions or evaluate a condition. This basically allows us to choose a response
or execute a particular command when our condition is met. In bash the syntax for `if/else` statements are in the `eg.` below.


```bash
#!/bin/bash


echo "You died"

echo "Hey, do you like coffee? (y/n)"

read coffee

if [[ $coffee == "y" ]]; then
        echo "You're awesome"
else
        echo "Get Out!!!!"
fi
```


