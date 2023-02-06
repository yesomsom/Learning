import { FormattedMessage } from "react-intl";
import { Radio, ConfigProvider, Space, Table, Col, Modal } from "antd";
import enUS from 'antd/locale/en_US';
import koKR from 'antd/locale/ko_KR';
import { useState } from "react";

const MessageOutput1 = () => {
  const [localeValue, setLocalValue] = useState('ko');
  const changeLocale = (e) => {
    const localeValue = e.target.value;
    console.log(localeValue);
    setLocalValue(localeValue);
  };

  return (
    <div>
      <FormattedMessage id="LOGIN_FAILED" />
      <div>어쩌고저쩌고</div>
      <div>Hello</div>
      <Radio.Group onChange={changeLocale}>
        <Radio.Button key="ko" value={koKR}>
          한국어
        </Radio.Button>
        <Radio.Button key="en" value={enUS}>
          English
        </Radio.Button>
      </Radio.Group>
      <ConfigProvider locale={localeValue}>
        <Page />
      </ConfigProvider>
    </div>
  );
};

export default MessageOutput1;

const Page = () => {

  return (
    <Space
      direction="vertical"
      size={[0, 16]}
      style={{ width: "100%", paddingTop: 16, borderTop: `1px solid #d9d9d9` }}
    >
      <Table dataSource={[]} Col={Col} />
    </Space>
  );
};