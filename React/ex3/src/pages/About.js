import { useLocation } from "react-router-dom";

const About = () => {
  const location = useLocation();

  return (
    <div>
      <h1>소개</h1>
      <p>리액트 라우터 사용</p>
      <p>search: {location.search}</p>
      <p>pathname: {location.pathname}</p>
      <p>hash: {location.hash}</p>
      <p>state: {location.state}</p>
      <p>key: {location.key}</p>
    </div>
  );
};

export default About;