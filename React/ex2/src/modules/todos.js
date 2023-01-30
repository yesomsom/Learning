// 액션 정의
const CHANGE_INPUT = 'todos/CHANGE_INPUT';
const INSERT = 'todos/INPUT';
const TOGGLE = 'todos/TOGGLE';
const REMOVE = 'todos/REMOVE';

// 액션 함수
export const changeInputFun = input => ({
    type: CHANGE_INPUT,
    input
});

let id = 3;
export const insertFun = text => ({
    type: INSERT,
    todo: {
        id: id++,
        text,
        done: false
    }
});

export const toggleFun = id => ({
    type: TOGGLE,
    id
});

export const removeFun = id => ({
    type: REMOVE,
    id
});

// 초기화
const initialState = {
    input: '',
    todos: [
        {
            id: 1,
            text: '리덕스',
            done: true
        },
        {
            id: 2,
            text: '리듀서',
            done: false
        }
    ]
};

// 리듀서
function todos(state=initialState, action) {
    switch(action.type) {
        case CHANGE_INPUT:
            return {
                ...state,
                input: action.input
            };
        case INSERT:
            return {
                ...state,
                todos: state.todos.concat(action.todo)
            };
        case TOGGLE:
            return {
                ...state,
                todos: state.todos.map(todo => 
                    todo.id === action.id ? { ...todo, done: !todo.done } : todo    
                )
            };
        case REMOVE:
            return {
                ...state,
                todos: state.todos.filter(todo => todo.id !== action.id)
            };
        default:
            return state;
    }
}

export default todos; 