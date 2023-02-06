function printAfter3000() {
  console.log('print after 3000');
}

setTimeout(printAfter3000, 3000);
console.log('대기중...');

const AsyncEx1 = () => {
  return (
    <div></div>
  );
};

export default AsyncEx1;