const ex1 = () => {
  const onChangeFun = (e) => {
    const regex = /^(?=.*\d{2})[0-9*/?!@#$%^&()<>\\\-_+=~/,/.`|]{4}$/;
    const reg = /[\{\}\[\]\/?.,;:|\)*~`!^\-_+<>@\#$%&\\\=\(\'\"]/gi;
    const inputValue = e.target.value;
    const replaceValue = inputValue.replace(reg, '*');
    console.log(inputValue);
    if(!regex.test(inputValue)) {
      console.log('error');
    } else {
      console.log('success',replaceValue);
    }
  }

  return (

    <>
      <input
        onChange={onChangeFun}
      >
      </input>
    </>
  );
};

export default ex1;
