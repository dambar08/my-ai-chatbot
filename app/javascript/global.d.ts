import { Application } from '@hotwired/stimulus';

declare global {
  interface Window {
    // Define Stimulus as an optional property, since it might not be set immediately
    Stimulus?: Application;
  }
}

declare const VERSION: string;
declare const SERVER_API_URL: string;
declare const DEVELOPMENT: string;
declare const I18N_HASH: string;

declare module '*.json' {
  const value: any;
  export default value;
}


// This empty export ensures the file is treated as a module.
export {};