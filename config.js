const repos = JSON.parse(process.env.REPOSITORIES || '[]');

module.exports = {
  // endpoint: "github.com",
  platform: 'github',
  repositories: repos.repositories,
  onboardingConfig: {"$schema": "https://docs.renovatebot.com/renovate-schema.json"},
  extends: ["local>yoyoIgnitor/renovate-configure"],
  // username: 'gk-self-hosted-renovate[bot]',
  username: 'test',
  gitAuthor:"GK self-hosted Renovate Bot <123456+gk-self-hosted-renovate[bot]@users.noreply.github.com>",  
  "hostRules": [
    {
      "matchHost": "kiranrenovate.jfrog.io",
      "hostType": "docker",
      "username": process.env.RENOVATE_ART_SECRET_USERNAME,
      "password": process.env.RENOVATE_ART_SECRET_PASSWORD,            
    },
    {
      "matchHost": "kiranrenovate.jfrog.io",
      "hostType": "maven",
      "username": process.env.RENOVATE_ART_SECRET_USERNAME,
      "password": process.env.RENOVATE_ART_SECRET_PASSWORD,            
    }
  ]
}