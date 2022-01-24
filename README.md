# Node Image with Private Registry

Docker image for building node projects (that publish and use a private repository).

## Main Environment Variables

The entrypoint script will generate the .npmrc file with necessary repositories.

| Variable              | Description                                |
| --------------------- | ------------------------------------------ |
| NPM_REGISTRY          | Default NPM Registry                       |
| NPM_USER              | Default NPM Registry username for auth     |
| NPM_PASS              | Default NPM Registry password for auth     |
| NPM_SCOPE_{SCOPE}     | Add scope URL to repository (can include basic auth) |
| NPM_REGISTRY_{NAME}   | URL with auth to add login for a registry  |


## Utility Scripts

| Script                     | Description                                                                                                 |
| -------------------------  | ----------------------------------------------------------------------------------------------------------- |
| `git-current-verson`       | Get the most recent Git tag from history, defaulting to 1.0.0                                               |
| `gitlab-tag`               | Using GitLab CI variables, increments last Git tag semver (patch) and commits version update (with new tag) |
| `gitlab-tag-commit`        | Using GitLab CI variables, sets version in package.json and commits change with new tag                     |
| `increment-version`        | Given a semver version, increments by given amount (e.g `increment-version path 1.0.0`)                     |
| `npm-set-version`          | Set version in package.json (e.g `npm-set-version 1.0.0`)                                                   |
| `url-add-auth`             | Adds given credentions to given url - `url-add-auth <url> <user> <pass>`                                    |

