// How classes deal with variables

class User{
    var name = "Paul"
}

let user = User() // let implies const. user is a reference, but its props arent const
user.name = "Taylor" // but we can still change the vars
print(user.name)

class OtherUser{
    var name = "Paul"
}
let anotherUser = User()
anotherUser.name = "Taylor"
// anotherUser = User() // NOT ALLOWED YO

