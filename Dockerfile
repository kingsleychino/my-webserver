# Use official Python base image
FROM python:3.11-slim

# Set working directory inside container
WORKDIR /app

# Copy dependencies file and install
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy app source code
COPY app/ .

# Expose the port your app runs on
EXPOSE 5000

# Command to run the app
CMD ["python", "app.py"]
