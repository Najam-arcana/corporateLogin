# Use the latest Python 3.12-slim base image
FROM python:3.12-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the current directory's contents into the container
COPY . /app

# Install dependencies from requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 5000 for Flask
EXPOSE 5000

# Command to run your Flask app
CMD ["python", "app.py"]
