# Dockerfile for ESPHome project based on Python Slim

# Use the Python 3.8 Slim base image
FROM python:3.8-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements.txt file from the current directory into the container
COPY requirements.txt ./

# Install required Python packages
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port specified in your config.yaml
EXPOSE 6053

# Additional instructions to build your ESPHome project
# COPY config.yaml ./  # Example of how to copy a configuration file
# ...

# Command to run your project, if needed
# CMD ["python", "app.py"]
