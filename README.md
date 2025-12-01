Initial osx dotfiles tracking repo for Michael McAllister. Method of linking dotfiles to this repo found here:-

https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/

Other websites worth visiting:-

* https://github.com/mathiasbynens/dotfiles
* https://dotfiles.github.io/

# Important Note re Secrets

This repo includes a script named `mytokens.sh` which is designed to be called from the `.bashrc` file to create environment variables with secrets and tokens. You should add secrets and personal access tokens to this file, but you should **never check this file back into github**. To protect yourself against this, issue the following command after cloning to your machine and completing setup:-

```
config update-index --skip-worktree mytokens.sh
```

After doing this, no matter what changes you make to this file locally, it will no longer show up as having changed.