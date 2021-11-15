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

## Reference

[Termux 高级终端安装使用配置教程](https://www.sqlsec.com/2018/05/termux.html)
