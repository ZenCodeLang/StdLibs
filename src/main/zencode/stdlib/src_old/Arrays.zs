
[Native("stdlib::Arrays")]
public expand <T> T[] {

	// TODO: fix compilation for these
	/*[Native("reversed")]
	public reversed() as T[] {
		return new T[](this, (i, value) => this[length - i - 1]);
	}*/
	
	[Native("mapValues")]
	public map<U>(projection as function(value as T) as U) as U[] {
	    var result = new U[](length);
	    for i in 0 .. this.length {
	        result[i] = projection(this[i]);
	    }
	    return result;
	}

	[Native("mapKeyValues")]
	public map<U>(projection as function(index as usize, value as T) as U) as U[]{
        var result = new U[](this.length);
        for i in 0 .. this.length {
            result[i] = projection(i, this[i]);
        }
        return result;
    }

	[Native("filterValues")]
	public filter(predicate as function(value as T) as bool) as T[] {
		var values = new List<T>();
		for value in this
			if predicate(value)
				values.add(value);
		return values as T[];
	}
	
	[Native("filterKeyValues")]
	public filter(predicate as function(index as usize, value as T) as bool) as T[] {
		var values = new List<T>();
		for i, value in this
			if predicate(i, value)
				values.add(value);
		return values as T[];
	}

	public last(predicate as function(value as T) as bool) as T? {
		var i = length;
		while i > 0 {
			i--;
			if predicate(this[i])
				return this[i];
		}

		return null;
	}

	public last(predicate as function(index as usize, value as T) as bool) as T? {
		var i = length;
		while i > 0 {
			i--;
			if predicate(i, this[i])
				return this[i];
		}

		return null;
	}

	public count(predicate as function(value as T) as bool) as usize {
		var result = 0;
		for value in this
			if predicate(value)
				result++;
		return result;
	}

	public count(predicate as function(index as usize, value as T) as bool) as usize {
		var result = 0;
		for i, value in this
			if predicate(i, value)
				result++;
		return result;
	}
	
	public index<K>(key as function(value as T) as K) as T[K] {
		var result = new T[K];
		for value in this
			result[key(value)] = value;
		return result;
	}

	public implicit as List<T> {
		var result = new List<T>();
		for value in this
			result.add(value);
		return result;
	}
}
