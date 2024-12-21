# Donation-App

Donation-App is a platform designed to facilitate donations for various causes and organizations. This application allows users to view ongoing campaigns, make donations, and track their contribution history.

## Features

- **User Authentication**: Secure user registration and login functionality.
- **Campaign Listings**: Browse and search for active donation campaigns.
- **Donations**: Easily donate to desired campaigns using various payment methods.
- **Donation History**: View and manage donation history.
- **Admin Dashboard**: Manage campaigns, users, and donations.

## Technologies Used

- **Frontend**: JSP, JavaScript, HTML5, CSS3
- **Backend**: Java, JSP, Servlets
- **Database**: MySQL
- **Application Server**: Apache Tomcat
- **Payments**: Stripe API

## Installation

1. **Clone the repository**:
    ```bash
    git clone https://github.com/your-username/Donation-App.git
    ```

2. **Navigate to the project directory**:
    ```bash
    cd Donation-App
    ```

3. **Configure the MySQL database**:
    - Create a database named `donation_app`.
    - Import the provided SQL script to set up the database schema and initial data.
    ```bash
    mysql -u your_username -p donation_app < path/to/your_sql_script.sql
    ```

4. **Update the database configuration in the project**:
    - Update the database connection details in `db.properties` or the equivalent configuration file.

5. **Deploy the application on Apache Tomcat**:
    - Copy the `Donation-App` project directory to the `webapps` directory of your Tomcat installation.
    - Start the Tomcat server.

## Usage

1. **Start the Tomcat server**:
    - Navigate to the `bin` directory of your Tomcat installation.
    ```bash
    ./startup.sh
    ```

2. **Open your web browser** and navigate to `http://localhost:8080/Donation-App` to view the application.

## Configuration

### Environment Variables

Ensure that the following environment variables are set for the application to connect to the database and payment gateway:

```plaintext
DB_URL=jdbc:mysql://localhost:3306/donation_app
DB_USERNAME=your_db_username
DB_PASSWORD=your_db_password
STRIPE_SECRET_KEY=your_stripe_secret_key
