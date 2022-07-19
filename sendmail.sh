EMAIL_SENDER="truongcongnam1207@gmail.com"
GOOGLE_APP_PASSWORD="qqwzcuxrhaooxfyb"
EMAIL_RECEIVER="truongcongnam1207@gmail.com"
SUBJECT="Send mail with nano bash scrip"
BODY="toi gio roi, danh de thoi!!!"
        curl -s -url 'smtps:/smtp.gmail.com:465' --ssl-reqd \
        --mail-from $EMAIL_SENDER \
        --mail-rcpt $EMAIL_RECEIVER \
        --user $EMAIL_SENDER:$GOOGLE_APP_PASSWORD \
        -T <(echo -e "From: $EMAIL_SENDER
To: $EMAIL_RECEIVER
Subject: $SUBJECT

  $BODY")

echo "done!"