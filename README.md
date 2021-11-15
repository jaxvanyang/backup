# Backup

该仓库主要用于保存配置文件的备份，以及一些配置笔记和配置、备份脚本。

> Note: 所有的脚本都应该在所在文件夹下执行

配置笔记中包括脚本的使用方法，使用前请先阅读相应笔记：

- [Note for Windows 11](win11/note.md)

- [Note for Ubuntu 20.04](ubuntu/note.md)

- [Note for Termux](termux/note.md)

## TOC

- [1. 结构](#1-结构)

- [2. TODOs](#2-todos)

## 1. 结构

脚本按操作系统分文件夹存放，即使 Ubuntu 和 Termux 可以混用也必须分离，因为后续扩展的配置可能不同。

配置文件也按操作系统分类，但是通用的可以提取出来存放到 [configs](configs/) 目录中，便于统一管理。

此外还应该在 [examples](examples/) 提供各配置文件的模板，便于快速生成配置文件。

- [win11](win11/)

- [ubuntu](ubuntu/)

- [termux](termux/)

资源文件夹：

- [images](images/)

一些额外的文件备份放在 [backups](backups/) 目录中，比如 [oh-my-zsh 的安装脚本](backups/oh-my-zsh/install.sh)（用于在 `curl` 和 `wget` 连不上 [GitHub](https://github.com) 时使用）这种不是配置备份的文件，另外一些机器相关的配置文件也可以放在该文件夹下。

## 2. TODOs

- [x] fix ohmyzsh plugin install error

- [ ] avoid relative path error for shell

- [x] check status before running scripts

- [ ] 整合 [Note for lab-pc](backups/lab-pc/note.md)

- [ ] 添加备份脚本（在 [backups](backups/) 中转）