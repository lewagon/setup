Hello and welcome to this WSL2 Cheatsheet.
The goal is to gather here all tips and known issues about WSL2!

# Issues

## Input/Output error

This happens when the hidden `wslhost.exe` is not working. We just need to restart it!

Close all WSL2 tabs.

Open a Powershell tab and run the following command:
```bash
wsl.exe --shutdown
```
Check that your Ubuntu is properly stopped with the command
```bash
wsl -l -v
```

Open a new WSL2 Tab, problem should be fixed.


# Tips

## Testing on Rails

Testing wont work by default on WSL2. It requires ChromeDriver and Chrome binary installed. For this we will need the `root` session ( AKA The super-mega-admin-session ).

You may skip the reset of the password if you already have one for your root session.

Close all WSL2 tabs.
Open a Powershell tab and run the following command:
```bash
wsl -d Ubuntu -u root
```

You are now login in your Ubuntu as `root`.

Type the following command to change it's password:
```bash
passwd
```

You will be prompted twice for a new password.

Close this WSL2 tab.

Open a WSL2 tab, you should be logged in with **your** account. Run the following command (**line per line**):
```bash
sudo apt-get update
sudo apt-get install -y unzip xvfb libxi6 libgconf-2-4
```

We need to act as the `root` session for the next command, so let's login as root (you will be prompted for the `root` password):
```bash
su -
```
Now, let's run:
```bash
sudo curl -sS -o - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add
sudo echo "deb [arch=amd64]  http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list
```
Press `Ctrl+D` to quit the root session.

If you are unsure about which session you're logged in with, you can use the ```whoami``` command 💡.

Let's run the following commands to install Google Chrome binary and ChromeDriver on your WSL2:
```bash
sudo apt-get -y update
sudo apt-get -y install google-chrome-stable
wget https://chromedriver.storage.googleapis.com/2.41/chromedriver_linux64.zip
unzip chromedriver_linux64.zip
sudo mv chromedriver /usr/bin/chromedriver
sudo chown your-session-here:your-session-here /usr/bin/chromedriver
sudo chmod +x /usr/bin/chromedriver
```
⚠️ Replace **your-session-here** by the result of the command ```whoami```.
My result is ```barangerbenjamin:barangerbenjamin```. ⚠️

You can now use testing in Rails. You need to open a second tab and run:
```bash
chromedriver
```
In the other tab you can run your tests with:
```bash
rails test:system
```