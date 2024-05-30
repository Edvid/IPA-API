# Shell IPA

Simple shell script for retriving hard to write symbols via smart fuzzy finding search!

![showcase](showcase.gif)

# Linux Installation

clone this repo to some location
```bash
git clone https://github.com/Edvid/shell-IPA $HOME/.shell-ipa
```
add that location to your path
```bash
echo 'PATH="$HOME/.shell-ipa:$PATH"' >> $HOME/.bashrc
# You may also just paste PATH="$HOME/.shell-ipa:$PATH" into your .bashrc file manually
```
enjoy ipa shell script!
```bash
echo helo$(ipa nearcloback) w$(ipa opmidcentunr)ld
```

# Usage

the ipa shell script can be used in two ways, with and without parameter

## Without parameter

if you just run
```bash
ipa
```
you will be met by a fuzzy finder screen where you can search for the symbol
you're looking for by name. Wiht a fuzzy finder you won't have to type the
exact name of the symbol you're looking for. For example, to find the
"Voiceless_uvular_plosive", the search "voiceless_u" will suffice, but so will
"lessuvu" and even "lsu". To find the "Voiceless_uvular_fricative", the search
"voiceless_uvular_f" would be needed without fuzzy finding, but with fuzzy
finding, "lsuf" would be enough.

You can also use the arrow keys (or CTRL+j CTRL+k) to navigate between all options that match
the fuzzy finding, but it defaults to what the search engine thinks is the
best fit given your search. You select by pressing Enter.

## With parameter

You can also use the program with a single parameter
```bash
ipa omfrr
```

This will return the letter it believes is the best match given the parameter,
without opening an interactive fuzzy finder.
This means it can be used in compound commands like so

```bash
echo Danish person thinking: $(ipa omfrr)$(ipa long)m
# Results in:
# Danish person thinking: œːm
```
