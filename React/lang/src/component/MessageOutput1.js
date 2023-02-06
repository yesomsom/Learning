import { FormattedMessage } from "react-intl";
import { Radio, ConfigProvider, Space, Table, Col } from "antd";
import enUS from 'antd/locale/en_US';
import koKR from 'antd/locale/ko_KR';
import { useState } from "react";
import Action from "../redux/actions";
import { connect } from "react-redux";

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

const MessageOutput1 = ({lang, langChange}) => {
  const [localeValue, setLocalValue] = useState('ko');
  const changeLocale = (e) => {
    const localeValue = e.target.value;
    console.log(localeValue);
    setLocalValue(localeValue);
  };
  console.log("lang_Message:"+lang)
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
      <hr />

      <h2>리덕스 사용</h2>
      <button 
        onClick={() => {
          localStorage.setItem('locale', 'ko');
          langChange('ko');
        }}>
          한국어
      </button>
      <button 
        onClick={() => {
          localStorage.setItem('locale', 'en');
          langChange('en');
        }}>
          영어
      </button>
      <div>{lang}</div>
    </div>
  );
};

function mapStateToProps(state) {
  return {
    lang: state.langReducer,
  };
}

function mapDispatchToProps(dispatch) {
  return {
    langChange: (change) => {
      dispatch(Action.langChange(change));
    },
  };
}

export default connect(mapStateToProps, mapDispatchToProps)(MessageOutput1);
