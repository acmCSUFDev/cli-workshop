#!/usr/bin/env bash
# Here's a comment. The #! (shebang) above is required!

echo "echo here just means print"

# add a new line every so often
echo -e "\n====================\n"

echo "We can run a command just like so:"
cat girl

echo -e "\n====================\n"

echo "We can also run commands and then feed that into another command:"
echo "cat girl says: $(cat girl)"

echo -e "\n====================\n"

echo "How far can we run commands in commands?"
echo "Answer: $(echo pretty $(echo far $(echo in $(echo fact $(echo very $(echo far $(echo indeed)))))))"

echo -e "\n====================\n"

thingy="You can set a variable like so..."
thingy="$thingy, $(echo "or even use a command")"
thingy="$thingy: <-- note how I used the variable in the variable!!"

echo "$thingy" # print the variable above

echo -e "\n====================\n"

echo "So *grep* is a command that searches for a string in a file."
echo "Let's search for the word 'insanely' in this file."
echo "This gets pretty confusing, so let's add some markers."
echo

echo "vvv"
grep "insanely" example.sh
echo "^^^"

echo -e "\n====================\n"

echo "Now, let's pipe some stuff!"
echo "Piping is just taking the output of one command and feeding it into another."
echo "Can grep find if the word 'crepe' has the word 'incredulous' in it?"

echo
echo "vvv"
echo "crepe" | grep "incredulous" # note the vertical bar (|) between the two commands
echo "^^^"
echo

echo "Hmm, we got nothing..."
echo "Let's feed it something else..."

echo
echo "vvv"
echo "incredulously crepe" | grep "incredulous"
echo "^^^"
echo

echo "I think we got something!"

echo -e "\n====================\n"

echo "What have we learned?"
echo
echo "- CLIs are just commands that you can run in a terminal"
echo "- CLIs can run in shell scripts, so they can be easily automated"
echo "- You can chain commands together with pipes (|)"
echo "- You can set variables and use them in other commands"
