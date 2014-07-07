using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Utilities
/// </summary>
public class Utilities
{
	public Utilities()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    int x = 0;
    int y = 0;
    public Utilities(int a, int b)
    {
        this.x = a;
        this.y = b;
    }
    public int add()
    {
        int c = x+y;
        return c;
    }
    public int add(int p, int q, int r)
    {
        return p + q + r;
    }
}