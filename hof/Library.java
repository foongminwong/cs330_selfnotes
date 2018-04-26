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
