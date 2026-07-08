#!/bin/bash
clone_if_missing() {
    local repo_url=$1
    local branch=$2
    local target_dir=$3
    if [ ! -d "$target_dir" ]; then
        echo "Cloning $target_dir..."
        if [ -n "$branch" ]; then
            git clone "$repo_url" -b "$branch" "$target_dir"
        else
            git clone "$repo_url" "$target_dir"
        fi
        echo "Done."
    fi
}

# Git clones
clone_if_missing "https://github.com/tiraq-official/android_device_motorola_fogos.git" "lineage-23.2" "device/motorola/fogos"
clone_if_missing "https://github.com/tiraq-official/android_device_motorola_sm6375-common.git" "lineage-23.2" "device/motorola/sm6375-common"
clone_if_missing "https://github.com/tiraq-official/proprietary_vendor_motorola_fogos.git" "lineage-23.2" "vendor/motorola/fogos"
clone_if_missing "https://github.com/tiraq-official/proprietary_vendor_motorola_sm6375-common.git" "lineage-23.2" "vendor/motorola/sm6375-common"
clone_if_missing "https://github.com/tiraq-official/android_kernel_motorola_sm6375.git" "lineage-23.2" "kernel/motorola/sm6375"

# Additional repos (unchanged)
clone_if_missing "https://github.com/tiraq-official/android_hardware_motorola" "lineage-23.2" "hardware/motorola"
clone_if_missing "https://github.com/JNWSG/hardware_dolby.git" "16.0" "hardware/dolby"
clone_if_missing "https://github.com/tiraq-official/android_hardware_samsung_slsi_nfc.git" "" "hardware/samsung_slsi/nfc"
clone_if_missing "https://gitea.com/JNWSG/vendor_motorola_MotCamera4.git" "16.0" "vendor/motorola/MotCamera4"
