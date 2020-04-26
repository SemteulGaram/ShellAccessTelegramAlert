#!/bin/bash
echo "Your Telegram bot id>"
read botId
echo "Target chatroomid (ex. 123456789)>"
read chatroomId

url="https://api.telegram.org/bot${botId}/sendMessage?chat_id=${chatroomId}&text=ALERT - Server Shell Access - ${USER}%40${HOSTNAME}"
echo "curl -s -m 10 \"${url}\" 2> /dev/null > /dev/null" >> ~/.bashrc

echo $url
echo "Successful write script in ~/.bashrc"