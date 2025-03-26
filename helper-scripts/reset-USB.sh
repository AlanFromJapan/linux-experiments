#!/bin/bash

#credits to https://askubuntu.com/questions/1359116/usb-getting-cannot-enable-maybe-the-usb-cable-is-bad-error-with-multiple-dev#1450051

# Change to superuser
#sudo su

# Get the list of USB devices managed by xhci_hcd
devices=$(ls -1 /sys/bus/pci/drivers/xhci_hcd | grep '0000:')

echo "################# Resetting USB ..." | sudo tee /dev/kmsg

# Unbind each device
for device in $devices; do
    echo -n "$device" | sudo tee /sys/bus/pci/drivers/xhci_hcd/unbind
done

# Bind each device
for device in $devices; do
    echo -n "$device" | sudo tee /sys/bus/pci/drivers/xhci_hcd/bind
done

echo "Unbinding and binding of USB devices completed."
echo "################# Resetting USB completed." | sudo tee /dev/kmsg
