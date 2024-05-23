#!/bin/sh

# DO USERNAME / PASSWORD CHECKS
# GET USER INFO FROM SOMEWHERE
# ...

if [ "$SFTPGO_AUTHD_KEYBOARD_INTERACTIVE" = "1" ]; then
    echo "{}"
    exit 0
fi

echo '{
    "username": "test",
    "status": 1,
    "permissions": {
        "/":["*"]
    },
    "virtual_folders": [
        {
            "name": "My Virtual Folder",
            "mapped_path": "/srv/sftpgo/data/my_virtual_folder",
            "filesystem": {
                "provider": 0
            },
            "virtual_path": "/"
        }
    ]
}'
