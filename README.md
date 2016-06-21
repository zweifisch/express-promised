# express-promised

[![NPM Version][npm-image]][npm-url]

```coffee
router = require("express-promised")()

router.get "/", ({db})->
    db.users.find()

router.get "/:id", ({db, params})->
    db.users.findOne params

router.get "/literal", ->
    ok: yes

app.use "/users" router
```

[npm-image]: https://img.shields.io/npm/v/express-promised.svg?style=flat
[npm-url]: https://npmjs.org/package/express-promised
