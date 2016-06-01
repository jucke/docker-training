FROM busybox
RUN touch file1.txt
RUN touch file2.js
RUN touch something.html
RUN touch file100 \
          file200 \
          file300
ADD mycontext.txt /

ENTRYPOINT ["echo"]
