FROM nginx:alpine

COPY . /usr/share/nginx/html

RUN rm -f /usr/share/nginx/html/Dockerfile \
          /usr/share/nginx/html/.dockerignore \
          /usr/share/nginx/html/README.md

HEALTHCHECK --interval=30s --timeout=3s \
  CMD wget -qO- http://localhost:80/ >/dev/null || exit 1

EXPOSE 80