While42 jekyll prototype
============================

Just clone, modify and push.

To test locally, either you know your way with ruby and have the env installed, or use docker to serve it:

    docker build -t while42/web .
    docker run -d -v "$PWD:/src" -p 4000:4000 while42/web serve -H 0.0.0.0
    docker logs -f <container_id>

Then browse http://0.0.0.0:4000/w42-proto/

Templates
-----------

Check 
- https://github.com/shopify/liquid/wiki/liquid-for-designers
- http://jekyllrb.com/docs/variables/
