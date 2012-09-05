Description
===========

Assumes ZSH already installed from using the users cookbook and associated data bag configuration.

Add this to your run list.

    recipe[oh-my-zsh]

Also you can define the users that should have oh-my-zsh installed.

eg.

    [:oh_my_zsh][:users] = ['deploy', 'user', 'bob']

FLOW3 Plugin
============

This is just an addon for the oh-my-zsh recipe to add the `FLOW3<http://flow3.org>`_ plugin.

The plugin can be found  here: https://github.com/sandstorm/oh-my-zsh-flow3-plugin