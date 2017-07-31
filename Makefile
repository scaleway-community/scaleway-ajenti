NAME =			ajenti
VERSION =		latest
VERSION_ALIASES =	1.x
TITLE =			Ajenti
DESCRIPTION =		Ajenti
SOURCE_URL =		https://github.com/scaleway/image-app-ajenti
VENDOR_URL =		http://ajenti.org

IMAGE_VOLUME_SIZE =	50G
IMAGE_BOOTSCRIPT =	stable
IMAGE_NAME =		Ajenti


## Image tools  (https://github.com/scaleway/image-tools)
all:	docker-rules.mk
docker-rules.mk:
	wget -qO - https://j.mp/scw-builder | bash
-include docker-rules.mk
