#Image from k8base
FROM uvaan-registry2:5000/k8base:r13

#Change user to root
USER root

#add new user node to system
#RUN adduser node -G root

WORKDIR /opt/app-root/src/

COPY . ./

#COPY entrypoint.sh ./
RUN chmod 755 /opt/app-root/src/entrypoint.sh

RUN npm install
EXPOSE 3000

#change user to node
#USER node

CMD id && /opt/app-root/src/entrypoint.sh && /usr/bin/tail -f /dev/null
HEALTHCHECK --interval=10s CMD curl --fail http://localhost:3000/ping


CMD ["node", "app.js"]