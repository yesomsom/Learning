import React from 'react';
import ReactDOM from 'react-dom/client';
import './index.css';
import App from './App';
import reportWebVitals from './reportWebVitals';
import { IntlProvider } from 'react-intl';
import en from './locale/en.json';

const root = ReactDOM.createRoot(document.getElementById('root'));
const lang = localStorage.getItem('locale') ? localStorage.getItem('locale') : 'ko';
console.log(lang);

root.render(
  <IntlProvider locale='en' messages={en}>
    <React.StrictMode>
      <App />
    </React.StrictMode>
  </IntlProvider>
);

// If you want to start measuring performance in your app, pass a function
// to log results (for example: reportWebVitals(console.log))
// or send to an analytics endpoint. Learn more: https://bit.ly/CRA-vitals
reportWebVitals();
