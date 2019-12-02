# Shakespeare
To get ```shakespeare.txt``` from the Gutenberg Project:
```
curl -o shakespeare.txt http://www.gutenberg.org/cache/epub/100/pg100.txt
```
This brought down a zipped version.

Unzip it.

```
$ openssl sha1 shakespeare.txt
SHA1(shakespeare.txt)= 591aebc7755e83521085745325a519ac6964053c
```
Now you can extract the sonnets:

```
sed -n '176,2799p' shakespeare.txt > sonnets.txt
```
you now have a much smaller file ```sonnets.txt``` with only the the sonnets because they lie between line 176 and 2799 of ```shakespeare.txt```

Extract Richard III
```
sed -n '91208,95748' shakespeare.txt > richard-iii.txt
```


## How to do this badly
Use ```sed``` to extract the sonnets.
Don't use https://www.opensourceshakespeare.org/
