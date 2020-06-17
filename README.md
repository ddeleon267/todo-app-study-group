REST => Representation State Transfer
=> set of conventions for structuring our ROUTES and mapping them to CRUD actions (Create, Read, Update, Delete).

| HTTP VERB | ROUTE | ACTION   | CRUD Function |
| ------------- |-------------| ----------- | ------------------- |
| GET |  /todos  | index | Read |
| GET | /todos/:id | show | Read |
| GET | /todos/new | new | Create |
| POST | /todos | create | Create |
| GET | /todos/:id/edit | edit | Update |
| PATCH (PUT)* | /todos/:id | update | Update |
| DELETE | /todos/:id | delete | Delete |

*(patch modifies, put replaces)