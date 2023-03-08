import React, { useState } from "react";

const AllChecked = () => {
  const [isChecked, setIsChecked] = useState<boolean>(false);
  const [checkType, setCheckType] = useState<string>('');
  const [visibleChecked, setVisibleChecked] = useState<boolean>(false);
  const onChangeAllChecked = () => {
    setIsChecked(!isChecked);
    setCheckType('allCheck');
  }
  const noVisibleCheck = () => {
    setCheckType('');
  }

  return (
    <div>
      <form
        onSubmit={(e: React.FormEvent<HTMLFormElement>)=>{
          e.preventDefault();
          const { allCheck, one, two } = (e.currentTarget.elements as any);
          const type_check:string[] = [];
          console.log(one.checked);
          if(one.checked) type_check.push(one.id);
          if(two.checked) type_check.push(two.id);
          console.log(type_check);
        }}
      >
        <input
          name="allCheck"
          id="allCheck"
          type="checkbox"
          // onChange={onChangeAllChecked}
        /> all
        <input
          name="one"
          id="one"
          type="checkbox"
          // onClick={noVisibleCheck}
          // checked={checkType == 'allCheck'? isChecked : undefined}
          checked={isChecked}
          onChange={(e)=> {
            setIsChecked(!isChecked);
          }}
        />one
        <input
          name="two"
          id="two"
          type="checkbox"
          // onClick={noVisibleCheck} 
          // checked={checkType == 'allCheck'? isChecked : undefined}
          checked={isChecked}
        />two
        <button>
          전송
        </button>
      </form>
    </div>
  );
};

export default AllChecked;
