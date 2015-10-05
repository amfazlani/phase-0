How does tracking and adding changes make developers' lives easier?
    Because web development is very dependent on collaboration and constantly improving the functionality of code it is natural that tracking and adding changes is vital to a developer's success. Because a developer is able to track each and every change, it makes the process much easier by eliminating any confusion on the sources of those changes and reasoning behind the changes.

    What is a commit?
    A commit is a snapshot of a person's code after he/she has saved their code. It allows others as well as the person writing the code to understand the thought process and progression of the code. It also allows a developer to reach back to earlier versions of their code if needed.

    What are the best practices for commit messages?
    First, the first line of the commit message must read almost like a subject line in an email in order to give a sense of what the message and changes entail. Second, the body must be in present-tense. This is because these changes are being made in an enviornment of others making different changes at one time and it is easier to understand what a code "will do" rather than what it has "already done"

    What does the HEAD^ argument mean?
    I have not fully grasped this functionality to be able to explain it.

    What are the 3 stages of a git change and how do you move a file from one stage to the other?
    The three stages of a git change begin with the master. You must be sure that you're terminal is in the master branch of the repository that  you are trying to change. Second, is the "branching" stage. In order to make changes that do not affect the master, you must create a branch. To create a branch, you must type in git checkout -b {enter branch name}. Once you are inside this new branch, you must create a directory using the mkdir command in the terminal. After navigating inside the new directory you just created,  you can create a file using touch {file name}. After this you can open your new file in sublime, and make the changes you need to make. Then you will need to use add . to set the new file up for commit. And then use git commit to actualy commit the file. After this, you will need to use git push origin {branch name} in order to push it to your github account for a pull request. Once you accept the pull request your can now pull the master version back to your computer and all the changes have been made.
    Write a handy cheatsheet of the commands you need to commit your changes?

    The major commands that you would need are git checkout -b (creates branch), touch (creates file), add . (sets up file for commit), git commit (commits file)

    What is a pull request and how do you create and merge one?
    A pull request is used to merge the changes made to a branch and add those changes to the master branch. You create a pull request by typing in git push origin {branch name} which send your new branch to your GitHub. Then you press pull request. And then merge pull request. This will merge your branch to your master. You then return to your terminal and type in git pull origin master to have the new master on your local repository.

    Why are pull requests preferred when working with teams?
    Pull requests are preferred because when working in a large team, it is neccesary to be able to monitor and approve changes being made to the master version. By having pull requests, others can see the changes being made and also point out red-flags in the code before it is merged into the master version. This minimizes error and confusion.
