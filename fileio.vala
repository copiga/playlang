namespace playlang
{
	class fileio
	{
		public static string get_whole_file(FileStream infile)
			{
				char nextchar;
				string retstring = "";
				
				while((nextchar = (char)infile.getc()) != infile.EOF){
					retstring+=nextchar.to_string();
				}

				return retstring;
			}
	}
}
