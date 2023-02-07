// async & await 사용

import axios from "axios";
import { useState } from "react";

const AsyncEx2 = () => {
  const [data1, setData1] = useState(null);
  const onClick = async () => {
    try {
      const response = await axios.get(
        'https://jsonplaceholder.typicode.com/todos/1',
      );
      
      // response.data
      setData1(response.data);
    } catch (e) {
      console.log(e);
    }
  }

  return (
    <div>
      <button onClick={onClick}>데이터 불러오기2</button>
      <div>{data1 && <textarea rows={7} cols={35} value={JSON.stringify(data1, null, 2)} readOnly={true} />}</div>
    </div>
  );
};

export default AsyncEx2;