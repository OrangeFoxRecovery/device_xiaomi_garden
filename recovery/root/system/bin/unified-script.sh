#!/system/bin/sh
# This script is needed to automatically set device props.

load_dandelion()
{
    resetprop "ro.product.model" "Redmi 9A"
    resetprop "ro.product.name" "dandelion"
    resetprop "ro.build.product" "dandelion"
    resetprop "ro.product.device" "dandelion"
    resetprop "ro.vendor.product.device" "dandelion"
}

load_angelica()
{
    resetprop "ro.product.model" "Redmi 9C"
    resetprop "ro.product.name" "angelica"
    resetprop "ro.build.product" "angelica"
    resetprop "ro.product.device" "angelica"
    resetprop "ro.vendor.product.device" "angelica"
}

load_cattail()
{
    resetprop "ro.product.model" "Redmi 9"
    resetprop "ro.product.name" "cattail"
    resetprop "ro.build.product" "cattail"
    resetprop "ro.product.device" "cattail"
    resetprop "ro.vendor.product.device" "cattail"
}

load_angelican()
{
    resetprop "ro.product.model" "Redmi 9C NFC"
    resetprop "ro.product.name" "angelican"
    resetprop "ro.build.product" "angelican"
    resetprop "ro.product.device" "angelican"
    resetprop "ro.vendor.product.device" "angelican"
}

load_angelicain()
{
    resetprop "ro.product.model" "POCO C3"
    resetprop "ro.product.name" "angelicain"
    resetprop "ro.build.product" "angelicain"
    resetprop "ro.product.device" "angelicain"
    resetprop "ro.vendor.product.device" "angelicain"
}

project=$(getprop ro.boot.hwname)
echo $project

case $project in
    "dandelion")
        load_dandelion
        ;;
    "angelica")
        load_angelica
        ;;
    "angelican")
        load_angelican
        ;;
    "angelicain")
        load_angelicain
        ;;
    "cattail")
        load_cattail
        ;;
    *)
        load_dandelion
        ;;
esac

exit 0
