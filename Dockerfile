# Use an official Python runtime as a parent image
FROM python:3.10

# Set the working directory
WORKDIR /usr/src/app

# Copy requirements.txt
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code
COPY . .

# Expose the service port
EXPOSE 3002

# Set environment variables for the product-service
ENV PORT=3002

# Start the product-service
CMD ["python", "app.py"]