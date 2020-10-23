import listeners.DummyListenerHandle;

public class LiveEmptyList<T> {
	public implements LiveList<T> {
		indexOf(value) => null;
		
		get length => 0;
		
		[](index) => panic "No elements in an empty list";
		
		iterate() => Iterator<T>.empty<T>();
		
		addListener(listener) => new DummyListenerHandle<Listener<T>>(listener);
	}
}
