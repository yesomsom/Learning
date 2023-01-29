import Counter from "../component/Counter";
import { connect } from "react-redux";
import { increase, decrease } from "../modules/counter";
import { bindActionCreators } from "redux";

const CounterContainer = ({ number, increase, decrease }) => {
  return (
    <Counter num={number} onIncrease={increase} onDecrease={decrease} />
  );
};

// state를 넘겨줌
const mapStateToProps = state => ({
  number: state.counter.number,
});

// action function을 넘겨줌
const mapDispatchToProps = dispatch => bindActionCreators({
  increase,
  decrease,
}, dispatch);

export default connect(mapStateToProps, mapDispatchToProps,)(CounterContainer);