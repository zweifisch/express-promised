
getRouter = (options)->
    router = require("express").Router options
    for method in ["get", "post", "delete", "put", "patch"]
        do (method)->
            original = router[method].bind router
            router[method] = (args..., handler)->
                original args..., (req, res, next)->
                    if ret = handler req, res, next
                        ret.then? (result)->
                            res.send result
                        .catch next
    router

module.exports = getRouter
