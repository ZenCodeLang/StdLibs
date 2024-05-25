[Native("stdlib::Arrays")]
public expand <T : Comparable<T>> T[] {
	[Native("sort")]
	public extern sort() as void;
	[Native("sorted")]
	public extern sorted() as T[];
}
