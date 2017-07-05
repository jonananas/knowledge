# Java 8 DateTime API

| Class         | Explanation                     | Useful for   |
| -------       | -------------                   | ------------ |
| Instant       | Instant in time in UTC          | Timestamp in logs, schedule international meetings, etc |
| ZonedDateTime | Instant + Timezone              | Viewing or handling instant in a timezone |
| LocalDate     | A date without timezone         | Birthdate, etc - where we don't care about the timezone |
| LocalDateTime | Date and time without timezone  | When does a store open, etc - we don't care about timezone |
| Duration      | Amount of time (in seconds)     | How long did I work out, how long did it take, etc |
| Period        | Amount of time in time concepts | Now + 1 month, which is not possible with duration |

* [Instant](http://docs.oracle.com/javase/tutorial/datetime/iso/instant.html)
* [LocalDate and LocalDateTime](http://docs.oracle.com/javase/tutorial/datetime/iso/datetime.html)
* [Duration](http://docs.oracle.com/javase/tutorial/datetime/iso/period.html)
* [Clock](http://docs.oracle.com/javase/tutorial/datetime/iso/clock.html)
* [ZoneId, ZoneOffset](http://docs.oracle.com/javase/tutorial/datetime/iso/timezones.html)
* [DateTimeFormatter](http://docs.oracle.com/javase/tutorial/datetime/iso/format.html)
* [Temporal package – add/subtract time etc.](http://docs.oracle.com/javase/tutorial/datetime/iso/temporal.html)

## Links
* [Overview](https://docs.oracle.com/javase/tutorial/datetime/iso/overview.html)
* [DateTime tutorial](http://docs.oracle.com/javase/tutorial/datetime/index.html)
* [Legacy Date-Time Code](http://docs.oracle.com/javase/tutorial/datetime/iso/legacy.html)
* [Converting from Joda-Time to java.time](http://blog.joda.org/2014/11/converting-from-joda-time-to-javatime.html)

## [Design principles](http://docs.oracle.com/javase/tutorial/datetime/overview/design.html)
* Clear
* Fluent
* Immutable
* Extensible
