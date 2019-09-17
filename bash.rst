Bash Notes
==========

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

