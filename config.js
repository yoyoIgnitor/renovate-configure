const repos = JSON.parse(process.env.REPOSITORIES || '[]');

module.exports = {
  // endpoint: "github.com",
  platform: 'github',
  repositories: repos.repositories,
  onboardingConfig: {"$schema": "https://docs.renovatebot.com/renovate-schema.json"},
  extends: ["local>gkiranch/renovate-configure"],
  // username: 'gk-self-hosted-renovate[bot]',
  gitAuthor:"GK self-hosted Renovate Bot <123456+gk-self-hosted-renovate[bot]@users.noreply.github.com>",  
  "hostRules": [
    {
      "matchHost": "docker.io",
      "hostType": "docker",       
    }
  ]
}