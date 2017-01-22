#include<bits/stdc++.h>
#include<fstream>
#include<sstream>
using namespace std;
std::ifstream input("test.txt");
std::ofstream output("hfout.csv");
typedef long long ll;
struct trie
{
	trie* next[26];
	ll count_word;
	trie()
	{
		for(ll i=0;i<26;i++)
		{
			next[i]=NULL;
		}
		count_word=0;
	}
	
};
void add(trie* root,string str)
{
	ll i,j;
	ll n=str.size();
	trie *curr=root;
	for(i=0;i<n;i++)
	{
		ll a=str[i]-'a';
		if(curr->next[a]==NULL)
		{
			trie* cur=new trie();
			curr->next[a]=cur;
			curr=cur;
			
		}
		else
		{
			curr=curr->next[a];
		}
	}
	curr->count_word+=1;
}
ll check(trie* root,string str)
{
	
	ll i,j;
	ll n=str.size();
	trie* curr=root;
	for(i=0;i<n;i++)
	{
		ll a=str[i]-'a';
		if(curr->next[a]!=NULL)
		{
			curr=curr->next[a];
		}
		else
		{
			return 0;
		}
	}
	if(curr->count_word>0)
	{
		curr->count_word-=1;
		return 1;
	}
	else
	{
		return 0;
	}
}
double do_it(string str1,string str2)
{
	trie *root1=new trie();
	string str="";
	ll flag=0;
	ll count1=0;
	ll count2=0;
	for(ll i=0;i<str1.size();i++)
	{
		if(str1[i]==' ' && flag==1)
		{
			continue;
		}
		if(str1[i]==' ' && flag==0)
		{
			flag=1;
			add(root1,str);
			count1+=1;
			str="";
			continue;
		}
		if((str1[i]>='a' && str1[i]<='z') || (str1[i]>='A' && str1[i]<='Z'))
		{
			flag=0;
			if((str1[i]>='a' && str1[i]<='z'))
			{
				str+=str1[i];
			}
			else
			{
				str+=tolower(str1[i]);
			}
		}
	}
	if(str!="")
	{
		add(root1,str);
		count1+=1;
	}
	str="";
	flag=0;
	ll count=0;
	for(ll i=0;i<str2.size();i++)
	{
		if(str2[i]==' ' && flag==1)
		{
			continue;
		}
		if(str2[i]==' ' && flag==0)
		{
			flag=1;
			if(check(root1,str))
			{
				count+=1;
			}
			count2+=1;
			//add(root1,str);
			str="";
			continue;
		}
		if((str2[i]>='a' && str2[i]<='z') || (str2[i]>='A' && str2[i]<='Z'))
		{
			flag=0;
			if((str2[i]>='a' && str2[i]<='z'))
			{
				str+=str2[i];
			}
			else
			{
				str+=tolower(str2[i]);
			}
		}
	}
	if(str!="")
	{
		count2+=1;
		if(check(root1,str))
		{
			count+=1;
		}
	}
	return double((double)count/(double)(max(count1,count2)))*100.0;
}
int main()
{
            int n;
            freopen("test.txt","r",stdin);
            freopen("hfout.csv","w",stdout);
    vector<string> vec;
    string s,str=""; ifstream fin;     
   int i;
    while(getline(cin,s))
    {
    	
            str+=s;
             i=str.length();
             //cout<<i<<endl;
            if(str[i-1]=='^')
          	{
          		vec.push_back(str);
           	str="";
           }
           
    }
   // cout<<vec.size()<<endl;
   
    int p1,p2;
         vector<string> v;
     
     int flag;
     int mark[vec.size()];
     memset(mark,0,sizeof(mark));
    for(int i=0;i<vec.size();i++)
    {
    	double maxi=0.0,flag=0;
    	for(int j=0;j<vec.size();j++)
    	{
    		if(i!=j&&(mark[j]==0||mark[i]==0))
    		{
    		double ans=do_it(vec[i],vec[j]);
//    		cout<<ans<<endl;	
    		if(ans>30.0)
    		{
    			flag=1;
    			
    			mark[i]=1;
    			mark[j]=1;
    			//maxi=ans;
                //p1=i;p2=j;
               
    		}
    	    }
    	}
    	if(flag)
    	v.push_back(vec[i]);

       }   
                                
    for(int i=0;i<v.size();i++)
    	cout<<v[i]<<endl;
    return 0;
}