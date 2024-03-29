import React, { useEffect, useRef, useState } from "react";

const SearchEx1 = () => {
  const [page, setPage] = useState<number>(0);
  const formRef = useRef<HTMLFormElement>(null);
  const nameRef = useRef<HTMLInputElement>(null);
  const checkRef1 = useRef<HTMLInputElement>(null);
  const checkRef2 = useRef<HTMLInputElement>(null);
  const dataLength = 22;

  const makePageSet = (ind:number) => (
    <button
      type="button"
      key={ind}
      onClick={() => {
        setPage(ind + 1);
        const name4 = nameRef.current ? nameRef.current.value : 'name4';
        const checkbox1 = checkRef1.current ? checkRef1.current.checked ? checkRef1.current.id : 'noCheck' : 'null';
        const checkbox2 = checkRef2.current ? checkRef2.current.checked ? checkRef2.current.id : 'noCheck' : 'null'; 
        console.log('내부page:', ind+1, 'name:', name1, 'checkbox:', checkbox1, 'checkbox:', checkbox2);
      }}
    >
      {ind + 1}
    </button>
  );

  const name2 = '';
  if(nameRef.current) {
    const name2 = nameRef.current.value;
  }

  // 이전 것 출력
  const name1 = nameRef.current ? nameRef.current.value : 'name1';
  console.log('current',nameRef.current);
  console.log('name1 먼저',name1);

  // const name3 = (formRef.current?.elements as any).name.value;
  // console.log('value',(formRef.current?.elements as any).name.value);

  useEffect(()=>{
    console.log("처음effect");
  },[]);

  return (
    <div>
      <form
        ref={formRef}
        onSubmit={(e: React.FormEvent)=>{
          e.preventDefault();
          setPage(0);
          const name = nameRef.current ? nameRef.current.value : 'name';
          console.log(nameRef.current);

          const checkbox1 = checkRef1.current ? checkRef1.current.checked ? checkRef1.current.id : 'noCheck' : 'null';
          const checkbox2 = checkRef2.current ? checkRef2.current.checked ? checkRef2.current.id : 'noCheck' : 'null';
          
          console.log('button name',name); // 변경사항 바로 정상 출력
          console.log('체크유무',checkbox1);

          console.log('name',name); // 변경사항 바로 정상 출력
          console.log('name1',name1); // 이전 것 출력
          console.log('name2', name2); // 내용 없음
          // console.log('name3', name3);
          console.log('form page: 0, name:', name, 'checkbox:', checkbox1, 'checkbox:', checkbox2);
        }}
      >
        <input
          id="name"
          name="name"
          type="text"
          ref={nameRef}
        />
        <input type="checkbox" ref={checkRef1} id="check1" name="checkName1" />
        <input type="checkbox" ref={checkRef2} id="check2" />

        <button type="submit">submit 버튼</button>
        {/* <button type="button" onClick={(e:any) => {

        }}>1</button> */}
        <hr></hr>
        <div>
          {page !== 1 && (
            <button
              type="button"
              onClick={() => {
                setPage(page - 1);
                const name = nameRef.current ? nameRef.current.value : 'name';
                const checkbox1 = checkRef1.current ? checkRef1.current.checked ? checkRef1.current.id : 'noCheck' : 'null';
                const checkbox2 = checkRef2.current ? checkRef2.current.checked ? checkRef2.current.id : 'noCheck' : 'null';
                console.log('button name',name); // 변경사항 바로 정상 출력
                console.log('체크유무',checkbox1);
                console.log('왼쪽page:', page, 'name:', name, 'checkbox:', checkbox1, 'checkbox:', checkbox2);
              }}
            >*-</button>
          )}
          {Array.from({ length: 5 })
            .map((_, ind) => (page <= 3 ? ind + 1 : Math.ceil(dataLength / 5) - 2 > page ? page - 2 + ind : Math.ceil(dataLength / 5) - 4 + ind))
            .filter((_) => dataLength > 0 && _ <= Math.ceil(dataLength / 5))
            .map((_) => makePageSet(_ - 1))}
          {page < dataLength / 5 && (
            <button
              type="button"
              onClick={() => {
                setPage(page + 1);
                const name = nameRef.current ? nameRef.current.value : 'name';
                const checkbox1 = checkRef1.current ? checkRef1.current.checked ? checkRef1.current.id : 'noCheck' : 'null';
                const checkbox2 = checkRef2.current ? checkRef2.current.checked ? checkRef2.current.id : 'noCheck' : 'null';
                console.log('오른쪽page:', page, 'name:', name, 'checkbox:', checkbox1, 'checkbox:', checkbox2);
              }}
            >-*</button>
          )}
      </div>
      </form>
    </div>
  )
};

export default SearchEx1;
