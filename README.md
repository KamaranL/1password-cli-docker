# 1password-cli-docker

> 1Password CLI in a lightweight Docker container

[![view on docker hub](https://badgen.net/docker/pulls/kamaranl/1password-cli?icon=docker&label=pulls)](https://hub.docker.com/r/kamaranl/1password-cli)

Get started by [creating a service account](https://developer.1password.com/docs/service-accounts/get-started/#create-a-service-account), then using the service account token in your `docker run` command:

```bash
docker run --rm -it -e OP_SERVICE_ACCOUNT_TOKEN="<your-service-account-token>" kamaranl/1password-cli user get --me
```

Refer to [1Password's developer documentation](https://developer.1password.com/docs/cli/use-cases) on how else you can utilize 1Password CLI.
