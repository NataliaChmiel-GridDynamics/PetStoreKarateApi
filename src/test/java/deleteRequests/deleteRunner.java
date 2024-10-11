package deleteRequests;

import com.intuit.karate.junit5.Karate;

class deleteRunner {

    @Karate.Test
    Karate testPets() {
        return Karate.run("").relativeTo(getClass());
    }

}