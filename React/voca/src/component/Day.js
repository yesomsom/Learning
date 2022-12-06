import dummy from "../db/data.json";

export default function Day() {
  const day = 1;
  const wordlist = dummy.words.filter(word=>word.day === day);
  
  return <>
  <h2>Day {day}</h2>
    <table>
      <tbody>
        {wordlist.map(word => (
          <tr key={word.id}>
            <td>{word.eng}</td>
            <td>{word.kor}</td>
          </tr>
        ))}
      </tbody>
    </table>
  </>
}