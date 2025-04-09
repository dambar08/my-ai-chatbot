import { Storage } from '~/utils';
import i18n from "i18next";
import detector from "i18next-browser-languagedetector";
import backend from "i18next-http-backend";
import { initReactI18next, } from "react-i18next";

i18n
  .use(detector)
  .use(backend)
  .use(initReactI18next) // passes i18n down to react-i18next
  .init({
    fallbackLng: "en",
    keySeparator: false,
    interpolation: {
      escapeValue: false
    }
  });

export const languages: any = {
  en: { name: 'English' },
  'zh-tw': { name: '繁體中文' },
};

export const locales = Object.keys(languages).sort();

export const registerLocale = () => {
  i18n.changeLanguage(Storage.session.get('locale', 'en'));
};


export default i18n;