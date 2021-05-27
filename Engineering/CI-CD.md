# [Continuous Integration by Martin Fowler](https://www.martinfowler.com/articles/continuousIntegration.html)

> Continuous Integration is a process in which every push to your repo triggers a build and runs your tests automatically. A red flag is raised as soon as a faulty commit goes in. Pull requests should also be tested automatically before merging to avoid bugs that impact the whole team.

> Continuous Delivery is the extension of Continuous Integration. If the tests pass properly, the tested version is pushed to the production environment automatically.

Popular Continuous Integration servers are Jenkins, Travis, CircleCI, Bamboo, CodeShip and GitLab.

* [GitLab CI CD](https://about.gitlab.com/features/gitlab-ci-cd)
* [Video: Demo: CI/CD with GitLab](https://www.youtube.com/watch?v=1iXFbchozdY)
* [Video: Demo: Fun Fun Function CircleCI](https://www.youtube.com/results?search_query=Fun+Fun+Function+Continuous+Integration)

> In a Continuous Integration environment you should never have a failed integration build stay failed for long. A good team should have many correct builds a day. Bad builds do occur from time to time, but should be quickly fixed. The result of doing this is that there is a stable piece of software that works properly and contains few bugs. Everybody develops off that shared stable base and never gets so far away from that base that it takes very long to integrate back with it. Less time is spent trying to find bugs because they show up quickly.

> Every developer should commit to the repository every day. In practice it's often useful if developers commit more frequently than that. The more frequently you commit, the less places you have to look for conflict errors, and the more rapidly you fix conflicts. Frequent commits encourage developers to break down their work into small chunks of a few hours each. This helps track progress and provides a sense of progress.

> Many organizations do regular builds on a timed schedule, such as every night. This is not the same thing as a continuous build and isn't enough for continuous integration. The whole point of continuous integration is to find problems as soon as you can. Nightly builds mean that bugs lie undetected for a whole day before anyone discovers them. Once they are in the system that long, it takes a long time to find and remove them.

> If you have continuous integration, it removes one of the biggest barriers to frequent deployment. Frequent deployment is valuable because it allows your users to get new features more rapidly, to give more rapid feedback on those features, and generally become more collaborative in the development cycle.

# Resources
* [Wikipedia: DevOps Toolchain Diagram](https://about.gitlab.com/2017/10/04/devops-strategy)
* [Beyond CI/CD: GitLab's DevOps vision](https://about.gitlab.com/2017/10/04/devops-strategy)
