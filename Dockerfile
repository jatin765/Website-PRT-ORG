FROM nginx

WORKDIR /usr/share/nginx/html

RUN rm -rf * && \
    apt-get update && \
    apt-get install -y git && \
    git clone https://github.com/jatin765/Website-PRT-ORG.git . && \
    rm -rf .git # Remove the .git directory from the cloned repository

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
