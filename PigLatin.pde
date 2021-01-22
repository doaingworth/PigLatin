public void setup() 
{
	String[] lines = loadStrings("words.txt");
	System.out.println("there are " + lines.length + " lines");
	for (int i = 0 ; i < lines.length; i++) 
	{
	  System.out.println(pigLatin(lines[i]));
	}
}
public void draw()
{
        //not used
}
public int findFirstVowel(String sWord)
//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
{
	return -1;
}

public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
        int startAt = 0;
        for (int x = 1; x < sWord.length(); x++)
        {
            if (isVowel(sWord.charAt(x)))
            {
                startAt = x+1;
                break;
            }
        }
        String stringy = "";
        for (int x = startAt; x < sWord.length(); x++)
        {
            stringy += sWord.substring(x,x+1);
        }
        stringy += sWord.substring(0,startAt);
        stringy += "ay";
        return stringy;
}
public static boolean isVowel(char ch)
    {
        if (ch == 'a' || ch == 'e' || ch == 'i' || ch == 'o' || ch == 'u')
        {
            return true;
        }
        else
        {
            return false;
        }
    }
