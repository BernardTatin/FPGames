# latex-common

These common files for my LaTeX projects can be used as a [*LaTeX subtree*](https://www.atlassian.com/blog/git/alternatives-to-git-submodule-git-subtree). You also have complete [git subtrees tutorial](https://medium.com/@v/git-subtrees-a-tutorial-6ff568381844).

You can use it as a more classical submodule.

## using it as a subtree

To use it, follow these commands :

```shell
# adding remote URL
$ git remote add rlatex-common git@github.com:BernardTatin/latex-common.git
# verify
$ git remote -v
...
rlatex-common git@github.com:BernardTatin/latex-common.git (fetch)
rlatex-common git@github.com:BernardTatin/latex-common.git (push)
...
$ git subtree add --prefix=latex-common/ rlatex-common master
git fetch rlatex-common master
From github.com:BernardTatin/latex-common
 * branch            master     -> FETCH_HEAD
 * [new branch]      master     -> rlatex-common/master
Added dir 'latex-common'
$ ls -lrt
total 99
...
drwxr-xr-x 3 bernard bernard 4096 nov.  20 08:48 latex-common
$
```
