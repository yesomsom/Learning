import {Link} from "react-router-dom";

export default function Header() {
  return (
    <div className="header">
      <h1>
        <Link to="/" className="title">영단어 뽀개기</Link>
      </h1>
      <div className="menu">
        <Link to="/create_word" className="link">
          단어 추가
        </Link>
        <a href="#x" className="link">
          Day 추가
        </a>
      </div>
    </div>
  );
}