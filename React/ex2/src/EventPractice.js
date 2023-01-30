import { Component } from "react";

class EventPractice extends Component {

  state = {
    message: ''
  }

  render() {
      return (
          <div>
            <h1>이벤트</h1>
            <input
              type="text"
              name="message"
              placeholder="입력"
              value = {this.state.message}
              onChange={
                (e) => {
                  console.log(e.target.value);
                  this.setState({
                    message: e.target.value
                  })
                }
              }
            />
          </div>
      );
  }
}

export default EventPractice;