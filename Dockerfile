FROM alpine

RUN apk add apache2 php-apache2

RUN rm /var/www/localhost/htdocs/index.html
RUN echo '<?php phpinfo();' > /var/www/localhost/htdocs/index.php

CMD ["httpd","-D","FOREGROUND"]
