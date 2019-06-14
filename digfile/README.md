### Run command
```.bash
$ digdag run for_test.dig --session "yyyy-mm-dd hh:mm:ss"

# Run with parameter
$ digdag run if_test.dig --session "2018-04-17 00:00:00" -p param=true
```

### Notes
included file should be placed in lower directory

```.bash
# incl/flag.dig
flag:
  param: true
```

```.bash
# include_test.dig
_export:
 !include : 'incl/flag.dig'
```
