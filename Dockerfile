# Use the official Python image
FROM python:3.9

# Set the working directory
WORKDIR /app
# Copy the application files
COPY app.py requirements.txt /app/
# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt
# Expose the port the app runs on
EXPOSE 80
# Command to run the application
CMD ["python", "app.py"]
