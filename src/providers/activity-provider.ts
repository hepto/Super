import { Injectable } from '@angular/core';
import { Http } from '@angular/http';
import { Observable } from 'rxjs/Rx';
import 'rxjs/add/operator/map';

import { Activity } from '../models/activity';

/*
  Generated class for the ActivityProvider provider.

  See https://angular.io/docs/ts/latest/guide/dependency-injection.html
  for more info on providers and Angular 2 DI.
*/
@Injectable()
export class ActivityProvider {
  activityUrl = '/assets/activities.json';

  constructor(public http: Http) { }

  load(): Observable<Activity[]> {
    return this.http.get(`${this.activityUrl}`).map(res => <Activity[]>res.json());
  }

}
