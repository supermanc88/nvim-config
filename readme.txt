配置文件路径
	Linux
		~/.config/nvim

	Windows
		~/AppData/Local/nvim

	如果不确定的话，可在nvim中执行命令：
		:echo stdpath('config')



LeaderF 需要vim的python support
	neovim python support:
		pip3 install pynvim

	LeaderF需要ctags
		apt install universal-ctags




neovim 需要lua support
	apt install lua5.3



coc相关插件安装:
	1.c语言支持
		CocInstall coc-clangd
	2.剪切板支持
		CocInstall coc-yank
