FROM alpine:latest

# Install Python and pip
RUN apk update && \
    apk add --no-cache python3 py3-pip

# Set up a working directory
WORKDIR /app

# Copy your application code to the container
COPY . /app

CMD ["python3", "app/app.py","sudo","service","docker","start"]