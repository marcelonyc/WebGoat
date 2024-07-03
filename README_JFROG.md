# Prepare your environment to run this actions

# Runners
Change the `runs-on` setting to a runner of your choice. These workflows are set to run on self-hosted runners.

## JFrog setup
1. Create a project 
2. Create and Assign these repository types
    For Each DEV-QA-PROD
    use pattern <project>-<type>-<local/remote>-<stage: dev, qa,prod>
    - DOCKER_REPO: Local Docker repository to store your application image
    - REPO_DEPLOY_RELEASES: Local Maven repository to Deploy application

    Remote repos
    - REPO_RESOLVE_RELEASES: Remote Maven repository
    - REPO_RESOLVE_SNAPSHOTS: Same as REPO_RESOLVE_RELEASES
    - DOCKER_REMOTE: Remote Docker repository

3. Define the OIDC integration

Notes 
- Enable Xray scanning on each repo
- Under Xray Settings -> Indexed Resources -> Builds
    Include a pattern to match your build name Select bbuil By Pattern: `<build name>/**`    


# Github Settings
### Add this variables to the repository

- OIDC_PROVIDER_NAME: As defined in step 3 above
- DOCKER_REPO: As defined in step 2 above (dev repo only)
- DOCKER_REMOTE: As defined in step 2 above 
- REPO_DEPLOY_RELEASES: As defined in step 2 above (dev repo only)
- REPO_RESOLVE_RELEASES: As defined in step 2 above (dev repo only)
- REPO_RESOLVE_SNAPSHOTS: As defined in step 2 above (dev repo only)
- IMAGE_NAME: '<IMAGE NAME: your choice>'
- JF_PROJECT: Your project name as define in step one above
- JF_URL: FQDN of your JFrog instance (without https)
- JF_BUILD_NAME: Name your build
