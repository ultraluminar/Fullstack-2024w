import { Routes } from '@angular/router';
import { LoginComponent } from './login/login.component';
import { RegisterComponent } from './register/register.component';

export const routes: Routes = [
    { path: 'anmelden', component: LoginComponent },
    { path: 'registrieren', component: RegisterComponent }
];
