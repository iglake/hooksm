#

find . -name \*.org -delete
jekyll build
rsync -avz --delete-delay _site/* _dist/

#scp -rp -P 1373 _site/* iglake@johnny.heliohost.org:public_html/
#rsync -avz -e "ssh  -p 1373 -l iglake" --delete-delay _site/* johnny.heliohost.org:public_html/
# protocol version mismatch -- is your shell clean?
# (see the rsync man page for an explanation)
# rsync error: protocol incompatibility (code 2) at compat.c(178) [sender=3.1.2]

