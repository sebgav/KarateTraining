package features.soapcalculator;

import com.intuit.karate.junit5.Karate;

public class CalculatorRunner {
    @Karate.Test
    Karate TestJCalculator() {
        return Karate.run("calculator").relativeTo(getClass());
    }
}
