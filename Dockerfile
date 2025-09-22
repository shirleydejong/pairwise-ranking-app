# Gebruik een officiële Node.js LTS-versie als basisimage
FROM node:16-alpine AS builder

# Stel de werkdirectory in de container in
WORKDIR /app

# Kopieer de package.json en package-lock.json om dependencies te installeren
COPY . .

# Installeer projectdependencies
RUN yarn install

# Kopieer de rest van de applicatiebestanden
#COPY . .

# Bouw het project
RUN yarn build

# Stage 2: De serve-fase
FROM nginx:alpine

COPY --from=builder /app/build /usr/share/nginx/html

CMD ["nginx", "-g", "daemon off;"]