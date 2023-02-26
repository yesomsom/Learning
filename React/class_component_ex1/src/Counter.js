import React, { Component } from "react";

class Counter extends Component {

  constructor(props) {
    super(props);
    this.state = {
      number: 0,
      isState: 'false',
    }
  }
  // state = {
  //   number: 0,
  //   isState: 'false',
  // };

  render() {
    const { number, isState } = this.state;
    const { prop } = this.props;

    console.log(isState);
    return (
      <>
        <h1>{number}</h1>
        <button
          onClick={() => {
            this.setState({number: number + 1});
          }}
        >
          +1
        </button>
        <h1>{isState}</h1>
        <button
          onClick={() => {
            this.setState({isState: 'true'});
          }}
        >
          change
        </button>
        <h1>{prop}</h1>
      </>
    );
  }
};

export default Counter;