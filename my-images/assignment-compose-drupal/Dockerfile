# create your custom drupal image here, based of official drupal
FROM drupal:9

RUN apt-get update && \
    apt-get install -y git && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /var/www/html/themes

RUN git clone --branch 8.x-4.x --single-branch --depth 1 https://git.drupalcode.org/project/bootstrap.git && \
    chown -R www-data:www-data bootstrap

WORKDIR /var/www/html
