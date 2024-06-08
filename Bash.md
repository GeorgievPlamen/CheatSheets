## echo

    Display a line of text that is passed in as an argument.
    - text >> filename "prints(writes) to file instead of terminal"

## pwd

    Print Working Directory.

## ls

    List files in folder.

    -l "long list format"
    -a (-all) "lists all files"

## cd (dir)

    Change directory <dir name>.

## cat (file)

    Read the whole file

## wc (file)

    Prints new line word count and byte size of file.

    -l = new line

## diff (file1 file2)

    Difference of the two files

## |

    Pipe left side to the right side as input

## >

    stdout to a file, overwrites or creates the file

## >>

    stdout to a file, appends

## <

    stdin to a file, right is input.

## grep

    Find patterns in the file and prints the line containing matches.
    --color will color the pattern.
    -n to have the line numbers.
    -c count lines
    -o prinst matches in their own lines

## more (file)

    Read the file in the terminal.

## mkdir (folder)

    Make a directory.

## rmdir (folder)

    Remove a directory.

## touch (file)

    Create a new file.

## rm (file)

    Remove file.
    -r "remove directories and content recursively"

## cp (file) (dir)

    Copy file to directory.
    -r "recursively copy folder and content"

## mv (file) (new name or destination dir)

    Rename or move a file.

## find

    Lists a file tree.

    -name (filename) searches for specific file.

## Script setups

    which (sh 'which bash') - shows directory
    #!(directory of sh to be used)
    #!/bin/bash
    permissions -w -rw -r -x
    chmod +x FILENAME

## VARIABLE_NAME=VALUE

    Create variable.

## $VARIABLE_NAME

    Use variable with $.

## read VARIABLE_NAME

    Reads from user input.

## Add comments

    # comment

## If statement

    if [[ CONDITION ]]
    then
    STATEMENTS
    fi
