public expand <K, V> V[K] {
	mapValues<W>(projection as function(value as V) as W) as W[K] {
		val result = {} as W[K];
		for k, v in this
			result[k] = projection(v);
		return result;
	}
}
