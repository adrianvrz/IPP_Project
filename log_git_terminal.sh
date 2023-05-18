alvareztorres@Familias-iMac Project_finance % git init
Initialized empty Git repository in /Users/alvareztorres/Desktop/Project_finance/.git/
alvareztorres@Familias-iMac Project_finance % git status
On branch main

No commits yet

Untracked files:
  (use "git add <file>..." to include in what will be committed)
        finance.py
        test_finance.py

nothing added to commit but untracked files present (use "git add" to track)
alvareztorres@Familias-iMac Project_finance % git add .
alvareztorres@Familias-iMac Project_finance % git commit -m "Primero commit: creacion de archivos base"
[main (root-commit) 7d039e8] Primero commit: creacion de archivos base
 2 files changed, 0 insertions(+), 0 deletions(-)
 create mode 100644 finance.py
 create mode 100644 test_finance.py
alvareztorres@Familias-iMac Project_finance % git config --global user.name "adrianvrz"
alvareztorres@Familias-iMac Project_finance % git config --global user.email "adrianhae@gmail.com"
alvareztorres@Familias-iMac Project_finance % git remote -v
alvareztorres@Familias-iMac Project_finance % git remote add origin https://github.com/adrianvrz/IPP_Project.git
alvareztorres@Familias-iMac Project_finance % git remote -v                                                     
origin  https://github.com/adrianvrz/IPP_Project.git (fetch)
origin  https://github.com/adrianvrz/IPP_Project.git (push)
alvareztorres@Familias-iMac Project_finance % git fetch    
remote: Enumerating objects: 3, done.
remote: Counting objects: 100% (3/3), done.
remote: Total 3 (delta 0), reused 0 (delta 0), pack-reused 0
Unpacking objects: 100% (3/3), 602 bytes | 301.00 KiB/s, done.
From https://github.com/adrianvrz/IPP_Project
 * [new branch]      main       -> origin/main
alvareztorres@Familias-iMac Project_finance % git push 
fatal: The current branch main has no upstream branch.
To push the current branch and set the remote as upstream, use

    git push --set-upstream origin main

To have this happen automatically for branches without a tracking
upstream, see 'push.autoSetupRemote' in 'git help config'.

alvareztorres@Familias-iMac Project_finance % git checkout main
Already on 'main'
alvareztorres@Familias-iMac Project_finance %  git push --set-upstream origin main
To https://github.com/adrianvrz/IPP_Project.git
 ! [rejected]        main -> main (non-fast-forward)
error: failed to push some refs to 'https://github.com/adrianvrz/IPP_Project.git'
hint: Updates were rejected because the tip of your current branch is behind
hint: its remote counterpart. Integrate the remote changes (e.g.
hint: 'git pull ...') before pushing again.
hint: See the 'Note about fast-forwards' in 'git push --help' for details.
alvareztorres@Familias-iMac Project_finance % git pull origin main

From https://github.com/adrianvrz/IPP_Project
 * branch            main       -> FETCH_HEAD
hint: You have divergent branches and need to specify how to reconcile them.
hint: You can do so by running one of the following commands sometime before
hint: your next pull:
hint: 
hint:   git config pull.rebase false  # merge
hint:   git config pull.rebase true   # rebase
hint:   git config pull.ff only       # fast-forward only
hint: 
hint: You can replace "git config" with "git config --global" to set a default
hint: preference for all repositories. You can also pass --rebase, --no-rebase,
hint: or --ff-only on the command line to override the configured default per
hint: invocation.
fatal: Need to specify how to reconcile divergent branches.
alvareztorres@Familias-iMac Project_finance % git pull --ff-only origin main

From https://github.com/adrianvrz/IPP_Project
 * branch            main       -> FETCH_HEAD
fatal: Not possible to fast-forward, aborting.
alvareztorres@Familias-iMac Project_finance % git pull --no-rebase origin main

From https://github.com/adrianvrz/IPP_Project
 * branch            main       -> FETCH_HEAD
fatal: refusing to merge unrelated histories
alvareztorres@Familias-iMac Project_finance % git pull --rebase origin main

From https://github.com/adrianvrz/IPP_Project
 * branch            main       -> FETCH_HEAD
Successfully rebased and updated refs/heads/main.
alvareztorres@Familias-iMac Project_finance % git push
fatal: The current branch main has no upstream branch.
To push the current branch and set the remote as upstream, use

    git push --set-upstream origin main

To have this happen automatically for branches without a tracking
upstream, see 'push.autoSetupRemote' in 'git help config'.

alvareztorres@Familias-iMac Project_finance % git push --set-upstream origin main
Enumerating objects: 4, done.
Counting objects: 100% (4/4), done.
Delta compression using up to 4 threads
Compressing objects: 100% (2/2), done.
Writing objects: 100% (3/3), 310 bytes | 310.00 KiB/s, done.
Total 3 (delta 0), reused 0 (delta 0), pack-reused 0
To https://github.com/adrianvrz/IPP_Project.git
   dab9be7..2fe008f  main -> main
branch 'main' set up to track 'origin/main'.