FROM ruby:2.7.8

WORKDIR /app

RUN apt-get update && apt-get install -y \
    build-essential \
    nodejs \
    sqlite3 \
    libsqlite3-dev \
    git \
    && rm -rf /var/lib/apt/lists/*

CMD ["bash"]