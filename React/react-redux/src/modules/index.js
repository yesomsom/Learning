// 리듀서를 하나로 통합

import { combineReducers } from "redux";
import counter from "./counter";
import todos from "./todos";
import doubleReducer from "./double";

const rootReducer = combineReducers({
  counter,
  todos,
  doubleReducer,
});

export default rootReducer;