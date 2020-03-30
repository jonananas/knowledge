# Isolation levels

An isolation level of Read committed does not imply that a reading thread will get see only the full commit of a writing thread.
You can still get non-repeatable reads, and must plan for it.

* [Isolation levels on wikipedia](https://en.wikipedia.org/wiki/Isolation_(database_systems)
* [Isolation levels specifics on DB2](https://www.ibm.com/support/knowledgecenter/en/SSEPEK_11.0.0/perf/src/tpc/db2z_isolationissues.html)

# CAP Theorem guiding choice of database
IE Availability, Concistency, Partion Tolerance - pick two
* [Visual Guide to NoSQL Systems](https://blog.nahurst.com/visual-guide-to-nosql-systems)

* PIE Theorem guiding choice of database
* [Why the PIE theorem is more relevant than the CAP theorem](https://www.alexdebrie.com/posts/choosing-a-database-with-pie/)
