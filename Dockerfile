# Use an official Python image
FROM python:3.11-slim

# Set the working directory
WORKDIR /app

# Install the libraries
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy your project code into the container
COPY . .

# Command to run your Streamlit app
CMD ["streamlit", "run", "main.py", "--server.port", "8080", "--server.enableCORS", "false"]
