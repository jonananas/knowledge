# Öredev 2026 day 1

[Wednesday agenda](öredev-2026-assets/20261104_080000_wednesday_agenda.jpg)

## Arduino robot building workshop & challenge 10-12

## Takeaways

- Now is a good time to create your AI company, next 1-2 years
- MCP Inspector from Anthropic, start by npx
- A2A protocol for Agent to agent
- EU Artificial Intelligence Act: Risk levels
- Platform team - Lars har satt upp
- goldenpath and lint.sh - to have platform team help product teams as much as possible
- The problem with prompt injection, mixing data and instructions.
- Meetings are important!
- Complexity means no one sees the whole elephant

## 9.00 Emil of Neo4j keynote

![Session photo at 09:27:42](öredev-2026-assets/20261104_092742_.jpg)
![Session photo at 09:40:57](öredev-2026-assets/20261104_094057_straightened.jpg)
![Session photo at 09:44:58](öredev-2026-assets/20261104_094458_straightened.jpg)
![Session photo at 09:54:52](öredev-2026-assets/20261104_095452_straightened.jpg)
![Session photo at 10:01:14](öredev-2026-assets/20261104_100114_straightened.jpg)
![Session photo at 10:03:13](öredev-2026-assets/20261104_100313_straightened.jpg)
![Session photo at 10:03:38](öredev-2026-assets/20261104_100338_straightened.jpg)
![Session photo at 10:04:26](öredev-2026-assets/20261104_100426_straightened.jpg)

Developer first company

- Document intelligence
- Front data
  - Snowflake or Databricks
  - Neo4j can front it

85 of fortune 100 uses neo4j

### Story 1

Multi-tenant SAAS
Mismatch of the data and the building blocks of database infrastructure

"Proven that any data can be represented in RDB"

But table was really hard to represent this data structure

NEO - Network Engine, Of course
NEO - NEO Engine, Of course

300 million dollar revenue company


### Story 2 - fundraising

IMG

### Story 3 - We are not alone

AWS re:Invent - biggest dev conf in the world


## 10.20 Johan Esbjörner - Strands Agents

![Session photo at 10:24:43](öredev-2026-assets/20261104_102443_.jpg)
![Session photo at 10:24:43](öredev-2026-assets/20261104_102443_straightened.jpg)
![Session photo at 10:25:41](öredev-2026-assets/20261104_102541_straightened.jpg)
![Session photo at 10:26:26](öredev-2026-assets/20261104_102626_straightened.jpg)
![Session photo at 10:28:40](öredev-2026-assets/20261104_102840_straightened.jpg)

Strands from Amazon
strandsagents.com
Uses Bedrock by default - can i use something else?

MCP Inspector from Anthropic, start by npx

chromadb for rules, vector storage

Pydantic models (BaseModel) for output to web/javascript client


## 11:15 After the AI hype, Richard Campbell

![Session photo at 11:30:20](öredev-2026-assets/20261104_113020_.jpg)
![Session photo at 11:30:23](öredev-2026-assets/20261104_113023_straightened.jpg)
![Session photo at 11:44:44](öredev-2026-assets/20261104_114444_straightened.jpg)
![Session photo at 11:51:02](öredev-2026-assets/20261104_115102_straightened.jpg)

We are sceptible to language interaction with Software

ELIZA
Elis - LISP trees
Watson
Big Blue - power of nintendo Wii - ihpone 15 is better
HAL 9000

AI is a marketing and scify term
Hinton - back propagation 1990s? - nobel price
  - ImageNet 2010s
    - GPU:s and Cuda
  - Google Brain 2013/2014
Google Lens was impossible then, now free.
Siri - SRI bought by Apple and renamed to Siri
OpenAI started by the "paypal mafia"
  - Pull people from Google Brain
  - Except they lied about the open part
The demand of radiologist went up because of model understanding röntgen images
At GPT-2 OpenAI closed their source because of power of the model
Microsoft were searching for workloads for Azure
  - Put a billion dollars in --> OpenAI used Azure --> billion dollars back

Neural Scaling Laws - paper
  - Ahmodi on the paper
  - Just go big - train on more data - more compute
  - Later disproven

May 2020 - GPT 3
  - Github Copilot is the first GPT 3 user 2021

OpenAI 2022
  - GPT 3.5
  - ChatGPT a low cost to do the training
  - Record of time to 1000 million users - 2 months
  - Kicks of the hype cycle
  - We are 4 years into the hype cycle

DeepSeek 2023? 2024?
  - low cost efficient model

GPT-5 aug 2025
  - expansion is kind of over
  - kind of a flow

Adversarial agents have compelling output of code/outcome

The goal was never to write code - but to create value
Datacenters
  - people don't like them
  - doesn't pay taxes - automatic
  - locking up good places for data centers

Magnificient 7 is now 10 at 30%?

Microsoft is an infrastructure company now, owning land and datacenters

We're all re-learning how to create software

GPT has become some peoples friends

Proteine folding - AlphaFold AI by DeepMind
  - changed omics


## 13.00 AI Agentic med Jessica Andersson

![Session photo at 13:01:30](öredev-2026-assets/20261104_130130_.jpg)
![Session photo at 13:20:07](öredev-2026-assets/20261104_132007_.jpg)

CNCF Ambassador

jesande.io

Delegate to agent

Fragmentation has an immense blast radius
- expensive

Platform team
- golden path and guardrails keep complexity and cognitive load down

### Questions

- Why goldenpath compared to skill?
  - Deterministic?
  - cmdline tool used by human and AI
  - Updating service is a lot easier than updating skills

## 13.55 Prompt Injection is the new SQL Injection, Linus Kvarnhammar

![Session photo at 14:01:16](öredev-2026-assets/20261104_140116_.jpg)
![Session photo at 14:01:16](öredev-2026-assets/20261104_140116_straightened.jpg)
![Session photo at 14:05:40](öredev-2026-assets/20261104_140540_.jpg)
![Session photo at 14:05:40](öredev-2026-assets/20261104_140540_straightened.jpg)
![Session photo at 14:27:41](öredev-2026-assets/20261104_142741_straightened.jpg)
![Session photo at 14:30:45](öredev-2026-assets/20261104_143045_straightened.jpg)

Pentester

Johan Rheberg - office document could search email and exfiltrate secret data

Fix:
- Untrusted content
- Access to private data
- External access

## 14.55 secure code reviews

![Session photo at 15:24:44](öredev-2026-assets/20261104_152444_.jpg)
![Session photo at 15:24:44](öredev-2026-assets/20261104_152444_straightened.jpg)
![Session photo at 15:28:44](öredev-2026-assets/20261104_152844_.jpg)
![Session photo at 15:31:10](öredev-2026-assets/20261104_153110_straightened.jpg)

## 15.50 When doing costs nothing, deciding costs everything, Vanessa Meyer

[Link to slides](https://afoot.net/When_Doing_Costs_Nothing_Deciding_Costs_Everything/vanessa---when-doing-costs-nothing-deciding-costs-everything.pdf)

![Session photo at 15:40:49](öredev-2026-assets/20261104_154049_.jpg)
![Session photo at 16:02:11](öredev-2026-assets/20261104_160211_.jpg)
![Session photo at 16:02:07](öredev-2026-assets/20261104_160207_straightened.jpg)
![Session photo at 16:06:12](öredev-2026-assets/20261104_160612_straightened.jpg)
![Session photo at 16:07:56](öredev-2026-assets/20261104_160756_straightened.jpg)
![Session photo at 16:10:01](öredev-2026-assets/20261104_161001_straightened.jpg)
![Session photo at 16:11:02](öredev-2026-assets/20261104_161102_straightened_straightened.jpg)
![Session photo at 16:15:48](öredev-2026-assets/20261104_161548_straightened.jpg)
![Session photo at 16:18:54](öredev-2026-assets/20261104_161854_straightened.jpg)

So don't skip the meeting, make it count!

Growth Marketeer

I need to understand the full Customer Journey here

Within 12 mo double income only by focusing

Group decision making is hard.

Noone sees the whole elephant in a complex problem, combine is needed
Complexity means no one sees the whole elephant

Probe
Sense
- if your ego is not taking a hit - you're not doing it right
- disagreement should be normal, it's a feature not a bug
- a long long meeting
Respond
Deliver

Advice
- Name the phase you're in.

When you receive the slop, ask sender to explain "how did you get here"

## 16.00 Keynote

![Session photo at 17:26:47](öredev-2026-assets/20261104_172647_.jpg)
![Session photo at 17:26:48](öredev-2026-assets/20261104_172648_straightened.jpg)
![Session photo at 17:35:49](öredev-2026-assets/20261104_173549_straightened.jpg)
![Session photo at 17:39:00](öredev-2026-assets/20261104_173900_straightened.jpg)
