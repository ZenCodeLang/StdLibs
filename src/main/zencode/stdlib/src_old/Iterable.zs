[Native("stdlib::Iterable")]
public interface Iterable<T> {

    // Fails because the Parser expects `for(T) { /*...*/ }`
	for(item as T) as Iterator<T> => iterate();
}
