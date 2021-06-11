import java.lang.*;

public class HelloWorld
{
	public static void main(String args[])
	{
		while(true)
		{
			System.out.println("Helloworld");

			try {
				Thread.sleep(60000);

			} catch(Exception ex){

				System.out.println(ex);
			}
		}
	}
}
