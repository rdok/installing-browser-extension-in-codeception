### Installation
```bash
git clone https://github.com/rdok/installing-browser-extension-in-codeception
cd installing-browser-extension-in-codeception
composer install
java -jar selenium-server-standalone*
./vendor/bin/codecept run --env chrome
./vendor/bin/codecept run --env firefox
```

![Demo showcasing enabled extension](https://raw.githubusercontent.com/rdok/testing-browsers-extension-with-codeception/master/demo.jpg "Demo showcasing enabled extension")
