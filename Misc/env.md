> Note: .env, .env.development, and .env.production files should be included in your repository as they define defaults. .env*.local should be added to .gitignore, as those files are intended to be ignored. .env.local is where secrets can be stored. -- [Default Environment Variables](https://nextjs.org/docs/basic-features/environment-variables)

# Typical README with .env instructions:

## Getting Started
1. create .env.local file in root folder with values of:
```
SANITY_DATASET_NAME=YOUR_DATASET_NAME // from sanity dashboard
SANITY_PROJECT_ID=YOUR_PROJECT_ID // from sanity dashboard
SANITY_PREVIEW_SECRET=YOUR_PREVIEW_SECRET // unique string
SANITY_API_TOKEN=YOUR_API_TOKEN // from sanity dashboard
```
2. Run the development server:
```
npm run dev
# or
yarn dev
```
Open http://localhost:3000 with your browser to see the result.

# References
[Default Environment Variables](https://nextjs.org/docs/basic-features/environment-variables)
[How I Setup Environment Variables in NodeJS...](https://coffeencoding.com/how-i-setup-environment-variables-in-nodejs)
[env-examples.md](https://gist.github.com/ericelliott/4152984)