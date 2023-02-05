import { IntlProvider } from 'react-intl';
import 'antd/dist/reset.css';
import './App.css';
import { ConfigProvider } from 'antd';
import locale_kr from 'antd/lib/locale/ko_KR';
import locale_en from 'antd/lib/locale/en_US';

function App() {
  const lang = 'ko';
  return (
    <IntlProvider locale={lang}>
      <ConfigProvider locale={lang === 'ko' ? locale_kr : locale_en}>
        <div>
          dfsg 아하
        </div>
      </ConfigProvider>
    </IntlProvider>
  );
}

export default App;
