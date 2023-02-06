import { createStore } from 'redux';
import reducer from './reducers';
import { devToolsEnhancer } from 'redux-devtools-extension';

const store = createStore(reducer, devToolsEnhancer());
console.log("store");

export default store;