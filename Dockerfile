FROM bitnami/node:9-prod
ENV NODE_ENV="production"
# Copy app's source code to the /app directory
COPY . /app

# The application's directory will be the working directory
WORKDIR /app

# Install Node.js dependencies defined in '/app/packages.json'
RUN npm install

ENV PORT 5000
EXPOSE 5000

# Start the application
CMD ["npm", "start"]
