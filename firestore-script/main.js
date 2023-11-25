"use strict";
var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    function adopt(value) { return value instanceof P ? value : new P(function (resolve) { resolve(value); }); }
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : adopt(result.value).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
Object.defineProperty(exports, "__esModule", { value: true });
const firestore_1 = require("firebase/firestore");
// Import the functions you need from the SDKs you need
const app_1 = require("firebase/app");
// TODO: Add SDKs for Firebase products that you want to use
// https://firebase.google.com/docs/web/setup#available-libraries
const contents_1 = require("./contents");
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
const app = (0, app_1.initializeApp)(firebaseConfig);
// Initialize Cloud Firestore and get a reference to the service
const db = (0, firestore_1.getFirestore)(app);
contents_1.Contents.forEach((content) => __awaiter(void 0, void 0, void 0, function* () {
    yield (0, firestore_1.addDoc)((0, firestore_1.collection)(db, "contents"), content);
}));
// // Add a new document with a generated id.
// const docRef = await addDoc(collection(db, "contents"), {
//   name: "Tokyo",
//   country: "Japan",
// });
// console.log("Document written with ID: ", docRef.id);
