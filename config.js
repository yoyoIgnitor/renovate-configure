const repos = JSON.parse(process.env.REPOSITORIES || '[]');

module.exports = {
  // endpoint: "github.com",
  platform: 'github',
  repositories: repos.repositories,
  onboardingConfig: {"$schema": "https://docs.renovatebot.com/renovate-schema.json"},
  extends: ["local>yoyoIgnitor/renovate-configure"],
  // username: 'gk-self-hosted-renovate[bot]',
  gitAuthor:"GK self-hosted Renovate Bot <123456+gk-self-hosted-renovate[bot]@users.noreply.github.com>",  
  "hostRules": [
    //{
    //  "matchHost": ["docker.io"],
    //  "hostType": "docker",       
    //},
    //{
    //    "matchHost": ["quay.io"],       
    //},

    {
      "matchHost": "https://kiranrenovate.jfrog.io",
      "hostType": "docker",
      "username":  process.env.RENOVATE_ART_SECRET_USERNAME,
      "password": process.env.ARTIFACTORY_API_KEY, 
      "authType": "Basic"     
    }
  ]
}