[Native("stdlib::Iterable")]
public interface Iterable<T> {
	[Native("iterate")]
	iterate() as Iterator<T>;

    // Fails because the Parser expects `for(T) { /*...*/ }`
	//for(item as T) as Iterator<T> => iterate();
}
