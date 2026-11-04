# Öredev 2026 day 1

## Arduino robot building workshop & challenge 10-12

## Takeaways

- Now is a good time to create your AI company, next 1-2 years
- MCP Inspector from Anthropic, start by npx
- A2A protocol for Agent to agent
- EU Artificial Intelligence Act: Risk levels
- Platform team - Lars har satt upp
- goldenpath and lint.sh - to have platform team help product teams as much as possible
- The problem with prompt injection, mixing data and instructions.
- Complexity means no one sees the whole elephant

## 9-10 Emil of Neo4j keynote

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

Strands from Amazon
strandsagents.com
Uses Bedrock by default - can i use something else?

MCP Inspector from Anthropic, start by npx

chromadb for rules, vector storage

Pydantic models (BaseModel) for output to web/javascript client


## 11:15 After the AI hype, Richard Campbell

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

Pentester

Johan Rheberg - office document could search email and exfiltrate secret data

Fix:
- Untrusted content
- Access to private data
- External access

## 14.55 secure code reviews

## 15.50 When doing costs nothing, deciding costs everything, Vanessa Meyer

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
