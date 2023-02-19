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
import VectorSource  from 'ol/source/Vector.js';
import point from 'ol/geom/Point';
import Overlay from 'ol/Overlay.js';

function Map(props){
    const { setMapObject, clickProps, clickOverLayProps } = props;

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
                zoom: 14
            })
        })
        console.log(clickProps);
        let pnt = new point([126.9714, 37.5539]).transform('EPSG:4326', 'EPSG:3857');  //위경도를 오픈레이어스에서 사용중인 값으로 변환
        let changePoints = pnt.getCoordinates();
        let vectorSource = new VectorSource({projection: 'EPSG:4326'}); //새로운 벡터 생성
        let circle = new Circle(changePoints, 120);  //좌표, 반경 넓이
        let CircleFeature = new Feature(circle); //구조체로 형성
        vectorSource.addFeatures([CircleFeature]); // 벡터소스에 추가

        let vectorLayer =new VectorLayer({  //추가할 벡터레이어
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
        let mapView = map.getView();
        {clickProps && mapView.setZoom(16)}
        {clickProps && map.addLayer(vectorLayer)}
        // map.addLayer(vectorLayer); //만들어진 벡터를 추가

        map.on('singleclick', function(evt) {
          let container = document.createElement('div');
          container.classList.add('ol-popup-custom');
          let content = document.createElement('div');
          content.classList.add('popup-content');
          container.appendChild(content);
          document.body.appendChild(container);
          var coordinate = evt.coordinate; // 클릭한 지도 좌표
          content.innerHTML = '<span>' + '클릭한 위치입니다.' + '</span>';
          var overlay = new Overlay({
              element: container,
              //autoPan: true,
              //autoPanAnimation: {
              //  duration: 250
              //}
            });
          map.addOverlay(overlay);
          overlay.setPosition(coordinate);
        })

        // let wrapper = document.createElement('div');
        // let wrap = document.createElement('div');
        // wrapper.appendChild(wrap);
        // document.body.appendChild(wrapper);
        // wrap.innerHTML = "<span style={{width:'10px', height: '10px', backgroundColor: 'red', zIndex: 9999}}></span>";

        // const overlayMarker = new Overlay({
        //   position: [126.9714, 37.5539],
        //  // positioning: 'center-center',
        //   element: document.getElementById('overLayDiv'),
        //   //stopEvent: false,
        // })
        // let mapOverlayView = map.getView();

        // {clickOverLayProps && mapOverlayView.setZoom(16)}
        // {clickOverLayProps && map.addOverlay(overlayMarker)}
        // console.log('clickOverLayProps',clickOverLayProps)

        setMapObject({ map })
        return () => map.setTarget(undefined); // id 지정하지 않은 곳
    }, [clickProps, clickOverLayProps]) // clickProps 변경되면 리렌더링

    
    return (
      <div>
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

        {/* <div id="overLayDiv" style={{width:'10px', height: '10px', backgroundColor: 'red'}}></div> */}
      </div>


    )
}

export default Map