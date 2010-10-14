from snake.api import *


@task
def install():
    sh("ln -s ~/.vim/vimrc ~/.vimrc")
    sh("ln -s ~/.vim/gvimrc ~/.gvimrc")
    sh("git submodule init")
    sh("git submodule update")

@task
def update():
    sh("git submodule update")
