package features.jsonplaceholder;

import com.intuit.karate.junit5.Karate;

public class JsonPlaceHolderRunner {
    @Karate.Test
    Karate TestJsonPlaceHolder() {
        return Karate.run("jsonplaceholder").relativeTo(getClass());
    }

}
