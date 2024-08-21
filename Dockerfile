FROM python:3.11

# Install system dependencies
RUN apt update -y && apt upgrade -y && \
    apt install -y --no-install-recommends git && \
    rm -rf /var/lib/apt/lists/*

# Set the working directory
WORKDIR /app

# Copy the application files into the container
COPY . .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Set the default command to run your application
CMD ["python3", "main.py"]
