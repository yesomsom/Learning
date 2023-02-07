import axios from 'axios';
import { useState } from 'react';
import './App.css';
import { Form, Button, Input } from "antd";

function App() {
  const [data, setData] = useState('');
  const onRead = async () => {
    try {
      const { data } = await axios.get(
        'http://localhost:3001/member'
      );
      setData(data);
    } catch (e) {
      console.log(e);
    }
  }
  const onFinish = async (values) => {
    try {
      const { data } = await axios.post(
        'http://localhost:3001/member', {
          userId: values.userId,
          password: values.password
        }
      );
      setData(data);
    } catch (e) {
      console.log(e);
    }
  }

  return (
    <div className="App">
      <button onClick={onRead}>데이터 읽기</button>
      <div>{data && <textarea rows={7} cols={35} value={JSON.stringify(data, null, 2)}></textarea>}</div>
      <Form
        initialValues={{
          userId: '',
          password: '',
        }}
        onFinish={onFinish}
      >
        <Form.Item name="userId">
          <Input placeholder="아이디 입력"/>
        </Form.Item>
        <Form.Item name="password">
          <Input placeholder="비밀번호 입력"/>
        </Form.Item>
        <Button type="primary" htmlType="submit">데이터 저장</Button>
      </Form>

    </div>
  );
}

export default App;
// npx json-server ./src/database/data.json --port 3001