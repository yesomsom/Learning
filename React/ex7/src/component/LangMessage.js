import { FormattedMessage } from "react-intl";

const LangMessage = () => {
  return (
    <div>
      <FormattedMessage id="main" />
      <br />
      <FormattedMessage id="url_input" values={{name:"jake"}} />
    </div>
  );
};

export default LangMessage;