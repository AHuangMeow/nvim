# Neovim 配置

个人 Neovim 0.12 配置, 使用 `vim.pack` 管理插件.

## 键位

`<leader>` = 空格; LSP/调试相关键位仅在对应缓冲区生效(buffer-local).

### 基础

| 键 | 功能 |
| --- | --- |
| `<leader>w` / `<leader>q` / `<leader>!` | 保存 / 退出 / 丢弃 |
| `<leader>s` / `<leader>x` | 保存全部 / 保存并退出 |
| `<Esc>` | 取消搜索高亮 |
| `<C-h>` `<C-j>` `<C-k>` `<C-l>` | 切换窗口 |
| `<C-方向键>` | 调整窗口大小 |
| `<S-Left>` / `<S-Right>` / `<S-Down>` | 上一个 / 下一个 / 关闭标签页 |
| `<S-h>` / `<S-l>` / `<S-j>` | 上一个 / 下一个 / 关闭 buffer |

### 查找(telescope)

| 键 | 功能 |
| --- | --- |
| `<leader>ff` | 查找文件 |
| `<leader>fg` | 实时 grep |
| `<leader>fb` | buffer 列表 |
| `<leader>fr` | 最近文件 |

### Git / Diff

| 键 | 功能 |
| --- | --- |
| `<leader>gg` | lazygit |
| `<leader>go` / `<leader>gq` | 打开 / 关闭 diffview |
| `<leader>gc` / `<leader>gr` | 当前文件 / 仓库提交历史 |

### 终端

| 键 | 功能 |
| --- | --- |
| `<leader>tt` / `<leader>tf` | 水平 / 浮动终端 |
| `<leader>o` | opencode |
| `<leader>y` | opencode |
| `<leader>gg` | lazygit |

内置终端里: 双击 `<Esc>` 回普通模式;a普通模式下 `q` 关闭窗口(进程保留,再次打开恢复原状态). 设置保存时自动格式化, `<leader>lf` 可手动格式化.

### LSP

| 键 | 功能 |
| --- | --- |
| `<leader>jf` / `jc` / `jt` / `ji` / `jr` | 定义 / 声明 / 类型定义 / 实现 / 引用 |
| `<leader>lh` / `<leader>lr` / `<leader>lf` | 悬浮文档 / 重命名 / 格式化 |
| `<leader>lc` | 代码动作 |
| `<leader>ll` / `<leader>lg` | 本文件 / 全部诊断列表 |
| `<leader>ld` / `<leader>lw` | 文档符号 / 工作区符号 |

### 调试(DAP,默认 codelldb)

| 键 | 功能 |
| --- | --- |
| `<leader>db` / `<leader>dc` | 切换断点 / 条件断点 |
| `<leader>dd` / `<leader>da` | 启动(无参 / 带参) |
| `<leader>di` / `<leader>do` / `<leader>dv` | 步入 / 步出 / 步过 |
| `<leader>dl` / `<leader>dr` / `<leader>dt` | 重跑 / REPL / 终止 |
| `<leader>du` / `<leader>de` | 切换调试 UI / 求值 |

### 编辑

| 键 | 功能 |
| --- | --- |
| `s` / `S` | flash 跳转 |
| `r` / `R` | flash remote / treesitter search |
| `<C-s>`(命令行) | 切换 flash 搜索 |
| `<leader>e` | 文件树(neo-tree) |
| `<leader>m` | `:Mason` |

### 补全(blink.cmp)

| 键 | 功能 |
| --- | --- |
| `<Tab>` / `<S-Tab>`(或 `<C-n>` / `<C-p>`) | 下一项 / 上一项 |
| `<Enter>` / `<C-c>` | 接受 / 取消 |
| `<C-x>` | 手动触发补全 |
| `<C-b>` / `<C-f>` | 滚动文档 |
| `<C-k>` | 签名帮助 |

菜单关闭时: `<Tab>` 跳转 snippet 占位符.

## 插件

- **补全**: blink.cmp + friendly-snippets
- **LSP**: nvim-lspconfig + mason.nvim + mason-lspconfig.nvim
- **查找**: telescope.nvim
- **Git**: lazygit, diffview.nvim
- **终端**: toggleterm.nvim(水平 / 浮动 / opencode / yazi)
- **调试**: nvim-dap + nvim-dap-ui + mason-nvim-dap.nvim
- **外观**: catppuccin, mini.icons, lualine.nvim, bufferline.nvim, noice.nvim, which-key.nvim
- **编辑**: flash.nvim, mini.pairs, neo-tree.nvim

## License

[MIT](LICENSE)
