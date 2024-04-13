FROM node:18 AS build
WORKDIR /usr/src/app
COPY package*.json ./ 
RUN npm install -g pnpm && pnpm install
COPY . .
RUN pnpm run build
RUN pnpm install --prod
RUN pnpm store prune


FROM node:18-alpine3.19 AS run
WORKDIR /usr/src/app
RUN npm install -g pnpm
COPY --from=build /usr/src/app/dist ./dist
COPY --from=build /usr/src/app/node_modules ./node_modules
COPY --from=build /usr/src/app/package.json ./package.json
EXPOSE 3000
CMD [ "pnpm", "run", "start:prod" ]