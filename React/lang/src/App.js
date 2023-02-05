import { IntlProvider } from 'react-intl';
import 'antd/dist/reset.css';
import './App.css';
import { ConfigProvider } from 'antd';
import locale_kr from 'antd/lib/locale/ko_KR';
import locale_en from 'antd/lib/locale/en_US';
import locale from './locale';
import MessageOutput1 from './component/MessageOuput1';
import FormEx1 from './component/FormEx1';

function App() {
  const lang = 'ko';
  console.log(locale[lang]);

  return (
    <IntlProvider locale={lang} messages={locale[lang]}>
      <ConfigProvider locale={lang === 'ko' ? locale_kr : locale_en}>
        <MessageOutput1 />
        <FormEx1 />
      </ConfigProvider>
    </IntlProvider>
  );
}

export default App;
