#!/bin/sh

selenium-side-runner -s http://chromedriver:4444 -c "browserName=chrome goog:chromeOptions.args=[--headless,--nogpu,--disable-dev-shm-usage,--no-sandbox]" --output-directory /out /sides/change_dhcp_tim.side
