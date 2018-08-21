import { NgModule }      from '@angular/core';
import { Pipe, PipeTransform } from '@angular/core';

@Pipe({
  name: 'numberfr'
})

@NgModule({
  imports:[],
})

export class FrenchDecimalPipe implements PipeTransform {

  transform(value: number | string, locale?: string): string {
    return new Intl.NumberFormat(locale, {
      minimumFractionDigits: 0
    }).format(Number(value));
  }
}