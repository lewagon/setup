## Check-up

Let's check if you successfully installed everything. First go to your
[GitHub Profile](https://github.com/settings/admin) and set your public email to
the one you configurred at the `dotfiles` step. That should not say `Don't show my email address`.
Don't forget to click on the green `Update Profile` button.

Quit all opened Terminal, open a new one and run the following commands:

```bash
curl -Ls https://raw.githubusercontent.com/lewagon/setup/master/check.rb | ruby
```

It should tell you if your workstation is ready :) If not, ask a teacher. If you don't want
your email to appear on your GitHub profile, you can now revert the `Public email` setting.
