#!/bin/sh

basepath=$(
	cd $(dirname $0)
	pwd
)

ln -sf $basepath/.zshenv ~/.zshenv

for rcfile in .zsh/rc/*; do ln -sfv $basepath/$rcfile ~/.zsh/rc; done
for zfile in .zsh/.z*; do ln -sfv $basepath/$zfile ~/.zsh; done



#!/bin/bash
# 配置したい設定ファイル
dotfiles=(.zshenv .zshrc .tmux.conf)

# .zshrc と .tmux.conf という設定ファイルのシンボリックリンクを
# ホームディレクトリ直下に作成する
for file in "${dotfiles[@]}"; do
        ln -svf $file ~/
done
