# myenv
Just unix environment files/helpers/scripts

# emacs
Put the following commands in .emacs.d/init.el :
```
(setq rober-custom-file "~/.emacs.d/rober.el")
(load rober-custom-file)
```
# gtags

Note: It is important to add `GTAGSFORCECPP=1` to your .bashrc/init file.

## Config files

There is also a set of custom `gtags` configuration files included here.
Each is scoped to a different project and make a few minor alterations
to the default `gtags` configuration.  To use them type at the root of
the project directory:

```
gtags --gtagsconf rober_xxx.conf 
```

To generate a new `gtags` configuration file it is best to dump out
the default options into a new configuration file like so:

```
gtags --config > rober_gtags.conf
```
