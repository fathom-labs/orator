FROM python:3.7

# Set working directory
WORKDIR /app

# Install system dependencies
RUN apt-get -y update
RUN apt-get -y install git libpq-dev

# Install Python dependencies
RUN python -m pip install --upgrade pip

# Copy over app code
COPY . .