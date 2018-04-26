public class Planet {
  private String name;
  private double ausFromTheSun;
  private double relativeMass;

  public Planet(String name,
                double ausFromTheSun,
                double relativeMass) {
    this.name = name;
    this.ausFromTheSun = ausFromTheSun;
    this.relativeMass = relativeMass;
  }

  public String getName() {
    return name;
  }

  public double getAUs() {
    return ausFromTheSun;
  }

  public double getMass() {
    return relativeMass;
  }

  public String toString() {
    return String.format("%15s %6.2f %6.2f%n", name, ausFromTheSun, relativeMass);
  }
}
