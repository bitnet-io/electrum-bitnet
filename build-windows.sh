docker run -it -d \
    -v /opt/electrum-bitnet:/opt/wine64/drive_c/electrum \
    --rm \
    --workdir /opt/wine64/drive_c/electrum/contrib/build-wine \
    electrum-bitnet-build-win \
    
