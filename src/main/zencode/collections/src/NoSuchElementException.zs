import stdlib.Exception;

public class NoSuchElementException : Exception {
	public this(message as string) {
		super(message);
	}
}
