import service from "../utils/request";

export function ListAllFilm() {
    return service({
        url: '/film',
        method: 'get'
    })
}

export function DeleteById(id){
    return service({
        url: '/film/' + id,
        method: 'delete'
    })
}

export function AddFilm(data){
    return service({
        url: '/film',
        method: 'post',
        data: data
    })
}

export function UpdateFilm(data){
    return service({
        url: '/film',
        method: 'put',
        data: data
    })
}

export function AddArrangement(data){
    return service({
        url: '/arrangement',
        method: 'post',
        data: data
    })
}

export function UpdateArrangement(data){
    return service({
        url: '/arrangement',
        method: 'put',
        data: data
    })
}

export function FindAllArrangement(){
    return service({
        url: '/arrangement',
        method: 'get'
    })
}

export function DeleteArrangement(id){
    return service({
        url: '/arrangement?id=' + id,
        method: 'delete'
    })
}