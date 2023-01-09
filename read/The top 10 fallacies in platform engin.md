# The top 10 fallacies in platform engineering

<https://humanitec.com/blog/top-10-fallacies-in-platform-engineering>

1. The prioritization fallacy
    - Count the cost of each task, prioritize according to cost of frequency * hours
2. The visualization fallacy
    - Probably should focus on
        - reach a lower change failure rate
        - clean up app confs etc
        - Check chart from #1!
3. The “wars you cannot win” fallacy
    - Usually Limit CI tools is a hard fight
    - testing and configuring these pipelines should be part of the team's workflow
    - Not really adaptable for us.
4. The “everything and everybody at once” fallacy
    - Cultural transformation is hard if you want to do this top-down, all at once and with a high degree of standardization.
    - People hate being Pushed
    - Build ambassadors and evangelists from within
5. The “the new setup isn’t better” fallacy
    - Your new platform has to be multiple times better than the previous setup or it will fail
    - Start small and with a real product mindset, overinvest in lighthouse application
6. The abstraction fallacy
    - waiting for central ops teams to figure out whether the option you requested should be standard
    - Let devs extend models on their own, nudge to keep on path.
7. The “loudest voice” fallacy
    - Good setups are designed for the weakest link in the chain and not the strongest.
    - Make the Kernel Hacker part of extending platform.
8. The freedom fallacy
    - Handing out AWS access to everyone, etc.
    - Yay, all of the downsides of working at scale with none of the benefits.
    - Eliminating key person dependencies by enabling developer self-service shouldn’t be throwing additional cognitive load on developers.
9. The “Google/Facebook/Netflix” fallacy
    - Be super critical if anybody in your group or any consultant drives comparisons to any of these brands
10. The “compete with AWS” fallacy
    - Thousands of companies have old data centers and some mainframes left. Everybody is struggling with Kubernetes. Do not worry.
    - **Everything you can let AWS do, let them do it** They have the best engineers in the world on the topic and probably 1000 times the resources you will ever have
    - focus on the stuff that moves the needle
