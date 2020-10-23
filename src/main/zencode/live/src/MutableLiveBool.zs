public interface MutableLiveBool : LiveBool {
	set value as bool;
	
	final toggle() as void => value = !value;
}
