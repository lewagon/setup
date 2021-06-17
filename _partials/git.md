## Git

### Installation

[`git`](https://git-scm.com/) is a command line software used for version control.

To install `git`:
- Open a terminal
- Copy and paste the following commands:

```bash
sudo apt update
sudo apt install -y git
````

### GitHub CLI

Let's now install [GitHub official CLI](https://cli.github.com) (Command Line Interface). It's a software used to interact with your GitHub account via the command line.

In you terminal, copy-paste the following commands:

```bash
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-key C99B11DEB97541F0
sudo apt-add-repository https://cli.github.com/packages
sudo apt update
```

Then copy-paste the following command:

```bash
sudo apt install -y gh

```

To check that `gh` has been successfully installed on your machine, you can run:

```bash
gh --version
```

:white_check_mark: If you see `gh version X.Y.Z (YYYY-MM-DD)`, you're good to go :+1:

:x: Otherwise, please **contact a teacher**
