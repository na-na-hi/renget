# Git revert guide


## "I did git pull and my shit doesn't work"
Check the commit history with
`git log -30 --format=format:"[%cr] %C(auto)%h %C(green)%aN%Creset %<(80,trunc)%s"`
You can increase the number of commits shown by increasing the number in `git log -30`

![git log output](https://i.imgur.com/Zui0wjr.png)

The commit hash is shown in orange color.
If you remember when you last had a working build you can use:
`git checkout COMMIT_HASH`

For example if I wanted to revert back to the commit from 15 hours ago: `git checkout 8561d57`

You can also revert back by hours/days with:
`git checkout @{two.hours.ago}`
`git checkout @{15.hours.ago}`
`git checkout @{one.day.ago}`
`git checkout @{two.days.ago}`

When you eventually want to update you need to use:
`git checkout master`
`git pull`

## How to prevent myself from getting stuck with an unstable build?
Before doing `git pull` run `git rev-parse --short HEAD` to get your current commit hash.
Save the string of characters it outputs.
Do `git pull`
If something doesn't work you can use `git checkout HASH` to revert to a previous version.