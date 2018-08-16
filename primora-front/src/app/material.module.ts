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
  MatInputModule,
  MatIconModule,
  MatSlideToggleModule,
  MatProgressBarModule,
  MatMenuModule
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
    MatInputModule,
    MatIconModule,
    MatSlideToggleModule,
    MatProgressBarModule,
    MatMenuModule,
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
    MatInputModule,
    MatIconModule,
    MatSlideToggleModule,
    MatProgressBarModule,
    MatMenuModule
  ]
})
export class MaterialModule {}
