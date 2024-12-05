# Use the official Python image
FROM python:3.11-slim

# Set the working directory
WORKDIR /app

# Copy project files into the container
COPY ./app /app
COPY requirements.txt /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port
EXPOSE 5000

# Run the Flask app
CMD ["python", "app.py"]