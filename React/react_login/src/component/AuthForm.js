import { Col, Row, Form, Button, Input } from "antd";
import axios from "axios";
import { Link,useNavigate } from "react-router-dom";

const AuthForm = () => {
  const history = useNavigate();

  const onFinish = (values) => {
    axios.post('http://localhost:3007/normalMember', {
      userId: values.userId,
      password: values.password
    })
    .then(function (response) {
      console.log(response);
      history('/login');
      window.alert('회원가입이 완료되었습니다.');
    })
    .catch(function (error) {
      console.log(error);
    });
    console.log(values);
    console.log(values.userId);
    console.log(values.password);
  };

  return (
    <div>
      <Row>
        <Col span={24}>
          <Row>
            <Col span={24}>
              <h1>회원가입 페이지</h1>
            </Col>
          </Row>
          <Form
            initialValues={{
              userId: '',
              password: '',
            }}
            onFinish={onFinish}
          >
            <Row>
              <Col span={6} offset={9}>
                <Form.Item
                name="userId"
                >
                  <Input placeholder="아이디 입력"/>
                </Form.Item>
              </Col>
            </Row>
            <Row>
              <Col span={6} offset={9}>
                <Form.Item
                name="password"
                >
                  <Input.Password placeholder="비밀번호 입력"/>
                </Form.Item>
              </Col>
            </Row>
            <Row>
              <Col span={24}>
                <Button type="primary" htmlType="submit">
                  회원가입
                </Button>
              </Col>
            </Row>
          </Form>
        </Col>
      </Row>
      <Row>
        <Col span={24}>
            <Link to="/login">로그인하기</Link>
        </Col>
      </Row>
    </div>
  );
};

export default AuthForm;