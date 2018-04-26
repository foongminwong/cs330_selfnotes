import java.util.ArrayList;
import java.util.List;

public class Library {
  public static <A, B, C> Function1<A, C> compose(Function1<B, C> f,
                                                  Function1<A, B> g) {
    return new Function1<A, C>() {
      public C evaluate(A value) {
        return f.evaluate(g.evaluate(value));
      }
    };
  }

  public static <A> List<A> filter(Predicate<A> predicate,
                                   List<A> list) {
    ArrayList<A> keepers = new ArrayList<A>();

    for (A item : list) {
      if (predicate.isValid(item)) {
        keepers.add(item);
      }
    }

    return keepers;
  }

  public static <A, B> List<B> map(Transformer<A, B> xform,
                                   List<A> list) {
    ArrayList<B> keepers = new ArrayList<B>();

    for (A item : list) {
      keepers.add(xform.transform(item));
    }

    return keepers;
  }
}
Main.java
public class Main {
  public static void main(String[] args) {
    /* Scaler scaler = new Scaler(1.8); */
    /* Biaser biaser = new Biaser(32.0); */

    Function1<Double, Double> scaler = x -> 1.8 * x;
    Function1<Double, Double> biaser = x -> x + 32;
    Function1<Double, Double> c2f = Library.compose(biaser, scaler);

    Double celsius = 100.0;
    System.out.println("c2f.evaluate(celsius): " + c2f.evaluate(celsius));
    /* Double fahrenheit = biaser.evaluate(scaler.evaluate(celsius)); */
    /* System.out.println("fahrenheit: " + fahrenheit); */

    /* System.out.println("scaler.evaluate(100): " + scaler.evaluate(100.0)); */
  }
}

/* class Scaler implements Function1<Double, Double> { */
  /* private Double factor; */

  /* public Scaler(Double factor) { */
    /* this.factor = factor; */
  /* } */

  /* public Double evaluate(Double x) { */
    /* return x * factor; */
  /* } */
/* } */

/* class Biaser implements Function1<Double, Double> { */
  /* private Double bias; */

  /* public Biaser(Double bias) { */
    /* this.bias = bias; */
  /* } */

  /* public Double evaluate(Double x) { */
    /* return x + bias; */
  /* } */
/* } */
