README
======

Document covering my dotfile repo.

References
----------

- `Guides here <https://dotfiles.github.io/>`__.
  In particular `this one <http://www.anishathalye.com/2014/08/03/managing-your-dotfiles/>`__
  is helpful.
- Additionally, OS settings can be kept in an ``.macos`` file.

Todo
----

#. I think I may need to update the collected dotfiles.
   Some may have been changed.
   I added ``.inputrc``, for example.
#. Make sure to exclude ssh and gnupg keys. Maybe use a whitelist?

2019-09-26:

*   Try running ``install.sh`` on a directory with dotfiles already present. Does it overwrite them appropriately?

*   Rewrite the ``find`` part of script to find dotfiles.



Done
----

#. Create folder with dotfiles, under version control
#. Can keep dotfiles in subdirectories to make less cluttered.
   E.g. ones for ``vim``, ``bash``, ``git``, etc.
#. Create an *idempotent* install script which creates symlinks
   to these dotfiles in the correct locations on the filesystems.
   This will probably be a bash shell script.
