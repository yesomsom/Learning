const NotFound = () => {
  return (
    <div
      style={{
        display: 'flex',
        flexDirection: 'column',
        alignItems: 'center',
        justifyContent: 'center',
        fontSize: 64,
        position: 'absolute',
        width: '100%',
        height: '100%',
      }}
    >
      <div>404</div>
      <div style={{fontSize: 40}}>페이지를 찾을 수 없습니다.</div>
    </div>
  );
};

export default NotFound;