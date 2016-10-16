import { Component } from '@angular/core';
import { NavController } from 'ionic-angular';

import { Activity } from '../../models/activity';

import { ActivityProvider } from '../../providers/activity-provider';

@Component({
  selector: 'page-home',
  templateUrl: 'home.html'
})
export class HomePage {
  activities: Activity[]

  constructor(public navCtrl: NavController, private activityProvider: ActivityProvider) {
    activityProvider.load().subscribe(activities => {
      console.log(activities);
      this.activities = activities;
    })
    
  }

}
