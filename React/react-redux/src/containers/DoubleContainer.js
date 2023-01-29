import { connect } from "react-redux";
import { bindActionCreators } from "redux";
import Double from "../component/Double";
import { doubleActionFun } from "../modules/double";

const DoubleContainer = ({ nowNum, doubleActionFun}) => {
  return (
    <Double rawNum={nowNum} onDouble={doubleActionFun}/>
  );
};

const mapStateToProps = state => ({
  nowNum: state.doubleReducer.nowNum,
});

const mapDispatchToProps = dispatch => bindActionCreators({
  doubleActionFun,
}, dispatch);

export default connect(mapStateToProps,mapDispatchToProps)(DoubleContainer);