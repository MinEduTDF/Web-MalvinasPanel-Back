FROM occitech/cakephp
# Clona el repositorio 
RUN git clone  https://github.com/MinEduTDF/Web-MalvinasPanel-Back /Web-MalvinasPanel-Back
WORKDIR /Web-MalvinasPanel-Back
RUN composer install
