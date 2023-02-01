import { useEffect, useState } from "react";

const Info = () => {
  const [name, setName] = useState('');
  const [nickname, setNickname] = useState('');

  useEffect(() => {
    console.log('랜더링 완료' + name + " " + nickname);
    return () => {
      console.log('cleanup');
      console.log(name + " " + nickname);
    };
  }, [name, nickname]);

  const onChangeName = e => {setName(e.target.value);};
  const onChangeNickname = e => {setNickname(e.target.value);};

  return (
    <div>
      <div>
        <input value={name} onChange={onChangeName} />
        <input value={nickname} onChange={onChangeNickname} />
      </div>
      <div>
        <b>이름: </b> {name}
      </div>
      <div>
        <b>닉네임: </b> {nickname}
      </div>
    </div>
  );
};

export default Info;