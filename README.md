# resume-app

A resume application, hosted in Azure

# Versioning

| Version | Keynote                              |
| ------- | ------------------------------------ |
| v0.1    | Adding versioning and github actions |

# Highest level Architecture

![High Level Architecture](./assets/high-level-arch.svg)

# Architecture Reasoning

## App Gateway

I had initally decided to use Application Gateway as my frontend IP service as it provides some very nice features around handling url paths and other magic. Additionally, it provides me some data governance as it will only route data within the Azure region it is deployed to.

The alternative would be to use Azure Front Door which is a global solution, but this is currently not a requirement for me.

## App Service

I initially decided on using Azure App Service as the method of hosting the website as it would allow for flexibility to extend the site with features in the future. However, this will likely end up as a one-off project on the application and then maintaining the website content and infrastructure so it makes more sense to use Azure Static Web Apps.

## Azure Functions

Similarly to App Services, my idea was that I'd use Azure Functions to communicate with a CosmosDB instance and pull the website content from the databse.

However, as it will likely be a static web app, while we could still use this approach it just becomes more infra and code to maintain which liekly does not get any additional love as time goes on.

# Github Actions

Currently, I have created some actions to handle PRs, commits, and merges into the main branch.

These currently require client secrets which are not ideal and I do plan to migrate to using OpenID Connect as a way to authenticate to Azure.
