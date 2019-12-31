# Dockerized Sidekiq UI

This unofficial docker image provides a sidekiq UI web app that can be run separtely from your application.

```
$ docker run -d -P stewartpark/sidekiq-ui:v6.0.2 -e REDIS_PROVIDER=REDIS_URL -e REDIS_URL=redis://....
```

The `latest` tag and its latest corresponding version tag will be updated nightly by the build job. Using the `latest` tag is not recommended as it will be untested and updated daily by an automated job.
