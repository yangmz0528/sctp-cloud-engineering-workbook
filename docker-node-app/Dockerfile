FROM node:21.6.0-alpine
WORKDIR /app

# (1) Copy everything
COPY . /app

# (2) Copy explicitly (multiple lines)
# COPY index.js /app
# COPY package-lock.json /app
# COPY package.json /app

# (3) Copy explicitly (single line)
# COPY index.js package-lock.json package.json /app

RUN npm install
EXPOSE 8080

CMD ["node", "index.js"]