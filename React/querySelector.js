import { useEffect, useState } from "react";

const QuerySelect = () => {
  const [currentPage, setCurrentPage] = useState(0);
  const data = [
    [
      {
        id: 1,
        name: '이름1',
        age: 11,
      },
      {
        id: 2,
        name: '이름2',
        age: 22,
      },
    ],
    [
      {
        id: 3,
        name: '이름3',
        age: 33,
      },
      {
        id: 4,
        name: '이름4',
        age: 44,
      }
    ]
  ]

  let query = document.querySelector('.querySelect');
  console.log(query)

  useEffect(()=>{
    query = document.querySelector('.querySelect');
  },[currentPage])
  return (
    <>
     {data.map((item) => (
      <div
        key={item.id}
        className="querySelect"
      >
        {item[currentPage].age}
      </div>
     ))}
      {currentPage}
      <button
        onClick={() => {
          setCurrentPage(0)
        }}
      >-</button>
      <button
        onClick={() => {
          setCurrentPage(1)
        }}
      >+</button>
    </>
  )
}

export default QuerySelect;
