# Use official Python image
FROM python:3.9-slim

# Set workdir inside container
WORKDIR /app

# Copy files
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .

# Run the app
CMD ["python", "app.py"]
