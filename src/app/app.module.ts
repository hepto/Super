import { NgModule } from '@angular/core';
import { IonicApp, IonicModule } from 'ionic-angular';
import { SuperPlusPlus } from './app.component';
import { HomePage } from '../pages/home/home';

@NgModule({
  declarations: [
    SuperPlusPlus,
    HomePage
  ],
  imports: [
    IonicModule.forRoot(SuperPlusPlus)
  ],
  bootstrap: [IonicApp],
  entryComponents: [
    SuperPlusPlus,
    HomePage
  ],
  providers: []
})
export class AppModule {}
