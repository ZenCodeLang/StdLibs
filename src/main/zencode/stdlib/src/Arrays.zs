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

[Native("stdlib::Arrays")]
public expand <T> T[] {
	[Native("sortWithComparator")]
	public extern sort(comparator as function(a as T, b as T) as int) as void;
	[Native("sortedWithComparator")]
	public extern sorted(comparator as function(a as T, b as T) as int) as T[];
	[Native("copy")]
	public extern copy() as T[];
	[Native("copyResize")]
	public extern copy(newSize as usize) as T[];
	[Native("copyTo")]
	public extern copyTo(target as T[], sourceOffset as usize, targetOffset as usize, length as usize) as void;

	public get first as T?
    		=> this.isEmpty ? null : this[0];

    public get last as T?
    	=> this.isEmpty ? null : this[this.length - (1 as usize)];

    //[Native("reverse")] // we either need to specify reverse in the JavaPrepareDefinitionVisitor or we just keep it as non-native expansion?
    public reverse() as void {
    	for i in 0 .. length / (2 as usize) {
    		var temp = this[i];
    		this[i] = this[length - i - (1 as usize)];
    		this[length - i - (1 as usize)] = temp;
    	}
    }

    // TODO: fix compilation for these (see expansions_8.zc test)
    //[Native("reversed")] // we either need to specify reverse in the JavaPrepareDefinitionVisitor or we just keep it as non-native expansion?
    //public reversed() as T[] {
    //    var result = new T[](this.length);
    //    for i in 0 .. length {
    //        result[i] = this[length - i];
    //    }
    //	return result;
    //}

    // TODO: fix compilation for these (see expansions_7.zc test)
    //[Native("mapValues")] // we either need to specify reverse in the JavaPrepareDefinitionVisitor or we just keep it as non-native expansion?
    //public map<U>(projection as function(value as T) as U) as U[] {
    //    var result = new U[](length);
    //    for i in 0 .. this.length {
    //        result[i] = projection(this[i]);
    //    }
    //    return result;
    //}

	// TODO: fix compilation for these (see expansions_7.zc test which should fix this method as well)
	//[Native("mapKeyValues")] // we either need to specify reverse in the JavaPrepareDefinitionVisitor or we just keep it as non-native expansion?
	//public map<U>(projection as function(index as usize, value as T) as U) as U[]{
    //    var result = new U[](this.length);
    //    for i in 0 .. this.length {
    //        result[i] = projection(i, this[i]);
    //    }
    //    return result;
    //}

    // ToDo: Add lists back in before we can test this method
	//[Native("filterValues")] // we either need to specify reverse in the JavaPrepareDefinitionVisitor or we just keep it as non-native expansion?
	//public filter(predicate as function(value as T) as bool) as T[] {
	//	var values = new List<T>();
	//	for value in this
	//		if predicate(value)
	//			values.add(value);
	//	return values as T[];
	//}

	// ToDo: Add lists back in before we can test this method
	//[Native("filterKeyValues")] // we either need to specify reverse in the JavaPrepareDefinitionVisitor or we just keep it as non-native expansion?
	//public filter(predicate as function(index as usize, value as T) as bool) as T[] {
	//	var values = new List<T>();
	//	for i, value in this
	//		if predicate(i, value)
	//			values.add(value);
	//	return values as T[];
	//}

	public each(consumer as function(value as T) as void) as void {
		for value in this
			consumer(value);
	}

	public each(consumer as function(index as usize, value as T) as void) as void {
		for i, value in this
			consumer(i, value);
	}

	public contains(predicate as function(value as T) as bool) as bool {
		for value in this
			if predicate(value)
				return true;

		return false;
	}

	public contains(predicate as function(index as usize, value as T) as bool) as bool {
		for i, value in this
			if predicate(i, value)
				return true;

		return false;
	}

	public all(predicate as function(value as T) as bool) as bool {
		for value in this
			if !predicate(value)
				return false;

		return true;
	}

	public all(predicate as function(i as usize, value as T) as bool) as bool {
		for i, value in this
			if !predicate(i, value)
				return false;

		return true;
	}

	public first(predicate as function(value as T) as bool) as T? {
		for value in this
			if predicate(value)
				return value;

		return null;
	}

	public first(predicate as function(i as usize, value as T) as bool) as T? {
		for i, value in this
			if predicate(i, value)
				return value;

		return null;
	}


	// ToDo: These require postfix expressions to work (see int_postfix_1.zc and int_postfix_2.zc)
    //public last(predicate as function(value as T) as bool) as T? {
	//	var i = length;
	//	while i > 0 {
	//		i--;
	//		if predicate(this[i])
	//			return this[i];
	//	}
	//	return null;
	//}

	// ToDo: These require postfix expressions to work (see int_postfix_1.zc and int_postfix_2.zc)
	//public last(predicate as function(index as usize, value as T) as bool) as T? {
	//	var i = length;
	//	while i > 0 {
	//		i--;
	//		if predicate(i, this[i])
	//			return this[i];
	//	}
	//	return null;
	//}

	// ToDo: These require postfix expressions to work (see int_postfix_1.zc and int_postfix_2.zc)
	//public count(predicate as function(value as T) as bool) as usize {
	//	var result = 0;
	//	for value in this
	//		if predicate(value)
	//			result++;
	//	return result;
	//}

	// ToDo: These require postfix expressions to work (see int_postfix_1.zc and int_postfix_2.zc)
	//public count(predicate as function(index as usize, value as T) as bool) as usize {
	//	var result = 0;
	//	for i, value in this
	//		if predicate(i, value)
	//			result++;
	//	return result;
	//}

    // ToDo: cannot infer type arguments properly
	//public index<K>(key as function(value as T) as K) as T[K] {
    //	var result = new T[K];
    //	for value in this
    //		result[key(value)] = value;
    //	return result;
    //}

    // ToDo: requires Lists
	//public implicit as List<T> {
	//	var result = new List<T>();
	//	for value in this
	//		result.add(value);
	//	return result;
	//}
}
