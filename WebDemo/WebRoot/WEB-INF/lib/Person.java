package lee;

public class Person{ 
	private String name;
	private int age;
	//�޲����Ĺ��캯��
	public Person(){ 
		
	}
	//��ʼ��ȫ�����ԵĹ�����
	public Person(String name,int age){ 
		this.name =  name;
		this.age = age;
	}
	//name,age���Ե�setter��getter����
	public void setName(String name){ 
		this.name =  name;
	}
	public void setAge(int age){ 
		this.age = age;
	}
	public String getname(){ 
		return this.name;
	}
	public int getAge(){
		return this.age;
	}
	
}