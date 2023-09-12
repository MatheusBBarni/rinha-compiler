FROM oven/bun

WORKDIR /app

# Install app dependencies
COPY package.json ./
COPY bun.lockb ./
RUN bun install

# Copy folders
ADD src ./

# Copy your files
COPY . .
COPY ./rinha/test.json /rinha/test.json

# Build the project
RUN bun run res:build

# Start the app
CMD [ "bun", "run", "Main.bs.js" ]