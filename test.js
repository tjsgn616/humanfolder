
function jarisu(Num){
    console.log("input:"+Num);
    let answer = 0;
    while(true){
        Num = Math.floor(Num/10);
        answer = answer+1;
        if(Num== 0){
            console.log(answer+"자리 숫자임")
            break}
    }
    
};

jarisu(102324);