import java.util.Arrays;
import java.util.List;

public class FilterTest {
  public static void main(String[] args) {
    List<Planet> planets = Arrays.asList(
       new Planet("Saturn", 9.5, 95.0),
       new Planet("Earth", 1.0, 1.0),
       new Planet("Venus", 0.7, 0.815),
       new Planet("Jupiter", 5.2, 318.0),
       new Planet("Uranus", 19.6, 14.0),
       new Planet("Neptune", 30.0, 17.0),
       new Planet("Mars", 1.5, 0.107),
       new Planet("Mercury", 0.4, 0.055)
      ); 

    /* List<Planet> keepers = Library.filter(planet -> planet.getName().equals("Saturn"), planets); */
    /* System.out.println("keepers: " + keepers); */

    List<Planet> keepers = Library.filter(planet -> planet.getName().contains("t"), planets);
    System.out.println("keepers: " + keepers);

    List<String> newPlanets = Library.map(planet -> "New " + planet.getName(), planets);
    System.out.println("newPlanets: " + newPlanets);
  }
}
