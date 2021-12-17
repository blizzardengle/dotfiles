#!/bin/bash

from="$PWD/.bashrc"
to="$HOME/.bashrc"
str="# Link to a tracked version of .bashrc"

# Does the user have this dotfile already?
if [ ! -f "$to" ]; then
	# No, make it first
	touch $to
	echo -e "#!/bin/bash\n" >> "$to"
	echo "$str" >> "$to"
else
	# Yes, but have we altered it (installed) already?
	if grep -q "$str" "$to"; then
		# Yes, do not append the loader since it exists already
		echo "Already installed."
		exit
	fi
	# No, start appending the loader
	echo -e "\n# Link to a tracked version of .bashrc" >> $to
fi

# Rest of the loader code
echo "if [ -f \"$from\" ]; then" >> "$to"
echo "	. \"$from\"" >> "$to"
echo "fi" >> "$to"
echo "Installed."
