# V1 avec rsyncrypto

# cd /mnt/48A8E7A1599D34E7/
# # Récupération des clés cryptage des noms de dossiers
# rsyncrypto -d FarmServ/Docs/filemap Docs_backup/filemap   Docs_backup/filemap-keys ~/rr/backup.key
# echo "Clés de noms récupérées"
# rsyncrypto --trim=1 -n Docs_backup/filemap -vrd FarmServ/Docs Docs_backup/files Docs_backup/keys ~/rr/backup.key
# echo "Docs_backup créé"
# cd Docs_backup

# V2 avec rclone
rclone copy -v --update FarmCrypt:/Docs/ local:/mnt/48A8E7A1599D34E7/Backup_Docs
