# Use an official Python runtime as a parent image
FROM python:3.12

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
# RUN pip install --trusted-host pypi.python.org -r requirements.txt
RUN pip install --no-cache-dir --upgrade -r requirements.txt

# Expose port 80 for the FastAPI app
EXPOSE 3000

# Run the command to start the FastAPI app
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "3000"]
