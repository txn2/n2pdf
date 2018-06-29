FROM alpine:3.7

RUN apk add --update --no-cache \
    libgcc libstdc++ libx11 glib libxrender libxext libintl libcrypto1.0 libssl1.0 \
    ttf-dejavu ttf-droid ttf-freefont ttf-liberation ttf-ubuntu-font-family \
    msttcorefonts-installer fontconfig ca-certificates

RUN update-ms-fonts
RUN fc-cache -f

COPY wkhtmltopdf /bin

ENTRYPOINT ["wkhtmltopdf"]
