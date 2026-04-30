Question 1:
https://github.com/JonathanRReed/mcino-Introduction-to-Git-and-GitHub/blob/main/README.md

Question 2:
https://github.com/JonathanRReed/mcino-Introduction-to-Git-and-GitHub/blob/main/LICENSE

Question 3:
https://github.com/JonathanRReed/mcino-Introduction-to-Git-and-GitHub/blob/main/CODE_OF_CONDUCT.md

Question 4:
https://github.com/JonathanRReed/mcino-Introduction-to-Git-and-GitHub/blob/main/CONTRIBUTING.md

Question 5:
https://github.com/JonathanRReed/mcino-Introduction-to-Git-and-GitHub/blob/main/simple-interest.sh

Question 6:
$ curl -s https://api.github.com/repos/JonathanRReed/mcino-Introduction-to-Git-and-GitHub | jq '{html_url, fork, parent: {full_name: .parent.full_name}, source: {full_name: .source.full_name}}'
{
  "html_url": "https://github.com/JonathanRReed/mcino-Introduction-to-Git-and-GitHub",
  "fork": true,
  "parent": {
    "full_name": "ibm-developer-skills-network/mcino-Introduction-to-Git-and-GitHub"
  },
  "source": {
    "full_name": "ibm-developer-skills-network/mcino-Introduction-to-Git-and-GitHub"
  }
}


Question 7:
$ git checkout main
Switched to branch 'main'
Your branch is up to date with 'origin/main'.
$ git merge bug-fix-typo
Updating 6605f15..3c83b38
Fast-forward
 README.md | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)


Question 8:
$ curl -s https://api.github.com/repos/ibm-developer-skills-network/mcino-Introduction-to-Git-and-GitHub/pulls/7315 | jq '{html_url, state, title, head: {ref: .head.ref, repo: {full_name: .head.repo.full_name}}, base: {ref: .base.ref, repo: {full_name: .base.repo.full_name}}}'
{
  "html_url": "https://github.com/ibm-developer-skills-network/mcino-Introduction-to-Git-and-GitHub/pull/7315",
  "state": "closed",
  "title": "fix: document decimal input support",
  "head": {
    "ref": "bug-fix-revert",
    "repo": {
      "full_name": "JonathanRReed/mcino-Introduction-to-Git-and-GitHub"
    }
  },
  "base": {
    "ref": "main",
    "repo": {
      "full_name": "ibm-developer-skills-network/mcino-Introduction-to-Git-and-GitHub"
    }
  }
}


Question 9:
$ git branch -avv
  bug-fix-revert                92f8688 [origin/bug-fix-revert] fix: document decimal input support
  bug-fix-typo                  3c83b38 [origin/bug-fix-typo] fix: clarify simple interest readme
* main                          bd3de6f [origin/main] fix: make calculator instructions explicit
  remotes/origin/HEAD           -> origin/main
  remotes/origin/bug-fix-revert 92f8688 fix: document decimal input support
  remotes/origin/bug-fix-typo   3c83b38 fix: clarify simple interest readme
  remotes/origin/main           bd3de6f fix: make calculator instructions explicit
  remotes/upstream/HEAD         -> upstream/main
  remotes/upstream/main         ad95b0a Create close_pr.yml
