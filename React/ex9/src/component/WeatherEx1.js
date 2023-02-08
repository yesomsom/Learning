const WeatherEx1 = () => {
  const names = ['비', '맑음', '구름', '안개', '이슬'];
  const nameList = names.map((name, index) => <li key={index}>{name}</li>)
  return (
    <div>
      <h2>날씨 정보</h2>
      <ul>
        {nameList}
      </ul>
    </div>
  )
}

export default WeatherEx1;