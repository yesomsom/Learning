import React, { useEffect, useRef, useState } from "react";

const SearchEx2 = () => {
  const [page, setPage] = useState(0);
  const [allState, setAllState] = useState('');
  const formRef = useRef<HTMLFormElement>(null);
  const all = formRef.current ? (formRef.current?.elements as any).all.value : 'no';


  const makePageSet = (ind:number) => (
    <button
      type="button"
      key={ind}
      onClick={() => {
        const all = formRef.current ? (formRef.current?.elements as any).all.value : 'no';
        setPage(ind + 1);
        console.log('page', ind+1, 'all', all, allState);
      }}
    >
      {ind + 1}
    </button>
  );


  
  console.log('all Ref', all);
  console.log('page top', page);

  return (
    <div>
      <form
        ref={formRef}
        onSubmit={(e: React.FormEvent<HTMLFormElement>)=>{
          e.preventDefault();
          setPage(0);
          const { all, one, two, three } = (e.currentTarget.elements as any); 
          const oneId = one.checked ? one.id : '';
          const twoId = two.checked ? two.id : '';
          const threeId = three.checked ? three.id : '';
          
          console.log('all',all.value);
          console.log('one checked',one.checked);
          console.log('one checked',one.id);
          console.log('page', page);
          console.log('page 0', 'all', all.value, 'check', oneId,'check', twoId, 'check', threeId);
          setAllState(all.value);
        }}
      >
        <input name="all"/>
        <input type="checkbox" name="one" id="oneId"/>
        <input type="checkbox" name="two" id="twoId"/>
        <input type="checkbox" name="three" id="threeId"/>
        <button>submit</button>
        {console.log('page bottom', page)}
        <div>
          {page !== 1 && (
            <button
              type="button"
              onClick={() => {
                setPage(page - 1);
              }}
            >*-</button>
          )}
          {Array.from({ length: 5 })
            .map((_, ind) => (page <= 3 ? ind + 1 : Math.ceil(23 / 5) - 2 > page ? page - 2 + ind : Math.ceil(23 / 5) - 4 + ind))
            .filter((_) => 23 > 0 && _ <= Math.ceil(23 / 5))
            .map((_) => makePageSet(_ - 1))}
          {page < 23 / 5 && (
            <button
              type="button"
              onClick={() => {
                setPage(page + 1);
              }}
            >-*</button>
          )}
      </div>
      </form>
    </div>
  )
};

export default SearchEx2;
