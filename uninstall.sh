#!/bin/bash
# Complete clean uninstaller for Mackie CR3-X System-Wide EQ setup

echo "Stopping CamillaDSP service..."
launchctl bootout gui/$(id -u) ~/Library/LaunchAgents/com.camilladsp.mackie.plist 2>/dev/null
rm -f ~/Library/LaunchAgents/com.camilladsp.mackie.plist
rm -f ~/mackie-cr3x-flat-monitoring-eq/camilladsp
rm -f ~/mackie-cr3x-flat-monitoring-eq/camilladsp.log

echo "Removing BlackHole audio driver..."
if [ -d "/Library/Audio/Plug-Ins/HAL/BlackHole2ch.driver" ]; then
    sudo rm -rf "/Library/Audio/Plug-Ins/HAL/BlackHole2ch.driver"
    echo "Restarting macOS audio engine..."
    sudo launchctl kickstart -kp system/com.apple.audio.coreaudiod
fi

echo "========================================================="
echo "✅ Uninstallation complete! Mac audio is 100% back to stock."
echo "========================================================="
