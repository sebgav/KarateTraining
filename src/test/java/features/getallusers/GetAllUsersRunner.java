package features.getallusers;

import com.intuit.karate.junit5.Karate;

public class GetAllUsersRunner {

    @Karate.Test
    Karate testGetAllUsers() {
        return Karate.run("getallusers").relativeTo(getClass());
    }


}

