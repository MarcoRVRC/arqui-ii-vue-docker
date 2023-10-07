import axios from "axios";

var instancia = axios.create({
    baseURL: 'https://servicios.neuapp.com/api/tienda',
    timeout: 3000
})

export function apiProducts(){
    return instancia.get('/productos/lista/')
}



