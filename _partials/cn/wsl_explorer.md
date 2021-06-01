## Ubuntu文件系统

### 在Windows和Ubuntu之间交换文件

我们需要一个简单的方法在Windows和Ubuntu之间交换文件。

想这样的话，你需要建一些可以从Windows的**File Explorer**访问Ubuntu文件目录的快捷键。

![](images/wsl_ubuntu_file_system.png)

你需要做下面这些步骤:

- 打开Ubuntu终端
- 打开Windows File Explorer (或者使用快捷键Win + E)
- 在地址栏，输入`\\wsl$\`（如果不行的话，就输入`\\wsl$\Ubuntu`）
- 现在你就有Ubuntu文件系统的访问权限了
- 看一下Ubuntu的文件系统，看看有哪些目录是你会想用的
- 拖拽想要的文件夹到地址栏，就可以创建快捷键了

![](images/wsl_ubuntu_file_system.gif)

### 从Ubuntu终端打开Windows File Explorer

另一个交换文件的方法是从Ubuntu终端打开Windows**File Explorer**。

你需要做下面这些步骤：

- 打开Ubuntu终端
- 进入你想看的目录
- 运行`explorer.exe .`命令（或者，使用`wslview .`）
- 如果你看到一条输入输出的报错，那就在Windows PowerShell运行`wsl --shutdown`然后再重新打开Ubuntu终端

![](images/wsl_explorer.png)

### 在Ubuntu文件系统里找到方向

你可能想搞清楚Ubuntu文件系统里的Windows目录到底在哪儿。或者Windows文件系统里的Ubuntu目录在哪儿。

要把一个Windows路径变成Ubuntu路径（或者反过来），你需要做：

- 打开Ubuntu终端
- 使用`wslpath "C:\Program Files"`命令来把Windows路径变成Ubuntu路径
- 使用`wslpath -w "/home"`命令来把Ubuntu路径变成Windows路径
- 还有，`wslpath -w $(pwd)`命令会返回当前Ubuntu路径的Windows路径

![](images/wsl_path.png)

