FROM oven/bun

WORKDIR /app

# Install app dependencies
COPY package.json ./
COPY bun.lockb ./
RUN bun install

# Copy your files
COPY src ./
COPY  bsconfig.json ./
COPY rinha/source.rinha.json rinha/source.rinha.json

# Build the project
RUN bun run res:build

# Start the app
CMD [ "bun", "run" "Main.bs.js" ]