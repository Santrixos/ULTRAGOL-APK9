// Import the functions you need from the SDKs you need
import { initializeApp } from "https://www.gstatic.com/firebasejs/11.1.0/firebase-app.js";
import { getFirestore, collection, addDoc, getDocs, query, where } from "https://www.gstatic.com/firebasejs/11.1.0/firebase-firestore.js";

// Your web app's Firebase configuration
const firebaseConfig = {
  apiKey: "AIzaSyDhbKz2_example_key_replace_with_real",
  authDomain: "ligamx-daf3d.firebaseapp.com",
  projectId: "ligamx-daf3d",
  storageBucket: "ligamx-daf3d.firebasestorage.app",
  messagingSenderId: "437421248316",
  appId: "1:437421248316:web:38e9f436a57389d2c49839",
  measurementId: "G-LKVTFN2463"
};

// Initialize Firebase
const app = initializeApp(firebaseConfig);
const db = getFirestore(app);

// Make available globally
window.firebase = { db, collection, addDoc, getDocs, query, where };