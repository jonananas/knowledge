
# 10 real-world stories of how we’ve compromised CI/CD pipelines

<https://research.nccgroup.com/2022/01/13/10-real-world-stories-of-how-weve-compromised-ci-cd-pipelines/>
REMOVE THIS LATER: <https://git.algoryx.se/algoryx/guilds/software-development-and-process/-/issues/58>


- Do not store secrets in repo
- Do not enable directory listings on web directories
- How big do we have to be before we get (a lot) more restrictive with build permissions, i.e. permission to run groovy on Jenkins
- Prefer to run Runners isolated
- We should have a look at kaniko to minimize attack vectors

## Jenkins with multiple attack angles

- Attack #1: “It Always Starts with an S3 Bucket…”
  - Hardcoded Git credential in script file
  - Switch to admin account - how?
- Attack #2: Privilege Escalation in Hardened Environment
  - builder role  allowed NCC Group consultants to run Groovy code and dump credentials of Jenkins users and other secrets
Attack #3: Confusing Wording in a Plugin

## GitLab CI/CD Pipeline Attacks

- Attack #4: Take Advantage of Protected Branches
  - GitLab priviliged runners could spin up new containers and escape to host
  - Shared runners meant users from one repo could get credentials from another
- Attack #5: GitLab Runners Using Privileged Containers
  - Same: GitLab priviliged runners could spin up new containers and escape to host
  - Docker in Docker (DIND) within a privileged container to execute nested Containers
- Attack #6: Highly Privileged Shared Runners could claim jobs associated with sensitive Environment Variables and Privileged Kubernetes Environments.
  - Same: Privileged Runners should not be configured as Shared Runners
- Attack #7: Runners Exposed Secrets to Untrusted CI/CD Jobs
  - Same: Shared runners meant users from one repo could get credentials from another
- Attack #8: Host Docker Daemon Exposed to Shared GitLab Runner
  - Same: GitLab priviliged runners could spin up new containers and escape to host
  - supports rootless Docker building such as kaniko?

## Kubernetes

- Attack #9: Kube2IAM
  - “sts assume-role *” line in the AWS role that Kube2IAM was using allowed get admin privileges on the main AWS tooling account for a bank
- Attack #10: The Power of a Developer Laptop
  - pod had an SSH key lying on disk that went to the Jenkins master node
  - pipeline crashed and dumped out environment variables
  - specify another AWS account to control the clusters - admin privileges on EKS.
