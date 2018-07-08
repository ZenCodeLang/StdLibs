[Native("stdlib::IllegalArgumentException")]
export class IllegalArgumentException : Exception {
	[Native("constructor")]
	public this(message as string) {
		super(message);
	}
}
