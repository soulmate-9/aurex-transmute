# system-wide .profile file for soulmate scripts

for d in /usr/share/soulmate/profile.d /etc/soulmate/profile.d ; do
	if [ -d "$d" ]; then
		for f in $d/*.sh; do
			[ ! -r "$f" ] || . $f
		done
		unset f
	fi
done
unset d
