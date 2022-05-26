NeoVim安装
	Mac
		brew install neovim
	Linux/Windows
		从官方下载压缩包

配置文件路径
	Linux/Mac
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

	LeaderF需要ripgrep
		apt install ripgrep


neovim 需要lua support
	apt install lua5.3



coc相关插件安装:
	1.c语言支持
		CocInstall coc-clangd
	2.剪切板支持
		CocInstall coc-yank
	3.文件管理器支持
		CocInstall coc-explorer



快捷键
	Leaderf
		查找buff										<leader>fb
		查找tag											<leader>ft
		查找引用										<leader>fr
		显示当前函数列表								<F2>
		使用ripgrep在当前buffer中查找buffer				<c-b>
		使用ripgrep在当前目录中查找buffer				<c-f>
		查找文件										<c-p>

	Coc
		查看文档										K
		查看声明										gd
		查看类型定义									gy
		查看引用										gr
		查看定义										gd
		快速修改										<leader>qf
		代码格式化										<leader>f
		剪切板支持										<space>y

	Copilot
		接受推荐										<c-j>

	goto-preview
		预览定义										gpd
		预览实现										gpi
		关闭预览										gP

	vim-better-whitespace
		清除空格										:StripWhitespace

	nvim-bufferline
		上一个buffer									b[
		下一个buffer									b]

	vim-headerguard
		添加guard										:HeaderguardAdd

	nvimtree
		打开或关闭目录									<c-n>

	注释
		代码注释切换									<leader>c<space>
		函数注释										:Dox
		Author注释										:DoxAuthor

	surround
		删除引号										ds"
		替换引号										cs"(
		替换引号，引号内文本新做一行					cS"{
		选中的括起来									S"

	chm-custom
		关闭其它buffer									:BufOnly
		关闭当前buffer									:bd

	改变窗口大小
		CTRL-W =	使得所有窗口 (几乎) 等宽、等高，但当前窗口使用 'winheight' 和
				'winwidth'。
				置位 'winfixheight' 的窗口保持它们的高度，而置位 'winfixwidth'
				的窗口保持它们的宽度。

		:res[ize] -N					*:res* *:resize* *CTRL-W_-*
		CTRL-W -	使得当前窗口高度减 N (默认值是 1)。
				如果在 |:vertical| 之后使用，则使得宽度减 N。

		:res[ize] +N					*CTRL-W_+*
		CTRL-W +	使得当前窗口高度加 N (默认值是 1)。
				如果在 |:vertical| 之后使用，则使得宽度加 N。

		z{nr}<CR>	设置当前窗口的高度为 {nr}。

		CTRL-W <	使得当前窗口宽度减 N (默认值是 1)。

		CTRL-W >	使得当前窗口宽度加 N (默认值是 1)。
