PS3='Git commands script: '
options=("Status" "Add" "Commit" "Push" "History" "All deployment commands" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Status")
            git status
            ;;
        "Add")
            git add .
            ;;
        "Commit")
            echo "Commit message: "
            read MSG
            git commit -m "$MSG"
            ;;
        "Push")
            echo "Name of the branch: "
            read BRANCH
            git push origin $branch
            ;;
        "History")
            git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n'' %C(white)%s%C(reset) %C(dim white)- %an%C(reset)' --all
            ;;
        "All deployment commands")
            git add .
            echo "Commit message: "
            read MSG
            git commit -m "$MSG"
            echo "Name of the branch: "
            read BRANCH
            git push origin $branch
            ;;
        "Quit")
            echo "See you. Bye bye!"
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
    REPLY=""
done