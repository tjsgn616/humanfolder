elenum = 0;
n = 1;
function changeColor(){
    //바꿀 요소를 선택: lorem div 3개
    let ele = document.getElementsByClassName("text");
    let getid = document.getElementById("Lorem2");
    console.log(getid);
    console.log("---------"+n+"번째 실행----------");
    
    
    
    //console.log(ele)
    //console.log(ele[2])
    //console.log(ele[1])
    //console.log(ele[0])
    
    while(true){
        console.log("elenum는"+elenum);
        
        if(ele[elenum].style.color =="pink"){
            elenum+=1;
            console.log(elenum+"번째는 이미 핑크빛");
            
        }
        
        
        else if(ele[elenum].style.color !="pink"){
            ele[elenum].style.color = "pink";
            elenum+=1;
            console.log(elenum+"번째가 바뀌었습니다");
            n=n+1;
            break;
            }
}
    
    
}

function changeManyColor(){
    let ele = document.getElementsByClassName("text");
    for(i=0;i<ele.length;i++){
        ele[i].style.color ="pink";
    }
}