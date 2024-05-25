[Native("stdlib::String")]
public expand string {
	[Native("fromAsciiBytes")]
	public static fromAsciiBytes(data as byte[]) as string;
	
	[Native("fromUTF8Bytes")]
	public static fromUTF8Bytes(data as byte[]) as string;

	// ToDo: No operator COMPARE in type invalid
	// ToDo, why do the tests StdLibFunctions#containsChar(String, char) still work?
	//[Native("contains")]
	//public const in(c as char) as bool
	//	=> indexOf(c) != null;
	//
	//[Native("containsString")]
	//public const in(s as string) as bool
	//	=> indexOf(s) != null;
	
	//[Native("indexOf")] // ToDo: indexOf from Java and ZC have different signatures!
	public const indexOf(c as char) as usize? {
		for i in 0 .. length {
			if this[i] == c
				return i;
		}
		
		return null;
	}
	
	[Native("indexOfFrom")]
	public const indexOf(c as char, from as usize) as usize?;
	
	[Native("indexOfString")]
	public const indexOf(s as string) as usize?;
	
	[Native("indexOfStringFrom")]
	public const indexOf(s as string, from as usize) as usize?;

	[Native("lastIndexOf")]
	// ToDo: This had a method body before but also a native binding, which to use?
	public const lastIndexOf(c as char) as usize?;

	[Native("lastIndexOfFrom")]
	// ToDo: This had a method body before but also a native binding, which to use?
	public const lastIndexOf(c as char, until as usize) as usize?;

	[Native("lastIndexOfString")]
	public const lastIndexOf(s as string) as usize?;

	[Native("lastIndexOfStringFrom")]
	public const lastIndexOf(s as string, until as usize) as usize?;


    // ToDo: cannot infer i + 1 without a cast as usize
    // ToDo: does not know the $ symbol
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

    // ToDo: invalid postfix expression
	//[Native("trim")]
	//public const trim() as string {
	//	var from = 0 as usize;
	//	while from < this.length && this[from] in [' ', '\t', '\r', '\n']
	//		from++;
	//	var to = this.length;
	//	while to > 0 && this[to - 1] in [' ', '\t', '\r', '\n']
	//		to--;
	//	return to < from ? "" : this[from .. to];
	//}

	[Native("startsWith")]
	// ToDo: This had a method body before but also a native binding, which to use?
	public const startsWith(head as string) as bool;

	[Native("endsWith")]
	// ToDo: This had a method body before but also a native binding, which to use?
	public const endsWith(tail as string) as bool;

	//[Native("lpad")] // ToDo: we either need to specify this native in the JavaPrepareDefinitionVisitor or we just keep it as non-native expansion?
	public const lpad(length as usize, c as char) as string
		=> this.length >= length ? this : c.times(length - this.length) + this;

	//[Native("rpad")] // ToDo: we either need to specify this native in the JavaPrepareDefinitionVisitor or we just keep it as non-native expansion?
	public const rpad(length as usize, c as char) as string
		=> this.length >= length ? this : this + c.times(length - this.length);

	[Native("toAsciiBytes")]
	public const toAsciiBytes() as byte[];

	[Native("toUTF8Bytes")]
	public const toUTF8Bytes() as byte[];

    // ToDo: requires trim() to work
	//[Native("isBlank")]
	//public get blank as bool => trim().isEmpty;

	[Native("compareToIgnoreCase")]
	public const compareToIgnoreCase(s as string) as int;

	[Native("endsWith")]
	public const endsWith(s as string) as bool;

	[Native("equalsIgnoreCase")]
	public const equalsIgnoreCase(s as string) as bool;

	[Native("replace")]
	public const replace(oldChar as char, newChar as char) as string;
}
