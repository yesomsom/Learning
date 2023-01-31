import { useParams } from "react-router-dom";

const data = {
  aPerson: {
    name: '사람1',
    description: '프론트엔드 개발자',
  },
  bPerson: {
    name: '사람2',
    description: '백엔드 개발자',
  },
};

const Profile = () => {
  const params = useParams();
  const profile = data[params.userName];

  return (
    <div>
      <h1>사용자 프로필 조회</h1>
      {profile ? (
        <div>
          <h2>{profile.name}</h2>
          <p>{profile.description}</p>
        </div>
      ) : (
        <p>존재하지 않습니다.</p>
      )}
    </div>
  )
};

export default Profile;