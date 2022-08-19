package pro01;

public class Label {

	public static void main(String[] args) {
		Label: for(char alp1='A';alp1<='Z';alp1++) {
			for(char alp2='a';alp2<='z';alp2++) {
				System.out.println(alp1 + "-" + alp2);
				if(alp1 == 'C'  || alp2 == 'c') {
					break Label;
				}
			}
		}

	}

}
