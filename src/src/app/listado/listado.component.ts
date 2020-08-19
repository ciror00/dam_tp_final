import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-listado',
  templateUrl: './listado.component.html',
  styleUrls: ['./listado.component.css']
})
export class ListadoComponent implements OnInit {
  nombre:string = 'Ciro E.';
  apellido:string = 'Romero';

  estaHabilitado:boolean=true;

  constructor() { }

  ngOnInit(): void {
  }

  public logConsola(){
    console.log(this.nombre);
    console.log(this.apellido);
  }

  cambiar(){
    this.estaHabilitado=!this.estaHabilitado;
    console.log("Variable"+this.estaHabilitado);
  }

}
