# Microservices
Design Microservice Architectures the Right Way https://www.youtube.com/watch?v=j6ow-UemzBc
CTO of flow.io, gilt.com
- 1 lang per 4000 engineers
- Event log must (no!) be source of truth
- API definition first, Feel: Created by one person
- Lint API def, and all other stuff :)
- Testing! 15:50
- Every service has private database
- cli for db creation
- Tests: When you move to production it just works
- Do not use API:s! Use events! gRPC --> Yes! Swagger --> No!
- Consumers: store all events. replay locally.
- TDD in production
- Event Schema: 35:00
- Dependencies: 41:30
- Summary: 45:00
