// async & await 사용

import axios from "axios";
import { useState } from "react";

const AsyncEx2 = () => {
  const [data1, setData1] = useState(null);
  const onClick = async () => {
    try {
      const response = await axios.get(
        'http://localhost:3004/project',
      );
      
      // response.data
      setData1(response.data);
    } catch (e) {
      console.log(e);
    }
  }

  const onCreate = async () => {
    try {
      await axios.post(
        'http://localhost:3004/project', {
          title : 'c',
          id : '11111'
        }
      );
    } catch (e) {
      console.log(e);
    }
  }

  return (
    <div>
      <button onClick={onClick}>데이터 불러오기2</button>
      <div>{data1 && <textarea rows={7} cols={35} value={JSON.stringify(data1, null, 2)} readOnly={true} />}</div>
      <form>
        <button onClick={onCreate}>추가</button>
      </form>
    </div>
  );
};

export default AsyncEx2;