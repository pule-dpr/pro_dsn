import axios from 'axios'
import {baseURL} from '../config'
function getrm(){
    return new Promise(function(resolve,reject){
        axios.get(baseURL+'/index/').then(result=>{
            resolve(result.data);
        });
    });
}
export{getrm}