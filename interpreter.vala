namespace playlang
{
	class interpreter
	{
		private string[] nextop;
		private int opctr;
		public interpreter(string tointerpret)
			{
				this.nextop = tointerpret.split("\n", 10000);
				this.opctr = 0;				
			}
		public string next_op()
			{
				return this.nextop[this.opctr++];
			}		
	}
}
