import { Link } from 'react-router-dom';

const Home = () => {
  return (
    <div>
      <h1>홈</h1>
      <p>홈 메인 페이지</p>
      <ul>
        <li>
          <Link to="/about">소개</Link>
        </li>
        <li>
          <Link to="/profile/aPerson">a 소개</Link>
        </li>
        <li>
          <Link to="/profile/aPerson">b 소개</Link>
        </li>
        <li>
          <Link to="/profile/void">존재하지 않는 프로필입니다.</Link>
        </li>
        <li>
          <Link to="/about1">소개1</Link>
        </li>
      </ul>
    </div>
  );
};

export default Home;