public interface LiveBool {
	get value as bool;
	
	addListener(listener as Listener) as ListenerHandle;
	
	alias Listener as function(oldValue as bool, newValue as bool) as void;
	alias ListenerHandle as listeners.ListenerHandle<Listener>;
}
