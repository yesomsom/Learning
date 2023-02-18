import React, { useState, useEffect } from 'react';
import 'ol/ol.css';  //스타일
import { Map as OlMap, View } from 'ol';  //뷰 관리
import { fromLonLat, get as getProjection } from 'ol/proj'; //위경도
import { Tile as TileLayer } from 'ol/layer';  //지도타일
import { OSM } from 'ol/source';  //지도정보
import { Circle } from 'ol/geom.js';
import Feature  from 'ol/Feature.js';
import { Style,Stroke,Fill, Text } from 'ol/style.js';
import VectorLayer  from 'ol/layer/Vector.js';
import Vector  from 'ol/source/Vector.js';
import point from 'ol/geom/Point';

function Map(props){
    const { setMapObject, clickProps } = props;

    //const [clickProps, setClickProps] = useState(false);
    //const [mapObject, setMapObject] = useState({})
    useEffect(() => {
        const map = new OlMap({
            layers: [
                new TileLayer({
                    source: new OSM()
                })
            ],
            target: 'map1', 
            view: new View({
                center: fromLonLat([126.9714, 37.5539], getProjection('EPSG:3857')),
                zoom: (clickProps !== true) ? 14 : 16
            })
        })
        console.log(clickProps);
        var pnt = new point([126.9714, 37.5539]).transform('EPSG:4326', 'EPSG:3857');  //위경도를 오픈레이어스에서 사용중인 값으로 변환
        var changePoints = pnt.getCoordinates();
        var vectorSource = new Vector({projection: 'EPSG:4326'}); //새로운 벡터 생성
        var circle = new Circle(changePoints, 120);  //좌표, 반경 넓이
        var CircleFeature = new Feature(circle); //구조체로 형성
        vectorSource.addFeatures([CircleFeature]); // 벡터소스에 추가

        var vectorLayer =new VectorLayer({  //추가할 벡터레이어
          source: vectorSource,
          style: [
          new Style({
              stroke: new Stroke({   //두께
                  color: 'rgba( 240, 79, 79 ,0.9)',
                  width: 2
              }),
              fill: new Fill({  //채우기
                  color: 'rgba( 255, 133, 133 ,0.5)'
              }),
              text : new Text({  //텍스트
                text: 'Here!',
                textAlign: 'center',
                font: '15px roboto,sans-serif'            
              })
          })]
        });
        {clickProps && map.addLayer(vectorLayer)}
        // map.addLayer(vectorLayer); //만들어진 벡터를 추가

        setMapObject({ map })
        return () => map.setTarget(undefined); // id 지정하지 않은 곳
    }, [clickProps]) // clickProps 변경되면 리렌더링

    
    return (
      <>
        {/*<div id="map" value={mapObject} style={{height:'50rem'}}></div> 
        <div>
          <button 
          onClick={() =>{
            setClickProps(true);
          }}
          style={{zIndex: 1005}}
        >
          현재 위치 표시
        </button>
        </div>*/}
      </>


    )
}

export default Map