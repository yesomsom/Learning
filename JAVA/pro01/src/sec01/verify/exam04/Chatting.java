package sec01.verify.exam04;

public class Chatting {
	void startChat(String ChatId) {
		String nickName = ChatId;
		
		class Chat {
			public void start() {
				String inputData = "안녕하세요";
				String message = "[" + nickName + "] " + inputData;
				sendMessage(message);
			}


			void sendMessage(String message) {
				System.out.println(message);
				
			}
			}
		Chat chat = new Chat();
		chat.start();
	}
}
