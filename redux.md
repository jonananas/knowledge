# Redux

* Store is a tree of data
* make change --> subscribe to change notifications
* Three principles
** single source of truth
** state is read-only
** changes made with pure functions
* Key players
** State --> 
** action --> has type and payload/target
** reducers --> (state, action) => state. All reducers gets all actions