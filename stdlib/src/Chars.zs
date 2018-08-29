export expand char {
	public times(number as usize) as string {
		return new string(new char[](number, this));
	}
}
