[Native("stdlib::Iterator")]
public interface Iterator<T> {
	[Native("hasNext")]
	hasNext() as bool;
	
	[Native("next")]
	next() as T;
}
