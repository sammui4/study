//对请求data进行格式化处理
function formateData(data) {
    let arr = [];
    for (let key in data) {
        //避免有&,=,?字符，对这些字符进行序列化
        arr.push(encodeURIComponent(key) + '=' + data[key])
    }
    return arr.join('&');
}

function ajax(params) {
    //先对params进行处理，防止为空
    params = params || {};
    params.data = params.data || {};

    //普通GET,POST请求
    params.type = (params.type || 'GET').toUpperCase();
    params.data = formateData(params.data);
    //如果是在ie6浏览器，那么XMLHttoRequest是不存在的，应该调用ActiveXObject；
    let xhr = XMLHttpRequest ? new XMLHttpRequest() : new ActiveXObject('Microsoft.XMLHTTP');
    if (params.type === 'GET') {
        xhr.open(params.type, params.url + '?' + params.data, true);
        xhr.send();
    } else {
        xhr.open(params.type, params.url, true);
        xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded")
        xhr.send(params.data);
    }
    // 这里有两种写法，第一种写法：当xhr.readyState===4的时候，会触发onload事件，直接通过onload事件 进行回调函数处理
    xhr.onload = function () {
        if (xhr.status === 200 || xhr.status === 304 || xhr.status === 206) {
            var res;

            if (params.success && params.success instanceof Function) {
                res = JSON.parse(xhr.responseText);
                params.success.call(xhr, res);
            }
        } else {
            if (params.error && params.error instanceof Function) {
                res = xhr.responseText;
                params.error.call(xhr, res);
            }
        }

    }
    //第二种写法，当xhr.readyState===4时候，说明请求成功返回了，进行成功回调
    xhr.onreadystatechange = function () {
        if (xhr.readyState === 4) {
            // 进行onload里面的处理函数
        }
    }

}