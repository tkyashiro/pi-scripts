#!/bin/sh

cd `dirname $0`

sudo -u pi env HUBOT_SLACK_TOKEN=xoxb-3233821369-450506271188-oCZFWcNsFkJz3IEW70Ote9rc bin/hubot --adapter slack
