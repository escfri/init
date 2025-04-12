#!/bin/bash

TARGET_DIR="$HOME/Downloads/"
PACKAGE_NAME="init-arch"
PACKAGE_FORMAT="zip"
SETUP_EXE="init_arch.sh"

wget -P "$TARGET_DIR" "https://escfri.github.io/init/${PACKAGE_NAME}.${PACKAGE_FORMAT}"
(
  cd "$TARGET_DIR" &&
    unzip "${PACKAGE_NAME}.${PACKAGE_FORMAT}" &&
    (
      cd "$PACKAGE_NAME" &&
        bash ./"$SETUP_EXE"
    )
)
