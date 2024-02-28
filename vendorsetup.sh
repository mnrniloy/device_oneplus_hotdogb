# Clone/Fetch Upstream Device Dependencies
# Device Tree
echo "Cloning Vendor blobs"
git clone --depth=1 https://github.com/mnrniloy/vendor_oneplus_hotdogb.git -b 14 vendor/oneplus/hotdogb
echo ""

# URL of the ZIP file
zip_url="https://sourceforge.net/projects/niloysbuild/files/firmware_oneplus7t.zip/download"

# Destination directory for extraction
extract_dir="vendor/oneplus/hotdogb/"
extract_dir_check="vendor/oneplus/hotdogb/radio"

# Check if files already exist in the destination directory
if [ -e "$extract_dir_check/modem.img" ] && [ -e "$extract_dir_check/abl.img" ]; then
    echo "Firmware already exist. No need to download."
else
    # Download the ZIP file
    curl -LJO "$zip_url"

    # Check if the download was successful
    if [ $? -eq 0 ]; then
        echo "Firmware Download successful. Extracting..."
        # Extract the ZIP file
        unzip -q "*.zip" -d "$extract_dir"
        echo "Firmware Extraction complete."
        # Optional: Remove the downloaded ZIP file
        rm *.zip
    else
        echo "Firmware Download failed."
    fi
fi
