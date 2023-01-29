// 액션 타입 정의
const doubleAction = 'modules/DOUBLEACTION';

// 액션 함수 정의
export const doubleActionFun = () => ({
  type: doubleAction,
});

// 초기 상태
const initialState = {
  nowNum: 1
};

// 리듀서
function doubleReducer(state=initialState, action) {
  switch(action.type) {
    case doubleAction:
      return {
        nowNum: state.nowNum * 2
      };
    default:
      return state;
  }
}

export default doubleReducer;