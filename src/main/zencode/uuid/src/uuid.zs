[Native("uuid::uuid")]
public class UUID {

	[Native("parse")]
	public static parse(name as string) as UUID;

	[Native("random")]
	public static random() as UUID;
	
	[Native("toString")]
	public as string;
}

