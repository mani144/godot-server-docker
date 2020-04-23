FROM alpine:3.7

ENV GODOT_VERSION "3.2.1"
ENV GODOT_V_TYPE "server"

RUN apk update && apk add --no-cache \
    ca-certificates \
    git \
    unzip \
    wget 

RUN wget https://downloads.tuxfamily.org/godotengine/${GODOT_VERSION}/Godot_v${GODOT_VERSION}-stable_linux_${GODOT_V_TYPE}.64.zip \
    && unzip Godot_v${GODOT_VERSION}-stable_linux_${GODOT_V_TYPE}.64.zip \
    && mv Godot_v${GODOT_VERSION}-stable_linux_${GODOT_V_TYPE}.64 /usr/local/bin/godot \
    && rm -f Godot_v${GODOT_VERSION}-stable_linux_${GODOT_V_TYPE}.64.zip
