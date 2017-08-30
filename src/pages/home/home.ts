import {OnInit} from '@angular/core';
import {Component} from '@angular/core';
import {NavController} from 'ionic-angular';

@Component({
    selector: 'page-home',
    templateUrl: 'home.html'
})
export class HomePage  implements OnInit {
    constructor(private navCtrl: NavController) {
        console.log('1. constructor init');
    }

    public ngOnInit(): void {
        console.log('2. angular ngOnInit()');
    }

    public ionViewDidLoad() {
        console.log('3. ionic view loaded ionViewDidLoad()');
    }
}
