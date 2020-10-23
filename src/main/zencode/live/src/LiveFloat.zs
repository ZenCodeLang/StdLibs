public interface LiveFloat {
	get value as float;
	set value as float;
	
	addListener(listener as Listener) as ListenerHandle;
	
	alias Listener as function(oldValue as float, newValue as float) as void;
	alias ListenerHandle as listeners.ListenerHandle<Listener>;
}
