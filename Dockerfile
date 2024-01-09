FROM terrastruct/d2:latest
LABEL title="Code Diagram"
LABEL version=0.1
ENV WORKDIR=/usr/src
VOLUME ["/source","/render"]
WORKDIR /usr/src

# Override d2 entrypoint
ENTRYPOINT ["/bin/sh","-c"]

# Render each .d2 file in /source to a .png image in /render
CMD ["for f in /source/*.d2; do d2 /source/$(basename ${f}) /render/$(basename ${f}).png; done"]