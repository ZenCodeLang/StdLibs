import stdlib.Iterable;

[Native("collections::Set")]
public interface Set<T> : Iterable<T> {

	[Native("add")]
	public add(value as T) as void;

	[Native("remove")]
	public remove(value as T) as bool;

	[Native("contains")]
	public in(value as T) as bool;

	[Native("toArray")]
	public implicit as T[];

	[Native("length")]
	public get length as usize;

	[Native("isEmpty")]
	public get isEmpty as bool;
}
