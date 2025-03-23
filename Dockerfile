# Use official Python image as a base
FROM python:3.12

# Set working directory
WORKDIR /usr/src/app

# Copy project files
COPY Sl_3_Assignment_2/ .

# Copy requirements.txt from the root directory
COPY requirements.txt .

# Upgrade pip and install dependencies
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Expose port 8000
EXPOSE 8000

# Run the application (if manage.py or app.py exists)
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
