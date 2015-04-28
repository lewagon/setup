### Package control

We will install the package manager right away to install addons. Launch Sublime Text, then open the console via the `View > Show Console` menu. It will open at the bottom of Sublime Text a prompt where you can type stuff. You need to [copy some code](https://sublime.wbond.net/installation#st2) and paste it in that Sublime Text console. Then hit `Enter`. Restart Sublime Text (`⌘` + `Q` to quit on Mac).

If you have trouble with this step, ask a teacher. That would be the only thing we'll type in this prompt. All other commands will be in the terminal.

To check that the Package Control is installed, you can hit `⌘`+`⇧`+`P` (`Ctrl`+`⇧`+`P` on Windows or Ubuntu), and type `installp`. If you see something like below, you're good to go!

![](images/sublime-install-package.png)

### Useful Packages

Here is a list of packages you should install to harness the power of Sublime Text with Ruby, Rails and Middleman:
Launch Package Control as explained above, hit `Enter` to view the package list, find and install (hitting `Enter` again):

- BracketHighlighter
- Emmet
- Git
- GitGutter
- Syntax Highlighting for Sass

### Preferences

We need to set some default on Sublime Text. Sharing defaults within your
colleagues, fellow students and teachers is important: it eases the process
of getting help or helping other.

1. Open Sublime Text
1. Go to `Preferences > Settings - Users`
1. Erase all the content of the file which got opened.
1. Copy paste the code below.
1. Save the file

```json
{
  "tab_size": 2,
  "translate_tabs_to_spaces": true,
  "detect_indentation": false,
  "ensure_newline_at_eof_on_save": true,
  "trim_automatic_white_space": true,
  "trim_trailing_white_space_on_save": true,
  "draw_white_space": true,
  "use_tab_stops": true,
  "hot_exit": false,
  "remember_open_files": false,
  "highlight_modified_tabs": true,
  "rulers": [ 80 ],
  "wordWrap": false,
  "folder_exclude_patterns": [ "tmp", "log", ".git", "_site", ".bundle", ".sass-cache", "build" ]
}
```

The convention we are enforcing with this configuration is that we use 2 spaces
for indentation (no tabs). So each time you will hit the `tab` key,
Sublime Text will insert 2 spaces.

You can now quit Sublime Text.
