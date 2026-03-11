# This is the base image to use
FROM python:3.12-slim
LABEL authors="izzaz"

# Set working directory
WORKDIR /app

# Create python venv
RUN pip install Flask

# install app
COPY hello.py /app/

# Set the ENV variables
ENV PATH="/opt/venv/bin:$PATH"
ENV FLASK_APP=hello

# Final Configs
EXPOSE 8000
CMD ["flask", "run", "--host", "0.0.0.0", "--port", "8000"]