using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Collections;
using System.Data.SqlClient;
using System.Data;

public class Databind_repeater
{
	public Databind_repeater()
	{
		
	}
    public class Item
    {
        string complain_message,solution_message,Flat_no,Flat_No1;
        int complain_id,solution_id;
        ArrayList _subItems = new ArrayList();

        public Item(int c_id,string c_message,string flat_no,int x) 
        {
            complain_id = c_id;
            Flat_no = flat_no;
            complain_message = c_message;
        }
        public Item(int s_id,string s_message,string flat_no1)
        {
            solution_id = s_id;
            Flat_No1 = flat_no1;
            solution_message = s_message;
        }
        public int Complain_Id { get { return complain_id; } }
        public int Solution_Id { get { return solution_id; } }
        public string Sol_Flat_No { get { return Flat_No1; } }
        public string Com_Flat_No { get { return Flat_no; } }
        public string Complain_Message { get { return complain_message; } }
        public string Solution_Message { get { return solution_message; } }
       
        public ArrayList SubItems { get { return _subItems; } }
    }
    public ArrayList Getdata(DataTable cmp,DataTable sol)
    {
        ArrayList items = new ArrayList();
        for (int i = 0; i < cmp.Rows.Count; i++)
        {
            int c_Id = Convert.ToInt32(cmp.Rows[i]["Complain_Id"]);
            string f_no = Convert.ToString(cmp.Rows[i]["Com_Flat_No"]);
            string c_Message = Convert.ToString(cmp.Rows[i]["Complain_Message"]);

            int count = 0;
            // outer
            Item item = new Item(c_Id,c_Message,f_no,0);

            for (int w = 0; w < sol.Rows.Count; w++)
            {
                if (c_Id == Convert.ToInt32(sol.Rows[w]["Sol_Complain_Id"]))
                {
                    string s_Message = Convert.ToString(sol.Rows[w]["Solution_Message"]);
                    int s_Id = Convert.ToInt32(sol.Rows[w]["Solution_Id"]);
                    string f_no1 = Convert.ToString(sol.Rows[w]["Sol_Flat_No"]);

                    //inner
                    Item subItem = new Item(s_Id, s_Message, f_no1);
                    item.SubItems.Add(subItem);
                }
            }
           /* for (int j = 0; j < count; j++)
            {
                string s_Message = Convert.ToString(sol.Rows[j]["Solution_Message"]);
                int s_Id = Convert.ToInt32(sol.Rows[j]["Solution_Id"]);
                string f_no1 = Convert.ToString(sol.Rows[j]["Sol_Flat_No"]);
               
                //inner
                Item subItem = new Item(s_Id,s_Message,f_no1);
                item.SubItems.Add(subItem);
                
            }*/
            items.Add(item);
        }
        return items;
    }
   
}