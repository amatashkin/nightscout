db.createUser( { user: "nightscout",
                 pwd: "nightscout-user-password",
                 roles: [ { role: "readWrite", db: "nightscoutdb" }] }
              )