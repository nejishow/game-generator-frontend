FROM nejishow/javanx
RUN pwd
COPY  ./dist/game-generator/ /usr/share/nginx/html
CMD sed -i -e 's/$PORT/'"$PORT"'/g' /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'
