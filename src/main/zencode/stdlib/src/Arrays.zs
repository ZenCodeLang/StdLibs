[Native("stdlib::Arrays")]
public expand <T : Comparable<T>> T[] {
	[Native("sort")]
	public extern sort() as void;
	[Native("sorted")]
	public extern sorted() as T[];
}

public expand <T : Hashable<T>> T[] {
	public implements Hashable<T[]> {
		public extern hashCode() as int;
		public extern == (other as T[]) as bool;
	}
}
