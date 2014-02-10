int main(string[] argv)
{
	playlang.interpreter interpreter;
	FileStream source, dest;
	
	source = FileStream.open(argv[1], "r");
	dest = FileStream.open(argv[2], "a");

	string src = playlang.fileio.get_whole_file(source);

	interpreter = new playlang.interpreter(src);

	string nextop;
	while((nextop = interpreter.next_op()) != "null"){
		playlang.compiler compiler = new playlang.compiler(nextop);
		string compiled = compiler.compile();

		playlang.fileio.add_new_line(compiled);
	}
	return 0;
}