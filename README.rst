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

*   Recollect backup dotfiles
*   Select the desired dotfiles to vesion control


Done
----

*   Create folder with dotfiles, under version control
*   Can keep dotfiles in subdirectories to make less cluttered.
    E.g. ones for ``vim``, ``bash``, ``git``, etc.
*   Create an *idempotent* install script which creates symlinks
    to these dotfiles in the correct locations on the filesystems.
    This will probably be a bash shell script.
*   Try running ``install.sh`` on a directory with dotfiles already present. Does it overwrite them appropriately?
*   Rewrite the ``find`` part of script to find dotfiles.

Some Bash Notes
---------------

.. code:: bash

    string="some string"
    sub="thing to find"
    rep=replacement

    # strips substring from beginning
    ${string#$sub}
    
    # strips substring from end
    ${string%$sub}
    
    # replace first instance of substring
    ${string/$sub/$rep}
    
    # replaces every instance of substring
    ${string//$sub/$rep}

    # find target of symlink
    readlink [file]

