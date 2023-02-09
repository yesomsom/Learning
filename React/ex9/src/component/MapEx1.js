import { useState } from "react";

const MapEx1 = () => {
  const [animal, setAnimal] = useState([
    {id:1, text:'고양이'},
    {id:2, text:'강아지'},
    {id:3, text:'햄스터'},
    {id:4, text:'고슴도치'}    
  ]);
  const [inputText, setInputText] = useState('');
  const [nextId, setNextId] = useState(5);

  const onChange = e => {
    setInputText(e.target.value);
  }

  const onClick = () => {
    const nextNames = animal.concat({
      id: nextId,
      text: inputText
    });
    setNextId(nextId + 1);
    setAnimal(nextNames);
    setInputText('');
  };

  const onRemove = id => {
    const nextNames = animal.filter(name => name.id !== id);
    setAnimal(nextNames);
  }

  const animalList = animal.map(name => <li key={name.id} onDoubleClick={() => onRemove(name.id)}>{name.text}</li>);
  return (
    <div>
      <h2>동물</h2>
      <input value={inputText} onChange={onChange}/>
      <button onClick={onClick}>추가</button>
      <ul>
        {animalList}
      </ul>
    </div>
  );
};

export default MapEx1;