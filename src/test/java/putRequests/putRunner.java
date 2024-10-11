package putRequests;

import com.intuit.karate.junit5.Karate;

class putRunner {

    @Karate.Test
    Karate testPets() {
        return Karate.run("updateExistingPet").relativeTo(getClass());
    }

}