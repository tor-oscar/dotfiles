if [ -x /usr/bin/dircolors ]; then
	test -r ~/.dircolors/dircolors && eval "$$(dircolors -b ~/.dircolors/dircolors)" || eval "$$(dircolors -b)"
fi
