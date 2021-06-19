# DevOps Definition

> A methodology that helps engineering teams build products by continuously getting user feedback.

# DevOps Engineering Definition

> Practical use of DevOps within software engineering teams. Being able to build, test, release and monitor applications.

> DevOps Engineering is vital for engineering teams, especially as the product matures.

# DevOps Engineering Pillars (and Tools)

* Pull Request Automation (CI)
	* CI: [GitLab](https://about.gitlab.com), [Jenkins](https://www.jenkins.io), [LayerCI](https://layerci.com), [Bitrise](https://www.bitrise.io)
	* Code Review incl. automated Linting, Testing, Security Scanning pipelines [Codecov](https://about.codecov.io/), [Compodoc](https://compodoc.app/)
* Deployment Automation (CD)
	* Build and deploy: [Netlify](https://www.netlify.com/), [Vercel](https://vercel.com), [DeployHQ](https://www.deployhq.com/)
	* Canary deployments: [LaunchDarkly](https://launchdarkly.com)
	* Orchestration: [Terraform](https://www.terraform.io/)
* Application Performance Management
	* Metrics: [New Relic](https://newrelic.com/), [Prometheus](https://prometheus.io/)
	* Logging: [Sentry](https://sentry.io), [ELK](https://www.elastic.co/what-is/elk-stack)
	* Monitoring: [Pingdom](https://www.pingdom.com/)
	* Alerting: [PagerDuty](https://www.pagerduty.com/)

# Goals of DevOps Engineer

* Help developer change proposals get reviews and merged within 24 hours of when they are made
* Have the right tools in place that facilitate deployment without having to have too much custom code

# Continuous Integration Definition

> Developers pushing many small changes to a central git repository per day. These changes are verified by automatic software that runs comprehensive tests to ensure no major issues are seen by customers.
* CI is a vital tool to increase developer collaboration, prevent errors, and increase user satisfaction

# Ephemeral Environments

> Ephemeral environments are temporary deployments that contain a self-contained version of your application, generally for every feature branch. Temporary environments are overtaking traditional CI platforms as the most valuable DevOps paradigm for technical teams. Because these environments are made on every change, all stakeholders can review a change without needing a development environment.

> In general, ephemeral environments lie halfway between the development environments and staging environments - at the extreme, staging is entirely replaced with ephemeral environments in a Continuous Staging workflow. <https://continuousstaging.com/>

> The most common reason to adopt an ephemeral environment workflow is that it accelerates the software development lifecycle. Developers can review the results of changes visually, instead of needing to exclusively give feedback on the code change itself.

## Continuous Staging Definition

> CI/CD is merged with ephemeral environments to form a unified CI/CD and review process for every commit.

# Blue/Green Deployments

> Blue/green deployments are so-called because they maintain two distinct clusters, one named "blue" and one named "green" out of convention. If the current version of the application is deployed to "blue", we would deploy the new version to "green" and use it as a sort of staging environment to ensure that the new version of the app works correctly.

> After we're confident that the new version of the software works correctly, we would move over production load from "blue" to "green", and then repeat the cycle in the opposite direction.

## Canary Deployments

> If the new version of your app contains subjective changes (such as editing the UI), it might be ill-advised to push them to all users all at once. The changes may break users' workflows and need to be modified or rolled back in response to user feedback.

> In the context of blue/green deployments, a "canary deployment" would be to route around 5% of your users at random to the new cluster, and check that those users do not have negative feedback. If not, the rest of the users can also be switched over to the new cluster, and the cycle can repeat.

> Blue/green deployments are a powerful and extensible deployment strategy that works well with teams that are deploying a few times per day. The strategy only starts being problematic in continuous deployment scenarios where there are many services being deployed many times per day.

# The difference between VMs and containers

> If the idea for containers was to provide a "fake" version of Linux, the idea for VMs is to provide "fake" versions of the CPU, RAM, disk, and devices...

# Autoscaling vs serverless

> Autoscaling is usually discussed on the timeline of ~1 hour chunks of work. If you took the concept of autoscaling and took it to its limit, you'd get serverless: Define resources that are quickly started, and use them on the timeline of ~100ms. For example, a webserver might not exist at all until a visitor first requested a page. Instead, it would be spun up specifically for the request, then the page served, and then shut back down.

> Serverless is primarily used for services that are somewhat fast to start, and stateless. You wouldn't run something like a CI run within a serverless framework, but you might run something like a webserver or notification service. Autoscaling is primarily used for services that are slower to start or require state. You'd likely run a CI job within an autoscaled VM or container, not within a serverless container.

# References
* [Colin Chartier, LayerCI: DevOps Engineering Course](https://www.youtube.com/watch?v=j5Zsa_eOXeY)
* [What is DevOps?](https://layerci.com/blog/what-is-devops/)
* [What is Test Driven Development?](https://layerci.com/blog/what-is-test-driven-development/)
* [What is CI?](https://layerci.com/blog/what-is-ci/)
* [What is Code Coverage?](https://layerci.com/blog/what-is-code-coverage/)
* [Linting best practices](https://layerci.com/blog/linting-best-practices/)
* [What is an ephemeral environment?](https://layerci.com/blog/what-is-an-ephemeral-environment/)
* [The difference between VMs and containers](https://layerci.com/blog/the-difference-between-vms-and-containers/)
* [What are rolling deployments?](https://layerci.com/blog/what-are-rolling-deployments/)
* [What is a blue/green deployment?](https://layerci.com/blog/what-is-a-blue-green-deployment/)
* [What is autoscaling?](https://layerci.com/blog/what-is-autoscaling/)
* [Service discovery](https://layerci.com/blog/service-discovery/)
* [What is Log Aggregation?](https://layerci.com/blog/what-is-log-aggregation/)
* [Vital production metrics and how to collect them](https://layerci.com/blog/vital-production-metrics/)