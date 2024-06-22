[Native("stdlib::String")]
public expand string {
	[Native("fromAsciiBytes")]
	public static fromAsciiBytes(data as byte[]) as string;
	
	[Native("fromUTF8Bytes")]
	public static fromUTF8Bytes(data as byte[]) as string;


	// ToDo: Without "this." we get an error...
	[Native("contains")]
	public const in(c as char) as bool
		=> this.indexOf(c) != null;

	// ToDo: Without "this." we get an error...
	[Native("containsString")]
	public const in(s as string) as bool
		=> this.indexOf(s) != null;


	// ToDo: indexOf from Java and ZC have different signatures!
	[Native("indexOf")]
	public const indexOf(c as char) as usize? {
		for i in 0 .. length {
			if this[i] == c
				return i;
		}
		
		return null;
	}
	
	[Native("indexOfFrom")]
	public const indexOf(c as char, from as usize) as usize? {
		for i in from .. length {
			if this[i] == c
				return i;
		}

		return null;
	}
	
	[Native("indexOfString")]
	public const indexOf(s as string) as usize?;
	
	[Native("indexOfStringFrom")]
	public const indexOf(s as string, from as usize) as usize?;

	[Native("lastIndexOf")]
	public const lastIndexOf(c as char) as usize? {
		var i = length;
		while i > 0 {
			i--;
			if this[i] == c
				return i;
		}

		return null;
	}

	[Native("lastIndexOfFrom")]
	public const lastIndexOf(c as char, until as usize) as usize? {
		var i = until;
		while i > 0 {
			i--;
			if this[i] == c
				return i;
		}

		return null;
	}

	[Native("lastIndexOfString")]
	public const lastIndexOf(s as string) as usize?;

	[Native("lastIndexOfStringFrom")]
	public const lastIndexOf(s as string, until as usize) as usize?;

    // ToDo: cannot cast List<T> to T[]
	//[Native("split")]
	//public const split(delimiter as char) as string[] {
	//	val result = new List<string>();
	//	var start = 0 as usize;
	//	for i in 0 .. this.length {
	//		if this[i] == delimiter {
	//			result.add(this[start .. i]);
	//			start = i + 1;
	//		}
	//	}
	//	result.add(this[start .. $]);
	//	return result as string[];
	//}

	[Native("startsWith")]
	public const startsWith(head as string) as bool
		=> length >= head.length && this[0 .. head.length] == head;

	[Native("endsWith")]
	public const endsWith(tail as string) as bool
		=> length >= tail.length && this[($ - tail.length) .. $] == tail;

	[Native("lpad")]
	public const lpad(length as usize, c as char) as string
		=> this.length >= length ? this : c.times(length - this.length) + this;

	[Native("rpad")]
	public const rpad(length as usize, c as char) as string
		=> this.length >= length ? this : this + c.times(length - this.length);

	[Native("toAsciiBytes")]
	public const toAsciiBytes() as byte[];

	[Native("toUTF8Bytes")]
	public const toUTF8Bytes() as byte[];

    // ToDo: Without "this." we get Error: No enum or variant member named trim in type bool
	[Native("isBlank")]
	public get blank as bool => this.trim().isEmpty;

	[Native("compareToIgnoreCase")]
	public const compareToIgnoreCase(s as string) as int;

	[Native("endsWith")]
	public const endsWith(s as string) as bool;

	[Native("equalsIgnoreCase")]
	public const equalsIgnoreCase(s as string) as bool;

	[Native("replace")]
	public const replace(oldChar as char, newChar as char) as string;

}
