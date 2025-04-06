
# aihealthcare-development
yashraj  
flutter project

# AI-Health-Care

## 💡 Introduction

**Problem Statement**:  Every year, millions of people face life-threatening emergencies due to the unavailability of blood, with many struggling to find immediate blood donors when time is critical. The lack of a streamlined platform for connecting blood donors and recipients exacerbates this issue, resulting in delays that could cost lives.

**Solution**:  The Blood Donation App is designed to address this critical challenge by connecting blood donors with those in need in real-time. Our app ensures that users can quickly find compatible blood donors in their area, making blood donation more accessible and efficient. Through features like emergency alerts, a live donor map, and a health tracker, the app empowers individuals and communities to contribute to life-saving causes. By fostering a network of donors and creating an easy-to-use platform, we aim to reduce the gap in blood availability, saving lives when it matters the most.
With real-time notifications, instant matching, and a supportive community, the Blood Donation App promotes a safer, healthier society by ensuring that blood is always available when needed.




## ✨ Features
🔹 User-Friendly Interface – Simple and easy-to-use design for everyone.

🔹 Live Blood Availability Map – View nearby donors and blood availability in real time.

🔹 AI-Powered Chatbot – Get instant answers, guidance, and support anytime.

🔹 Emergency Mode – Instantly notify nearby donors during urgent situations.

🔹 Health Tracker – Monitor your health and donation history with ease.

🔹 Smartwatch Integration – Track your health data and donation updates directly from your smartwatch.

🔹 Multi-Language Support – Use the app in your preferred language for a smooth experience.

🔹 Community & Recognition – Join a supportive donor community and earn badges and rewards for your contributions.


## Intro To AI-Health-Care Video

[![Intro To Ai health care](https://i.imghippo.com/files/fTnl6839vIo.png)
](https://youtu.be/w6ruuZAm0KI?si=9ZzUFIkJWMKaTi2j)


### Our Target SDG Goals 🎯

AI-Health-Care App is a life-saving Android application designed to revolutionize how we connect blood donors with those in urgent need. Our mission is to eliminate delays in blood availability, ensuring that every life is protected during critical moments. By fostering a community of regular donors and offering real-time access to blood resources, we aim to make the donation process seamless, efficient, and impactful. This initiative aligns with the United Nations Sustainable Development Goals, including SDG 3 (Good Health and Well-being), SDG 9 (Industry, Innovation, and Infrastructure), SDG 10 (Reduced Inequalities), and SDG 17 (Partnerships for the Goals), working towards a future where no one has to wait for blood when every second counts.

<p align="center">
<img src="https://i.imghippo.com/files/gwb2810TZU.png" alt="" border="0">
<img src="https://i.imghippo.com/files/fHla3850Q.png" alt="" border="0" width="230" height="225"  style="display: block; margin: 0 auto;">
<img src="https://i.imghippo.com/files/yCxJ4815BpM.png" alt="" border="0">
<img src="https://i.imghippo.com/files/c2364JZ.png" alt="" border="0">
</p>



## 🛠️ Technologies Used
💻 Flutter – For a seamless cross-platform experience.

📱 Android Studio – Android app development.

☁️ Firebase – User authentication & database management.

🌍 Google Cloud – Secure and scalable cloud storage.

🤖 Google AI Studio – AI-powered chatbot integration.

🔗 Google IDX – Efficient coding environment.

🎨 Figma – UI/UX design for a smooth experience.




📊 Flow Diagram
Here’s a simple overview of how the app works:

🚀 How to Contribute?
We welcome contributors! Follow these steps to get started:
1️⃣ Fork the repository 📂
2️⃣ Clone it to your local machine 🖥️
3️⃣ Make changes (fix a bug, add features) ✏️
4️⃣ Commit & Push 🚀
5️⃣ Create a Pull Request and we’ll review it ✅

❤️ Join Us & Save Lives!
Blood donation is an act of kindness that can save millions of lives. Be a part of this mission and make a difference today!





*Architectural Diagram Explanation for Blood Donation App*  
The architecture of the *Blood Donation App* is designed to ensure seamless interaction between users, secure data management, and real-time updates. The system follows a *multi-layered architecture*, including:  

1️⃣ *User Interface (UI) Layer*  
   - Built with *Flutter*, providing a smooth, cross-platform experience for Android and iOS users.  
   - Designed using *Figma* to ensure an intuitive and user-friendly interface.  
   - Includes key screens like *Home, Find Donors, Emergency Requests, Profile, Chat, and Notifications*.  

2️⃣ *Application Layer (Business Logic)*  
   - Handles *user authentication, **real-time notifications, and **data processing*.  
   - Implements *AI Chatbot* (Google AI Studio) for instant assistance.  
   - Manages the *blood request and donor matching logic*.  

3️⃣ *Database & Backend Layer*  
   - *Firebase Authentication*: Manages user login and verification.  
   - *Firebase Firestore*: Stores donor details, blood requests, and user history securely.  
   - *Google Cloud Functions*: Handles automated background tasks (e.g., sending alerts, matching donors).  

4️⃣ *AI & Real-Time Features*  
   - *Google AI Studio*: Powers chatbot for donor inquiries and guidance.  
   - *Google Maps API*: Enables real-time donor location tracking and blood bank mapping.  
   - *Emergency Mode System: Instantly alerts nearby donors in **urgent cases*.  

5️⃣ *Deployment & Hosting*  
   - *Google Cloud Storage*: Secures medical reports and donor details.  
   - *Google IDX*: Provides a cloud-based development environment for collaboration.  
   - *Firebase Hosting*: Ensures fast and reliable hosting for web-based features.  

---

### *Data Flow in the System*  
1. *User Registration/Login* → Secured via *Firebase Authentication*.  
2. *Search for Blood or Donors* → AI chatbot or manual search.  
3. *Blood Request Sent* → System matches the best donors nearby.  
4. *Emergency Mode Activated (if needed)* → Nearby donors get instant alerts.  
5. *Donor Accepts Request* → Secure chat/call initiated.  
6. *Blood Donation Completed* → Records updated in Firebase Firestore.  
7. *Rewards & Recognition* → System updates donor profile.

## 🛳 User Guide

### Snapshot
<table style="width: 100%;">

<tr>
 <td align="center" width="25%">
  <img src="https://i.imghippo.com/files/qyC4024cSE.png" width="120" alt="Converted Image">
    <br>
      <b>Splash Screen</b><br>
      Displays the AI-Health-Care logo upon app launch.
   </td>

     
   <td align="center" width="25%">
       <img src="https://i.imghippo.com/files/FKq7834kgU.png"  width="120" alt="Converted Image"><br>
      <b>Onboarding Screen</b><br>
      Awareness about blood donation.
    </td>

    
 <td align="center" width="25%">
    <img src="https://i.imghippo.com/files/n4804ww.png"    width="120" alt="Converted Image">
    <br>
      <b>Log In or Sign Up.</b><br>
User can log in to access their account. Don't have an account? Sign up.
    </td>

    
 <td align="center" width="25%">
    <img src="https://i.imghippo.com/files/QiGk6951kck.png"   width="120" alt="Converted Image"><br>
      <b>Log in Screen</b><br>
     Login with your email or continue with Google.
    </td>
    </tr>



 
 <tr> 
 <td align="center" width="25%">
     <img src="https://i.imghippo.com/files/pEmj1419HjI.png"   width="120" alt="Converted Image"><br>   
  <b>Sign up Screen.</b><br>
     Create an account with your email or sign up using Google.
    </td>
  
 <td align="center" width="25%">
    <img src="https://i.imghippo.com/files/xf1886KHg.png"   width="120" alt="Converted Image"><br>
 <b>User Information Screen.</b><br>
     Next, add your information to get started.
   
 <td align="center" width="25%">
  <img src="https://i.imghippo.com/files/IdJ8437c.png"   width="120" alt="Converted Image"> <br>
 <b>Home Screen</b><br>
     Lists nearby blood donation centers where blood is available for those in need.</td>
    
    
   <td align="center" width="25%">
      <img src="https://i.imghippo.com/files/alam5825ye.png"  width="120" alt="Converted Image"><br>
       <b>ChatBot Welcome Screen</b><br>
    The user gets instant AI assistance and support.</td>
      </tr>





 <tr>
    <td align="center" width="25%">
<img src="https://i.imghippo.com/files/Wit9704ZZQ.png" width="120" alt="Converted Image">
    <br>
      <b>Chatbot Screen</b><br>
     The user can ask questions to the AI assistant and receive quick.
   </td>
     
   <td align="center" width="25%">
      <img src="https://i.imghippo.com/files/JPon7251ZqQ.png"   width="120" alt="Converted Image"><br>
      <b>Chatbot Screen</b><br>
     AI assistant can easily solve user questions and provide quick, accurate responses.
    </td>
    
<td align="center" width="25%">
    <img src="https://i.imghippo.com/files/nUl7702JbM.png"   width="120" alt="Converted Image"><br>   
  <b>Donors Screen.</b><br>
    Users can easily search for blood donors by selecting their required blood group.
    </td>
    <td align="center" width="25%">
  <img src="https://i.imghippo.com/files/Ll9793Qw.png"   width="120" alt="Converted Image">
    <br>
      <b>Real-Time Map</b><br>
User find available blood and connect with donors instantly.
    </td>

   </tr>






   
<tr>
    
 <td align="center" width="25%">
 <img src="https://i.imghippo.com/files/e3766LAg.png"   width="120" alt="Converted Image"><br>
 <b>Emergency Mode Screen</b><br>
     Quickly request blood from nearby donors and hospitals in urgent situations.

 <td align="center" width="25%">
<img src="https://i.imghippo.com/files/QC4396eWU.png"     width="120" alt="Converted Image"> <br>
 <b>Send Blood Request</b><br>
    Give permission to share your profile, Continue this.</td>
    <td align="center" width="25%">
    <img src="https://i.imghippo.com/files/Wst1939Wqo.png"  width="120" alt="Converted Image"><br>
      <b>User History Screen</b><br>
    User can view their blood donation history and hospital visits easily.
    </td>
     <td align="center" width="25%">
   <img src="https://i.imghippo.com/files/UIl5458hg.png"width="120" alt="Converted Image"><br>   
  <b>User Profile Screen </b><br>
    A user profile  where users can add their personal information as per their convenience.
    </td>    
   </tr>







<tr>

 <td align="center" width="25%">
    <img src="https://i.imghippo.com/files/G8806vA.png"     width="120" alt="Converted Image"><br>   
  <b>Smartwatch screen </b><br>
    User can track health data by connecting their smartwatch.
    </td>   

      
 <td align="center" width="25%">
<img src="https://i.imghippo.com/files/Gv2285vv.png"    width="120" alt="Converted Image"> <br>
 <b> AI-powered Screen</b><br>
    Smartwatch AI-powered  User can track their live health status using real-time data for quick and accurate updates.</td>
    
    
 <td align="center" width="25%">
<img src="https://i.imghippo.com/files/sm4521pmw.png"   width="120" alt="Converted Image"> <br>
 <b> Multiple languages Screen</b><br>
  This app supports multiple languages, making it easy and comfortable for everyone to use.</td>

   <td align="center" width="25%">
<img src="https://i.imghippo.com/files/MAa1681WI.png" width="120" alt="Converted Image"><br>
       <b>Guidance screenn</b><br>
 If the user is unsure how to use the app, a step-by-step guide is available to help.</td>
   </tr>
</table>



# Hello, we are AITRONICS!
## 🤝 Contributors
We are the core team of AI-Health-Care , from Deogiri Institute of Engineering and Management Studies, Chh. Sambhajinagar.

