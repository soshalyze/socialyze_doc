# Git Usage

## Committing to Git

If the GUI in PyCharm is not available, commits to git can be made manually with the following workflow:

```bash
git add .
git commit -m 'implemented XY, fixed Z'
git push origin branch_name
```

The remote called `origin` is the GitHub repository at `https://github.com/soshalyze/socialyze`.
The remote called `heroku` is the Heroku repository at `https://git.heroku.com/socialyze.git`.

## Deploying to Heroku via Git

Once you've implemented a new feature, deploy to Heroku by pushing to the `heroku` remote git repo:

```bash
$ git add .
$ git commit -m 'implemented feature XY'
$ git push heroku main
```
