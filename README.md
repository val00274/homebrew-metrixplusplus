homebrew-metrixplusplus
====

How do I install Metrix++ formula?
----

Just `brew tap val00274/metrixplusplus` and then `brew insall metrixplusplus`.

Usage
----

See `http://metrixplusplus.sourceforge.net/`.

```sh
$ metrix++ collect --std.code.lines.code --std.code.complexity.cyclomatic
$ metrix++ view
$ metrix++ limit --max-limit=std.code.complexity:cyclomatic:7
```

