# Öredev 2026 day 2

[Thursday agenda](öredev-2026-assets/20261105_080000_thursday_agenda.jpg)

## Takeaways

- AI moves work "upwards" towards strategy
- Build Lab software yourself, you need full control
- Blast radius of changes - risc review agent
- Specialized review agents, try out parallell review agents with orchestrator
    - WHen doing code reviews
    - KISS - solved a simpler way
    - SOLID
        - Breaks SRP?
        - duplication


## Recommended by others

- Building a Brainstorming Agent: A Practical Tour of LangChain4j for Production, Mohamed Ait Abderrahman
- Resistance Training in the Age of AI, Stina Qvarnström
- Post-quantum cryptography for .NET developers, Filip W
  - Jonas: Lyckades förklara hur det funkar - inte .NET-alls.
- Your Culture Is Leaking Data: Forecasting Cyber Attacks with Glassdoor Reviews, Lianne Potter
  - Förutsäga hackerattackar utifrån glassdoor review

## 9.00 The AI Revolution, Clive Thompson

![Session photo at 09:19:28](öredev-2026-assets/20261105_091928_.jpg)
![Session photo at 09:22:18](öredev-2026-assets/20261105_092218_.jpg)
![Session photo at 09:27:50](öredev-2026-assets/20261105_092750_.jpg)
![Session photo at 09:28:21](öredev-2026-assets/20261105_092821_straightened.jpg)
![Session photo at 09:37:01](öredev-2026-assets/20261105_093701_straightened.jpg)
![Session photo at 09:48:01](öredev-2026-assets/20261105_094801_straightened.jpg)
![Session photo at 09:48:47](öredev-2026-assets/20261105_094847_straightened.jpg)
![Session photo at 09:50:36](öredev-2026-assets/20261105_095036_.jpg)
![Session photo at 09:58:34](öredev-2026-assets/20261105_095834_.jpg)

PRO
- Faster to build things
  - Google +10% productivity
  - YC 10x productivity
- Faster to learn things
- Better Quality of decision - prototyping on the way

CON
- De-skills us?
  - I've been losing my codesense
  - Losing "Finger tips feeling"

## 10.20 Self-driving labs

![Session photo at 10:20:26](öredev-2026-assets/20261105_102026_.jpg)
![Session photo at 10:23:26](öredev-2026-assets/20261105_102326_straightened.jpg)
![Session photo at 10:29:11](öredev-2026-assets/20261105_102911_straightened.jpg)
![Session photo at 10:40:56](öredev-2026-assets/20261105_104056_straightened.jpg)
![Session photo at 10:47:10](öredev-2026-assets/20261105_104710_straightened.jpg)
![Session photo at 10:50:13](öredev-2026-assets/20261105_105013_straightened.jpg)
![Session photo at 10:56:08](öredev-2026-assets/20261105_105608_straightened.jpg)
![Session photo at 10:57:42](öredev-2026-assets/20261105_105742_straightened.jpg)

prof Ola Spjuth

Insilico - on the frontier of robotized automated labs

## 11:15 Taking cloud-native offline

![Session photo at 11:18:32](öredev-2026-assets/20261105_111832_.jpg)
![Session photo at 11:29:21](öredev-2026-assets/20261105_112921_.jpg)
![Session photo at 11:41:44](öredev-2026-assets/20261105_114144_straightened.jpg)

Patrick Stephens

[Companion demos for the talk: running cloud-native workloads in air-gapped, restricted, and on-prem environments](https://github.com/patrick-stephens/oredev-2026-taking-cloud-native-offline)

[Slides](https://docs.google.com/presentation/d/e/2PACX-1vQ2VbV5OFABtogJ73npyki935Q3ixJT58kczGY9gCMnXSNrOSspu061sSz5nvC2fzAf8W6CTAUfaR3u/pub?start=true&loop=false&delayms=60000)

Problem:
1. Dependencies
2. Architecture

## 13.00 Python Data Engines: State of the Union 2026

![Session photo at 13:03:33](öredev-2026-assets/20261105_130333_.jpg)
![Session photo at 13:13:28](öredev-2026-assets/20261105_131328_straightened.jpg)
![Session photo at 13:15:27](öredev-2026-assets/20261105_131527_straightened.jpg)
![Session photo at 13:17:59](öredev-2026-assets/20261105_131759_straightened.jpg)
![Session photo at 13:21:19](öredev-2026-assets/20261105_132119_straightened.jpg)
![Session photo at 13:33:11](öredev-2026-assets/20261105_133311_straightened.jpg)

Mimoune Djouallah

Data engineering
- raw files, transform, merge, write tables

Updates since last year
- Polars SQL
  - Given enough time, any DataFrame will have to support SQL
- Iceberg
- AI - very good at reproducing bugs

What does "fast" mean?
- File skipping, only read necessary data - requires data to be sorted based on queries
- The small-file problem, use big files
- prefer slow engine with good query-plan to fast engine with bad query-plan

dbt + iceberg --> nice combo!

## 13.55 AI won’t save your productivity – AI-human collaboration will

Sven Peters, Atlassian, AI Evangelist

Software factories, from the 60s - I hate it

Productivity gains stuck at 10-15% since 2 years???

Code is Cheap - Software isn't
LGTM code changes

Blast radius of changes - risc review

Tip: Loom from Atlassian for video feedback.

## 14 Arduino workshop

![Session photo at 14:02:49](öredev-2026-assets/20261105_140249_.jpg)
![Session photo at 14:04:04](öredev-2026-assets/20261105_140404_straightened.jpg)
![Session photo at 14:05:33](öredev-2026-assets/20261105_140533_straightened.jpg)
![Session photo at 14:08:18](öredev-2026-assets/20261105_140818_straightened.jpg)
![Session photo at 14:09:25](öredev-2026-assets/20261105_140925_straightened.jpg)
![Session photo at 14:09:55](öredev-2026-assets/20261105_140955_straightened.jpg)
![Session photo at 14:11:25](öredev-2026-assets/20261105_141125_.jpg)
![Session photo at 14:18:20](öredev-2026-assets/20261105_141820_straightened.jpg)
![Session photo at 14:32:21](öredev-2026-assets/20261105_143221_straightened.jpg)

[tutorial](https://docs.google.com/presentation/d/1ffOOCiMFx8dpCgMxdTJAF7kojO7-prXnNF8mgJjIDtg/edit?slide=id.h7a6597e963fca3dd_0_13#slide=id.h7a6597e963fca3dd_0_13)

https://bit.ly/oredev26-arduino

## 15.50 Brain interfacing in the real world

![Session photo at 15:54:21](öredev-2026-assets/20261105_155421_.jpg)
![Session photo at 15:54:22](öredev-2026-assets/20261105_155422_straightened.jpg)
![Session photo at 16:03:18](öredev-2026-assets/20261105_160318_straightened.jpg)
![Session photo at 16:07:50](öredev-2026-assets/20261105_160750_.jpg)
![Session photo at 16:29:24](öredev-2026-assets/20261105_162924_straightened.jpg)

prof Alex Casson

Low bandwidth, typically faster to type things in

AI for artifact removal in realtime on a phone
- using phone onboard AI hardware

Stimulating the brain
- electric
- magnetic
- audiotry
- etc


## 16.50 Endineering. Opportunities for change at the end

![Session photo at 17:01:42](öredev-2026-assets/20261105_170142_.jpg)
![Session photo at 17:25:12](öredev-2026-assets/20261105_172512_straightened.jpg)
![Session photo at 17:38:34](öredev-2026-assets/20261105_173834_straightened.jpg)
![Session photo at 17:39:48](öredev-2026-assets/20261105_173948_straightened.jpg)
![Session photo at 17:42:15](öredev-2026-assets/20261105_174215_straightened.jpg)
![Session photo at 17:44:52](öredev-2026-assets/20261105_174452_straightened.jpg)

Joe Macleod

