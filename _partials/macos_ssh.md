### SSH Passphrase

In a terminal window, launch this command:

```bash
sw_vers
```

<details>
  <summary>Click here if your OS version (ProductVersion line) is less than 10.12</summary>

  In order not to re-type your SSH passphrase at every `git push`, you can add these lines to the `~/.ssh/config` file:

  First open the `~/.ssh/config` file.

  ```bash
  touch ~/.ssh/config  # Creates the file if it does not exist
  code ~/.ssh/config     # Opens the file in your text editor
  ```

  And then add these 3 lines to the file. **Save**.

  ```bash
  Host *
    AddKeysToAgent yes
    UseKeychain yes
  ```
</details>
