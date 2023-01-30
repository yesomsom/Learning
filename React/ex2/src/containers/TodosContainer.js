import { connect } from "react-redux";
import { bindActionCreators } from "redux";
import { changeInputFun, insertFun, toggleFun, removeFun } from "../modules/todos";
import Todos from "../components/Todos";

const TodosContainer = ({
    input,
    todos,
    changeInputFun,
    insertFun,
    toggleFun,
    removeFun,
}) => {
    return (
        <Todos
            input={input}
            todos={todos}
            onChangeInputFun={changeInputFun}
            onInsert={insertFun}
            onToggle={toggleFun}
            onRemove={removeFun}
        />
    );
};

const mapStateToProps = state => ({
    input: state.todos.input,
    todos: state.todos.todos,
});

const mapDispatchToProps = dispatch => bindActionCreators({
  changeInputFun,
  insertFun,
  toggleFun,
  removeFun,
},dispatch);

export default connect(mapStateToProps,mapDispatchToProps)(TodosContainer);