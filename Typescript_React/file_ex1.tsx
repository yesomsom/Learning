import React, { useState } from 'react';
import './App.css';

function App() {
  const [binaryData, setBinaryData] = useState<string | null>(null);
  const [imageUrl, setImageUrl] = useState<string | null>(null);

  const handleFileSelect = (event: React.ChangeEvent<HTMLInputElement>) => {
    const file = event.target.files?.[0];

    console.log('file', file)

    if (file) {
      const reader = new FileReader();

      reader.onloadend = () => {
        const binaryString = reader.result as string;
        setBinaryData(binaryString);
      };

      reader.readAsDataURL(file);
    }
  };

  const convertBinaryToImage = () => {
    if (binaryData) {
      const blob = dataURItoBlob(binaryData);
      const imageUrl = URL.createObjectURL(blob);
      setImageUrl(imageUrl);
    }
  };

  const dataURItoBlob = (dataURI: string): Blob => {
    const byteString = atob(dataURI.split(',')[1]);
    const mimeString = dataURI.split(',')[0].split(':')[1].split(';')[0];
    const arrayBuffer = new ArrayBuffer(byteString.length);
    const intArray = new Uint8Array(arrayBuffer);

    for (let i = 0; i < byteString.length; i++) {
      intArray[i] = byteString.charCodeAt(i);
    }

    return new Blob([arrayBuffer], { type: mimeString });
  };

  return (
    <div className="App">
      <header className="App-header">
        <input type="file" onChange={handleFileSelect} />
        <button onClick={convertBinaryToImage}>바이너리 변환</button>
        <div style={{width: '500px'}}>{binaryData}</div>
        {imageUrl && <img width='500px' src={imageUrl} alt="Converted" />}
      </header>
    </div>
  );
}

export default App;
