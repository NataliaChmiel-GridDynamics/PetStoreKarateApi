package postRequests;

import com.intuit.karate.junit5.Karate;

class postRunner {

    @Karate.Test
    Karate testPets() {
        return Karate.run("uploadImage", "addPet", "updateStatus", "orderPet", "createListOfUsers", "createListOfUsersWithArray", "createUser").relativeTo(getClass());
    }

}
