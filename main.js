const addBtn = document.getElementsByClassName('add-button')[0];
const loginBtn = document.getElementsByClassName('login-button')[0];

let taskNum = 0;
// TO-do
// add랑 complete(modify작업 끝), finished, removed 등 버튼 눌렀을 때 서버로 할 일/한 일 목록 전송
/**
 * CRUD 작업시 -> 서버에 반영, 바뀐 점은 post로 서버로 전송
 */

/**
 * 할 일 추가 버튼
 */
addBtn.addEventListener('click', ()=>{
    const tl = document.getElementsByClassName('task-list')[0];
    const screen = document.getElementsByClassName('screen')[0];
    const top = document.getElementsByClassName('top')[0];
    const bottom = document.getElementsByClassName('bottom')[0];

    // console.log(tl);
    taskNum++;
    tl.innerHTML = tl.innerHTML + `
    <div class="task">
        <input type="checkbox" class="checkbox" name="task" onclick="completeTask(this.parentNode)">
        <input type="text" class="text" value="할 일 ${taskNum}" onchange="" disabled>
        <div class="taskbtn">
            <input type="button" value="modify" class="modify" onclick="modify(this.parentNode.parentNode)">
            <input type="button" value="remove" class="remove" onclick="removeTask(this.parentNode.parentNode)">
        </div>
        

    </div>
    `;

    // screen.height = top.height + bottom.height;
});
/**
 * 로그인 버튼
 */
loginBtn.addEventListener('click', ()=>{
    const tl = document.getElementsByClassName('task-list')[0];
    console.log(tl);
});

/**
 * 값 수정하는 function
 */
function modify(task){
    // console.log(task.parentNode.childNodes);
    const modifyBtn = task.childNodes[5];
    const textBox = task.childNodes[3];
    if(textBox.disabled){
        modifyBtn.value = 'complete';
    }else{
        modifyBtn.value = 'modify';
    }
    textBox.disabled = !textBox.disabled;
    console.log(task, task.childNodes, task.childNodes[3], task.childNodes[3].value, textBox.value);
    textBox.value = textBox.value;
}
/**
 * 할 일 끝냈을 때 함수
 */
const completeTask = function(task){
    // const 
}

/**
 * 할 일 제거 함수
 */
const removeTask = function(task){

}

const test = function(){
    alert('test');
}