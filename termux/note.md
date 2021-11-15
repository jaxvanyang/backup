# Note for Termux

## TOC

- [1. 配置](#1-配置)

- [2. 备份](#2-备份)

## 1. 配置

> 大部分脚本都需要使用 `bash` 执行。

### 1.0 更换为国内源

> 该脚本是直接从国光的教程上抄的。

[replace_package_source.sh](./replace_package_source.sh)

### 1.1 安装基本工具

[install_basic_tools.sh](./install_basic_tools.sh)

### 1.2 安装 `Oh My ZSH for Termux`

1. 安装 `ZSH` 和 `Oh My ZSH for Termux`

	[install_ohmyzsh.sh](./install_ohmyzsh.sh)

2. 安装 `Oh My ZSH` 插件

	> 会克隆部分插件的仓库到 `~/repos/`，可以自己选择是否删除。

	[install_ohmyzsh_plugins.sh](./install_ohmyzsh_plugins.sh)

3. 启用插件

	打开 `~/.zshrc`，找到这一行：

	```shell
	plugins=(git)
	```

	改为：

	```shell
	plugins=(git zsh-autosuggestions zsh-syntax-highlighting autojump)
	```

## 2. 备份

### 2.0 配置文件

- VIM

	- [.vimrc](../configs/vim/.vimrc)

- ZSH

	> Usaully, using [oh-my-zsh](https://ohmyz.sh/) to configure ZSH is enough.

	- [.zshrc](.zshrc)

### 2.1 备份 Termux

> 也可以使用 Termux 提供的 `termux-backup` 和 `termux-restore`，比较安全。

使用前请确定以授权 Termux 存储权限，如果没有授权的话可以通过以下命令获取：

```shell
termux-setup-storage
```

以下脚本把备份路径写死了，如果你需要保存或恢复多个备份，请手动重命名。
另外如果你滥用了 root 权限就可能会报错，这时候建议使用官方的备份&恢复工具。

1. [备份脚本](./backup_termux.sh)：将 Termux 应用文件夹 `/data/data/com.termux/files/` 下的 `home` 和 `usr` 文件夹打包到 SD 卡根目录的 `/sdcard/termux_backup.tar.gz`，还会输出备份日志到 `/sdcard/backup_termux.log`。

2. [还原脚本](./restore_termux.sh)：将 `/sdcard/termux_backup.tar.gz` 解压缩到 `/data/data/com.termux/files/` 目录下。

## Reference

[Termux 高级终端安装使用配置教程](https://www.sqlsec.com/2018/05/termux.html)
