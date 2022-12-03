export default function Welcome() {
  let age = 26;
  let beverage = (age >= 21) ? "Beer" : "Juice";
  let name = "Kate";
  function changeName() {
    name = (name==="Kate") ? "Jane" : "Kate";
    console.log(name);
    document.getElementById("name").innerText = name;
  }

  return (
    <div>
      <p>Welcome</p>
      <p id ="name">{name}</p>
      <p>{age} & {beverage}</p>
      <button onClick={changeName}>Change</button>
    </div>  
  ) 

};