import { Link } from 'react-router-dom';

const Home = () => {
  return (
    <div>
      <h1>홈</h1>
      <p>홈 메인 페이지</p>
      <Link to="/about">소개</Link>
    </div>
  );
};

export default Home;