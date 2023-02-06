import types from "../types";

const langInit = localStorage.getItem('locale') ? localStorage.getItem('locale') : 'ko';

export default(state = langInit, action) => {
  switch(action.type) {
    case types.langChange:
      return action.payload;
    default:
      return state;
  }
}