import {ErrorHandler} from '@angular/core';
import {IonicErrorHandler} from 'ionic-angular';
import {Platform} from 'ionic-angular';
import {StatusBar} from '@ionic-native/status-bar';
import {SplashScreen} from '@ionic-native/splash-screen';

export class AppProviders {
    public static getProviders() {
        let providers = [];

        providers.push(StatusBar);
        providers.push(SplashScreen);
        providers.push({provide: ErrorHandler, useClass: IonicErrorHandler});

        const platform: Platform = new Platform();

        // Browser
        if (!platform.is('cordova')) {
        }
        // Device
        else {
        }

        return providers;
    }
}