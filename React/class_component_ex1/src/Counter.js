import React, { Component } from "react";

class Counter extends Component {

  constructor(props) {
    super(props);
    const { prop } = this.props;
    this.state = {
      number: 0,
      isState: 'false',
      propState: prop,
    }
  }
  // state = {
  //   number: 0,
  //   isState: 'false',
  // };

  render() {
    const { number, isState, propState } = this.state;
    const { prop } = this.props;

    console.log(isState);
    return (
      <>
        {/* increase number */}
        <h1>{number}</h1>
        <button
          onClick={() => {
            this.setState({number: number + 1});
          }}
        >
          +1
        </button>

        {/* toggle */}
        <h1>{isState}</h1>
        <button
          onClick={() => {
            if(isState == 'true') {
              this.setState({isState: 'false'});
            } else {
              this.setState({isState: 'true'});
            }
          }}
        >
          change
        </button>

        {/* prop */}
        <h1>{prop} & {propState}</h1>
        <button
          onClick={() => {
            this.setState({propState: prop});
          }}
        >
          prop update
        </button>
      </>
    );
  }
};

export default Counter;