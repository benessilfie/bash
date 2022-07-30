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
You create a parameter in bash similar to how you create variables but with parameters you assign them a value of `$1` incrememnting
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

