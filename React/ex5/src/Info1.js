import { useReducer } from "react";

function reducer1(state, action) {
  return {
    ...state,
    [action.name]: action.value
  };
}

const Info1 = () => {
  const [state, dispatch] = useReducer(reducer1, {
    name1: '',
    nickname1: ''
  });

  const { name1, nickname1 } = state;
  const onChange = e => {
    dispatch(e.target);
    console.log(e.target);
    console.log(e.target.name);
    console.log(e.target.value);
    console.log(e.target.className);
  }

  return (
    <div>
      <div>
        <input className="class1" name="name1" value={name1} onChange={onChange} />
        <input name="nickname1" value={nickname1} onChange={onChange} />
      </div>
      <div>
        <div>
          <b>이름: </b> {name1}
        </div>
        <div>
          <b>닉네임: </b> {nickname1}
        </div>
      </div>
    </div>
  );
};

export default Info1;