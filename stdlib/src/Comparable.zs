[Native("stdlib::Comparable")]
export interface Comparable<T> {
	[Native("compareTo")]
	compareTo(other as T) as int;
}
