import { onLCP, onINP, onCLS, onFCP, onTTFB } from "web-vitals";

const reportWebVitals = () => {
  try {
    onCLS(console.log);
    onFCP(console.log);
    onLCP(console.log);
    onINP(console.log);
    onTTFB(console.log);
  } catch (error) {
    console.error("Error in web vitals reporting:", error);
  }
};

export default reportWebVitals;
