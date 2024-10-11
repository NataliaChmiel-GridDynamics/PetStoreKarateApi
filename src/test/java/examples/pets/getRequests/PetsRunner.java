package examples.pets.getRequests;

import com.intuit.karate.junit5.Karate;

class petsRunner {
    
    @Karate.Test
    Karate testPets() {
        return Karate.run("findPetsByStatusAvailable", "findPetsByStatusPending", "findPetsByStatusSold", "findPetById", "storeInventory", "findPurchaseById", "getUser", "logIn", "logOut").relativeTo(getClass());
    }    

}
