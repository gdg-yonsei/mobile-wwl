import { getFirestore, collection, addDoc } from "firebase/firestore";
// Import the functions you need from the SDKs you need
import { initializeApp } from "firebase/app";
// TODO: Add SDKs for Firebase products that you want to use
// https://firebase.google.com/docs/web/setup#available-libraries

import { Contents } from "./contents";

// Your web app's Firebase configuration
const firebaseConfig = {
  apiKey: "AIzaSyBcxELlD8-slqouUOxvt9pcyaJ4J2Lh9kQ",
  authDomain: "disneyplusclone-52e54.firebaseapp.com",
  projectId: "disneyplusclone-52e54",
  storageBucket: "disneyplusclone-52e54.appspot.com",
  messagingSenderId: "619308581123",
  appId: "1:619308581123:web:c6ee32e76c663f5ae96936",
};

// Initialize Firebase
const app = initializeApp(firebaseConfig);

// Initialize Cloud Firestore and get a reference to the service
const db = getFirestore(app);

Contents.forEach(async (content) => {
  await addDoc(collection(db, "contents"), content);
});

// // Add a new document with a generated id.
// const docRef = await addDoc(collection(db, "contents"), {
//   name: "Tokyo",
//   country: "Japan",
// });
// console.log("Document written with ID: ", docRef.id);
