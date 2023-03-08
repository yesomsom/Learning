const ex1 = () => {
  const onChangeFun = (e) => {
    const regex = /^(?=.*\d{1})(?=.*\d{1})[0-9*/?!@#$%^&()<>\\\-_+=~/,/.`|]{4}$/;
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

    <div 
      style={{backgroundColor: "blue", width: "200px", textAlign: "center"}}
    >
      <input
        onChange={onChangeFun}
        style={{backgroundColor: "yellow", border: "none", fontSize: "30px", width: "62px"}}
      >
      </input>
      <div style={{display: "flex", flex: 1, zIndex:100, position: "relative", top: "-5px", margin: "0px auto", width: "62px"}}>
        <div style={{borderTop: "1px solid red", width: "35px", margin: "0px 2px"}}></div>
        <div style={{borderTop: "1px solid red", width: "35px", margin: "0px 2px"}}></div>
        <div style={{borderTop: "1px solid red", width: "35px", margin: "0px 2px"}}></div>
        <div style={{borderTop: "1px solid red", width: "35px", margin: "0px 2px"}}></div>
      </div>
    </div>
  );
};

export default ex1;
