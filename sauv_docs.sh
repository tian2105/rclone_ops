# Sauvegarde de mes documents
if [ -z ${RCLONE_CONFIG_PASS+x} ]; then
	if [ $# -gt 0 ]; then
		RCLONE_CONFIG_PASS = $1
	else
		read -sp "Mot de passe RCLONE ? " RCLONE_CONFIG_PASS
		echo $RCLONE_CONFIG_PASS
	fi
	export RCLONE_CONFIG_PASS
fi

rclone sync -v --update local:/mnt/48A8E7A1599D34E7/Documents/ FarmCrypt:/Docs/ >> rclone_sync.log 2>&1

