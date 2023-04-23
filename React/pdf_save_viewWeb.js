import './App.css';
import { jsPDF } from "jspdf";

function App() {
  return (
    <div className="App">
      <button
        onClick={() => {
          var doc = new jsPDF("p", "mm", "a4");
          
          doc.line(15, 19, 195, 19); // 선 그리기(시작x, 시작y, 끝x, 끝y)
          doc.text(15, 40, 'Hello'); // 글씨 입력(시작x, 시작y, 내용)
          
          doc.save('web.pdf');  //결과 출력
        }}
      >
        저장
      </button>
      <button
        onClick={() => {
          var doc = new jsPDF("p", "mm", "a4");
          
          doc.line(15, 19, 195, 19); // 선 그리기(시작x, 시작y, 끝x, 끝y)
          doc.text(15, 40, 'Hello'); // 글씨 입력(시작x, 시작y, 내용)
          
          // 웹으로 새창 열어서 보기
          const pdfDataUri = doc.output('dataurlnewwindow');
          window.open(pdfDataUri, '_blank');
        }}
      >
        웹으로 보기
      </button>
    </div>
  );
}

export default App;

//$ npm install jspdf
