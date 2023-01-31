import { useState } from "react";

const EventPracticeFun1 = () => {
  const [form, setForm] = useState({
    username: '',
    message: ''
  });
  const { username, message } = form;

  const onChange = e => {
    const nextForm = {
      ...form,
      [e.target.name]: e.target.value
    };
    setForm(nextForm);
  };

  const onKeyPress = e => {
    if(e.key === 'Enter') {
      onClick();
    }
  };

  const onClick = e => {
    alert(username + ": " + message);
    setForm({
      username: '',
      message: ''
    });
  }

  return (
    <div>
      <h1>이벤트 Function1</h1>
      <input 
        type="text"
        name="username"
        placeholder="사용자명"
        value={username}
        onChange={onChange}
      />
      <input
        type="text"
        name="message"
        placeholder="메세지"
        value={message}
        onChange={onChange}
        onKeyPress={onKeyPress}
      />
      <button onClick={onClick}>확인</button>
    </div>
  )
};

export default EventPracticeFun1;