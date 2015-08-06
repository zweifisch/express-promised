# express-promised

```coffee
router = require("express-promised")()

router.get "/", ({db})->
    db.users.find()

router.get "/:id", ({db, params})->
    db.users.findOne params

app.use "/users" router
```
