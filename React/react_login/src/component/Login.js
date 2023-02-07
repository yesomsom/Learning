import { Col, Row, Form, Button, Input } from "antd";

const Login = () => {

  return (
    <div>
      <Row>
        <Col span={24}>
          <Row>
            <Col span={24}>
              <h1>로그인 페이지</h1>
            </Col>
          </Row>
          <Form
            initialValues={{
              userId: '',
              password: '',
            }}
            onFinish={(values) => {

            }}
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
                <Button type="submit">
                  로그인
                </Button>
              </Col>
            </Row>
          </Form>
        </Col>
      </Row>
    </div>
  );
};

export default Login;