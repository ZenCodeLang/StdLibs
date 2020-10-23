[Native("stdlib::Iterator")]
public interface Iterator<T> {
	[Native("empty")]
	static empty<T>() as Iterator<T>;
	
	[Native("hasNext")]
	get hasNext as bool;
	
	[Native("next")]
	next() as T;
}
