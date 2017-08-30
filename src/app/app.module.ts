import {NgModule} from '@angular/core';
import {IonicApp, IonicModule} from 'ionic-angular';
import {AppProviders} from './app.providers';
import {MyApp} from './app.component';
import {HomePage} from '../pages/home/home';

//
// sets up application dependencies.
//
@NgModule({
    declarations: [
        MyApp,
        HomePage
    ],
    imports: [
        IonicModule.forRoot(MyApp)
    ],
    bootstrap: [IonicApp],
    entryComponents: [
        MyApp,
        HomePage
    ],
    providers: AppProviders.getProviders()
})
export class AppModule {
}
