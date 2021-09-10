[Native("math::Functions")]
public class Functions {
	[Native("sin")]
	public extern static sin(x as double) as double;

	[Native("cos")]
	public extern static cos(x as double) as double;

	[Native("tan")]
	public extern static tan(x as double) as double;

	[Native("asin")]
	public extern static asin(x as double) as double;

	[Native("acos")]
	public extern static acos(x as double) as double;

	[Native("atan")]
	public extern static atan(x as double) as double;

	[Native("sinh")]
	public extern static sinh(x as double) as double;

	[Native("cosh")]
	public extern static cosh(x as double) as double;

	[Native("tanh")]
	public extern static tanh(x as double) as double;


	[Native("toRadians")]
	public extern static toRadians(x as double) as double;

	[Native("toDegrees")]
	public extern static toDegrees(x as double) as double;


	[Native("exp")]
	public extern static exp(x as double) as double;

	[Native("log")]
	public extern static log(x as double) as double;

	[Native("log10")]
	public extern static log10(x as double) as double;

	[Native("sqrt")]
	public extern static sqrt(x as double) as double;

	[Native("cbrt")]
	public extern static cbrt(x as double) as double;


	[Native("ceil")]
	public extern static ceil(x as double) as double;

	[Native("floor")]
	public extern static floor(x as double) as double;


	[Native("abs")]
	public extern static abs(x as double) as double;

	[Native("absInteger")]
	public extern static abs(x as int) as int;

	[Native("signum")]
	public extern static signum(x as double) as double;

	[Native("minInteger")]
	public extern static min(a as int, b as int) as int;

	[Native("minLong")]
	public extern static min(a as long, b as long) as long;

	[Native("minFloat")]
	public extern static min(a as float, b as float) as float;

	[Native("minDouble")]
	public extern static min(a as double, b as double) as double;

	[Native("maxInteger")]
	public extern static max(a as int, b as int) as int;

	[Native("maxLong")]
	public extern static max(a as long, b as long) as long;

	[Native("maxFloat")]
	public extern static max(a as float, b as float) as float;

	[Native("maxDouble")]
	public extern static max(a as double, b as double) as double;

	[Native("roundDouble")]
	public extern static round(x as double) as long;

	[Native("roundFloat")]
	public extern static round(x as float) as long;

	[Native("pow")]
	public extern static pow(a as double, b as double) as double;
}