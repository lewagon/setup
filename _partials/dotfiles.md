## Dotfiles (Standard configuration)

Hackers love to refine and polish their shell and tools.

We'll start with a great default configuration provided by Le Wagon: [`lewagon/dotfiles`](https://github.com/lewagon/dotfiles).

As your configuration is personal, you need your **own** repository storing it. So you will **fork** Le Wagon repository.

Forking means that you will create a new repo in your own GitHub account `$GITHUB_USERNAME/dotfiles`, identical to the original Le Wagon one that you will be able to modify at will.

Open your terminal and run the following commands:

```bash
export GITHUB_USERNAME=`gh api user | jq -r '.login'`
echo $GITHUB_USERNAME
```

:heavy_check_mark: You should see your GitHub username printed.

:x: If not, **stop here** and ask for help. There may be a problem with the previous step (`gh auth`).

Time to fork the repo and clone it on your computer:

```bash
mkdir -p ~/code/$GITHUB_USERNAME && cd $_
gh repo fork lewagon/dotfiles --clone
```

Run the `dotfiles` installer:

```bash
cd ~/code/$GITHUB_USERNAME/dotfiles
zsh install.sh
```


Check the emails registered with your GitHub Account. You'll need to pick one at the next step:

```bash
gh api user/emails | jq -r '.[].email'
```

:heavy_check_mark: If you see the list of your registered emails, you can proceed :+1:

:x: If not, please reauthenticate to GitHub before running this command :point_up: again.

<details>
  <summary>Authenticate to GitHub</summary>
  Execute this command in your terminal **without editing the `email`**:

  ```bash
  gh auth login -s 'user:email' -w
  ```

  You will get the following output:

  ```bash
  ! First copy your one-time code: 0EF9-D015
  - Press Enter to open github.com in your browser...
  ```

  Select and copy the code (`0EF9-D015` in the example), then press `ENTER`.

  Your browser will open and ask you to authorize GitHub CLI to use your GitHub account. Accept and wait a bit.

  Come back to the terminal, press `ENTER` again.
</details>

Run the `git` installer:

```bash
cd ~/code/$GITHUB_USERNAME/dotfiles && zsh git_setup.sh
```

:point_up: This will **prompt** you for your name (`FirstName LastName`) and your email.

:warning: You **need** to put one of the email listed above thanks to the previous `gh api ...` command. If you don't do that, Kitt won't be able to track your progress.

Please now **quit** all your opened terminal windows.
