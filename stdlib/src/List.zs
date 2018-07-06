[Native("stdlib::List")]
export class List<T> {
	[Native("constructor")]
	public this() {}
	[Native("add")]
	public add(value as T) as void;
	[Native("getIndex")]
	public [](index as int) as T;
	[Native("setIndex")]
	public []=(index as int, value as T) as T;
	[Native("toArray")]
	public as T[];
	[Native("length")]
	public get length as int;
	[Native("isEmpty")]
	public get isEmpty as bool;
}
