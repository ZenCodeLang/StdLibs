export interface CompactDataInput {
	readBool() as bool;
	
	readByte() as sbyte;
	
	readSByte() as byte;
	
	readShort() as short;
	
	readUShort() as ushort;
	
	readInt() as int;
	
	readUInt() as uint;
	
	readLong() as long;
	
	readULong() as ulong;
	
	readVarInt() as int;
	
	readVarUInt() as uint;
	
	readVarLong() as long;
	
	readVarULong() as ulong;
	
	readFloat() as float;
	
	readDouble() as double;
	
	readChar() as char;
	
	readString() as string;
	
	readBytes() as byte[];
	
	readRawBytes(length as usize) as byte[];
	
	readBoolArray() as bool[];
	
	readByteArray() as byte[];
	
	readSByteArray() as sbyte[];
	
	readShortArray() as short[];
	
	readShortArrayRaw(length as usize) as short[];
	
	readUShortArray() as ushort[];
	
	readUShortArrayRaw(length as usize) as ushort[];
	
	readVarIntArray() as int[];
	
	readVarIntArrayRaw(length as usize) as int[];
	
	readVarUIntArray() as uint[];
	
	readVarUIntArrayRaw(length as usize) as uint[];
	
	readIntArray() as int[];
	
	readIntArrayRaw(length as usize) as int[];
	
	readUIntArray() as uint[];
	
	readUIntArrayRaw(length as usize) as uint[];
	
	readVarLongArray() as long[];
	
	readVarLongArrayRaw(length as usize) as long[];
	
	readVarULongArray() as ulong[];
	
	readVarULongArrayRaw(length as usize) as ulong[];
	
	readLongArray() as long[];
	
	readLongArrayRaw(length as usize) as long[];
	
	readULongArray() as ulong[];
	
	readULongArrayRaw(length as usize) as ulong[];
	
	readFloatArray() as float[];
	
	readFloatArrayRaw(length as usize) as float[];
	
	readDoubleArray() as double[];
	
	readDoubleArrayRaw(length as usize) as double[];
	
	readStringArray() as string[];
	
	readStringArrayRaw(length as usize) as string[];
	
	skip(bytes as usize) as void;
	
	hasMore() as bool;
	
	~this;
}
