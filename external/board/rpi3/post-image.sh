#!/bin/sh
BOARD_DIR="$(dirname $0)"
BOARD_NAME="$(basename ${BOARD_DIR})"
GENIMAGE_CFG="${BOARD_DIR}/genimage-${BOARD_NAME}.cfg"
GENIMAGE_TMP="${BUILD_DIR}/genimage.tmp"
echo "************************************"
echo ${BINARIES_DIR}
echo "************************************"

cp ../external/board/${BOARD_NAME}/config.txt ${BINARIES_DIR}/config.txt
cp ../external/board/${BOARD_NAME}/cmdline.txt ${BINARIES_DIR}/cmdline.txt

mv ${BINARIES_DIR}/zImage ${BINARIES_DIR}/kernel7.img

rm -rf "${GENIMAGE_TMP}"
echo "start image"

genimage                           \
	--rootpath "${TARGET_DIR}"     \
	--tmppath "${GENIMAGE_TMP}"    \
	--inputpath "${BINARIES_DIR}"  \
	--outputpath "${BINARIES_DIR}" \
	--config "${GENIMAGE_CFG}"

echo "done"
exit $?
