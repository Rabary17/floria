import { NgModule } from '@angular/core';

import {
  MatFormFieldModule,
  MatSliderModule,
  MatSelectModule,
  MatSidenavModule,
  MatListModule,
  MatGridListModule,
  MatStepperModule,
  MatButtonModule,
  MatCardModule,

} from '@angular/material';

@NgModule({
  imports: [
    MatFormFieldModule,
    MatSelectModule,
    MatSidenavModule,
    MatListModule,
    MatGridListModule,
    MatStepperModule,
    MatSliderModule,
    MatButtonModule,
    MatCardModule,
  ],
  exports: [
    MatFormFieldModule,
    MatSelectModule,
    MatSidenavModule,
    MatListModule,
    MatGridListModule,
    MatStepperModule,
    MatSliderModule,
    MatButtonModule,
    MatCardModule,
  ]
})
export class MaterialModule {}
