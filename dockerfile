# Use the official Ruby image as a base image
FROM ruby:3.0
 
# Install dependencies for the Ruby application (you can add more as needed)
RUN apt-get update && apt-get install -y \
    build-essential \
    libssl-dev \
    libreadline-dev \
    zlib1g-dev \
    libsqlite3-dev
 
# Set the working directory in the container
WORKDIR /app
 
# Copy the Ruby application files into the container
COPY . /app
 
# Install any gems (assuming you have a Gemfile in the project)
RUN bundle install
 
# Expose the port that your Ruby app listens on (e.g., 4567 for Sinatra apps)
EXPOSE 4567
 
# Command to run the Ruby app (modify this to suit your app, e.g., Sinatra or Rails)
CMD ["ruby", "app.rb"]
