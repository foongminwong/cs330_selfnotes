@FunctionalInterface
public interface Transformer<A, B> {
  B transform(A item); 
}
