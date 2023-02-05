import { Button, Checkbox, Form, Input } from 'antd';
import { useIntl, FormattedMessage } from 'react-intl';

const FormEx1 = () => {
  // const { formatMessage } = useIntl();
  const intl = useIntl();
  const onFinish = (values) => {
    console.log('Success:', values);
  };
  
  const onFinishFailed = (errorInfo) => {
    console.log('Failed:', errorInfo);
  };
  return (
    
    <Form
    name="basic"
    labelCol={{ span: 8 }}
    wrapperCol={{ span: 16 }}
    style={{ maxWidth: 600 }}
    initialValues={{ remember: true }}
    onFinish={onFinish}
    onFinishFailed={onFinishFailed}
    autoComplete="off"
  >

    {/* FormattedMessage 1번째 사용법 */}
    <Form.Item
      label="Username"
      name="username"
      rules={[{ required: true,
        message: <FormattedMessage id="PLEASE_INPUT_ID" />, 
      }]}
    >
      <Input />
    </Form.Item>

    {/* FormattedMessage 2번째 사용법 */}
    <Form.Item
      label="Password"
      name="password"
      rules={[{ required: true,
        message: intl.formatMessage({
          id: "PLEASE_INPUT_PW"
        }), 
      }]}
    >
      <Input.Password />
    </Form.Item>

    <Form.Item name="remember" valuePropName="checked" wrapperCol={{ offset: 8, span: 16 }}>
      <Checkbox>Remember me</Checkbox>
    </Form.Item>

    <Form.Item wrapperCol={{ offset: 8, span: 16 }}>
      <Button type="primary" htmlType="submit">
        Submit
      </Button>
    </Form.Item>
  </Form>
  );
};

export default FormEx1;