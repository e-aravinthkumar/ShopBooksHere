# ShopBooksHere

A basic online bookshop platform built using Angular for the frontend and Express.js for the backend.

## Current Features
✅ Home Page  
✅ Books List Page  
✅ Book Details Page  
✅ Add Book Page  
✅ Edit Book Page  
✅ Manage Books Page  
✅ Page Not Found  

## Future Enhancements
🚀 User Authentication  
🚀 Shopping Cart  
🚀 Payment Integration  
🚀 Improved UI  

## Technologies Used
- **Frontend:** Angular  
- **Backend:** Express.js, Node.js  
- **Database:** MySQL (via XAMPP)  
- **Version Control:** Git & GitHub  

---

## Setup Instructions  

### Prerequisites  
Before setting up the project, ensure you have the following installed:  
1. [Node.js](https://nodejs.org/) (LTS recommended)  
2. [Angular CLI](https://angular.io/cli)  
3. [XAMPP](https://www.apachefriends.org/) (For MySQL & Apache)  
4. Git ([Download Git](https://git-scm.com/))  

---

### Clone the Repository  
Open **Command Prompt (cmd)** or **PowerShell**, then run:  

```sh
git clone https://github.com/your-username/ShopBooksHere.git
cd ShopBooksHere
```

---

### Install Dependencies  

#### Backend (Express.js)
```sh
cd backend
npm install
```

#### Frontend (Angular)
```sh
cd ../frontend
npm install
```

---

### Database Setup (MySQL with XAMPP)

#### Import the Database
1. Start **XAMPP** and enable **Apache & MySQL**.
2. Open [phpMyAdmin](http://localhost/phpmyadmin/).
3. Click **New**, enter database name as `bookshop` (or the correct name), and click **Create**.
4. Click on the **Import** tab.
5. Click **Choose File** and select `database/bookshop.sql`.
6. Click **Go** to import the database.
7. Database setup is complete!

---

### Run the Project  

#### Start the Backend Server
```sh
cd backend
npm start
```
Backend should now be running at **http://localhost:3000/**.  

#### Start the Frontend
```sh
cd frontend
ng serve
```
Frontend should now be available at **http://localhost:4200/**.  

---

## Project Structure  

```
ShopBooksHere/
│-- backend/        # Express.js API (Node.js backend)
│   ├── app.js      # Main backend entry file
│-- frontend/       # Angular frontend
│   ├── src/
│   ├── angular.json
│   ├── package.json
│-- database/       # SQL scripts (if available)
│-- README.md       # Documentation
```

---

## How to Contribute  
1. Fork the repository.  
2. Create a new branch:  
   ```sh
   git checkout -b feature-name
   ```
3. Make changes and commit:  
   ```sh
   git commit -m "Added new feature"
   ```
4. Push the branch:  
   ```sh
   git push origin feature-name
   ```
5. Open a **Pull Request** on GitHub.  


### Need Help?  
If you have any issues setting up or running the project, feel free to open an **issue** on GitHub!  
