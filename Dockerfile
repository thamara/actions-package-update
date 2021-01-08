FROM node:latest

LABEL version="0.11.0"
LABEL repository="https://github.com/thamara/actions-package-update"
LABEL homepage="https://github.com/thamara/actions-package-update"
LABEL maintainer="Sato Taichi <ryushi+actions@gmail.com>"

LABEL "com.github.actions.name"="GitHub Action for package.json update."
LABEL "com.github.actions.description"="Upgrades your package.json dependencies to the latest versions"
LABEL "com.github.actions.icon"="corner-right-up"
LABEL "com.github.actions.color"="gray-dark"

RUN apt-get update && apt-get install -y --no-install-recommends -y git
RUN yarn global add npm-check-updates
RUN yarn global add actions-package-update

ENTRYPOINT [ "actions-package-update" ]
