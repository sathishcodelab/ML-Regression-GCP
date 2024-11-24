# Use a small Python image as a base
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy the app files to the container
COPY . /app

RUN pip install scikit-learn

# Install Python libraries
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port Flask will run on
EXPOSE 8080

# Command to run the app
CMD ["python", "app.py"]
