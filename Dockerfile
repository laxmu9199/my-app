FROM node:20-alpine
WORKDIR /app
RUN echo '{"name":"my-app","version":"1.0.0"}' > package.json
RUN echo 'const http = require("http"); http.createServer((req,res) => { res.writeHead(200); res.end("Hello from my-app!"); }).listen(8080);' > index.js
EXPOSE 8080
CMD ["node", "index.js"]
