import { IntlProvider } from 'react-intl';
import 'antd/dist/reset.css';
import './App.css';
import { ConfigProvider } from 'antd';
import locale_kr from 'antd/lib/locale/ko_KR';
import locale_en from 'antd/lib/locale/en_US';
import locale from './locale';
import MessageOutput1 from './component/MessageOuput1';

function App() {
  const lang = 'en';
  return (
    <IntlProvider locale={lang} message={locale[lang]}>
      <ConfigProvider locale={lang === 'ko' ? locale_kr : locale_en}>
        <MessageOutput1 />
      </ConfigProvider>
    </IntlProvider>
  );
}

export default App;
