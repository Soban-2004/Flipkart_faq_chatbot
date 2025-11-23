# 1. Use a lightweight, stable Python base
FROM python:3.10-slim

# 2. Prevent interactive prompts
ENV DEBIAN_FRONTEND=noninteractive

# 3. Set working directory
WORKDIR /app

# 4. Install minimal OS dependencies (needed for Qdrant + embeddings + Selenium HTML parsing)
RUN apt-get update && apt-get install -y \
    build-essential \
    curl \
    git \
    && rm -rf /var/lib/apt/lists/*

# 5. Copy project files
COPY . /app

# 6. Upgrade pip (important)
RUN pip install --no-cache-dir --upgrade pip

# 7. Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# 8. Expose port for Chainlit
EXPOSE 8000

# 9. Start Chainlit app
CMD ["chainlit", "run", "app.py", "--host", "0.0.0.0", "--port", "8000"]
