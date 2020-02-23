# The personal dotfiles of Gigadoc2
As the title of this file (and the repository) implies, these are my personal
[dotfiles][1] for my PC and notebook (and maybe soon phone and servers). They
do not contain a lot of wisdom and are probably uninteresting to you. The main
purpose of this repository is for me to synchronize and manage my dotfiles, and
while I do not truly believe these being useful for anyone else, I have
taken plenty of inspiration from _other_ dotfile repositories, so I shall make
my dotfiles public too.[^1]

## License
Because I am very unsure about how licensing and copyright law works, I want to
clarify one thing immediately: As of now, and soon in the history, this git
repository contains files _which do not belong to me_ and I am not at liberty of
relicensing them. In fact, those files are probably the only thing with enough
creative value to fall under copyright in the first place. Those files are
either marked by having separate license information contained within them, or
having a `LICENSE` file placed next to them. Respect those, and _do not use this
repo if you don't understand the implications_.
Anything that is not marked in this way is hopefully not creative enough to fall
under copyright anyway (otherwise I am also in trouble, I've taken a lot of
configuration from unlicensed GitHub repositories), but if it should and I am
actually the one who would own the copyright, consider it as licensed under the
Unlicense.

## Repository structure
This repository is not used with any other tool than git. Following this nice
[summary][2], I use git with the working tree being my `$HOME`, but the git
directory not being stored in `$HOME/.git` but `$HOME/.local/share/dotfiles`,
where it does not clutter the home directory unnecessarily and does not
accidentially get used when I use regular git commands in a subfolder of my
`$HOME`.
If I want to clone this repo on a new machine, I can just `git clone --bare` the
repository into `$HOME/.local/share/dotfiles` again, and from there on use
this repository with `$HOME` as work-tree. This even allows me to view the
differences between the current state and my repo _before_ tracking the files in
it (a stark difference from the usual symlink solutions).

Because I have some files which I consider private enough not to share (note:
not access credentials, they go into a password manager!), I use a second,
non-public repository cloned (not bare, confusingly) into
`$HOME/.local/share/dotfiles-private`. I link to those files wherever I do not
want to include them here (and then instead commit the symlinks).

## How to not have the README.md clutter your `$HOME`
This repo is not meant to be cloned anyway, but you might wonder why I would
want to bear a `README.md` sitting around in my home directory. I don't and
thanks to [a smart person][3] I don't have to 😀

[1]: <https://en.wikipedia.org/wiki/Hidden_file_and_hidden_directory#Unix_and_Unix-like_environments> "Wikipedia on dotfiles"
[2]: <https://wiki.archlinux.org/index.php/Dotfiles#Tracking_dotfiles_directly_with_Git> "Tracking dotfiles directly with Git"
[3]: <https://github.com/TheLocehiliosan/yadm/issues/93#issuecomment-582585718>
[^1]: Not entirely true, there exists a second, private repository, see
"Repository structure".
