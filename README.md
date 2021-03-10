# Scaffold for social media app with Ruby on Rails

> This is a social media application where a user can sign up for an account and then can;

- Create posts
- Like and comment on posts
- Send friend requests
- Approve or reject friend requests
- See profile

## Built With

- Ruby v2.7.2
- Ruby on Rails v5.2.4
- Rubocop
- Vs Code

## Live Demo

[See Live](https://get-in-touch.herokuapp.com)

## Getting Started

To get a local copy up and running follow these simple example steps.

### Prerequisites

1. Ruby: >=2.7.0
2. Rails: 5.2.4
3. Postgres: >=9.5

### Setup

Install gems with:

```
bundle install
```

Setup database with:

```
   rails db:create
   rails db:migrate
```

### Github Actions

To make sure the linters' checks using Github Actions work properly, you should follow the next steps:

1. On your recently forked repo, enable the GitHub Actions in the Actions tab.
2. Create the `feature/branch` and push.
3. Start working on your milestone as usual.
4. Open a PR from the `feature/branch` when your work is done.

### Usage

Start server with:

```
    rails server
```

Open `http://localhost:3000/` in your browser.

### Run tests

```
    rpsec --format documentation
```

### Deployment

To deploy the app successfully on heroku follow these steps

1. In your main branch run;
   ```
   heroku create
   ```
2. Followed by;
   ```
   git push heroku main
   ```
3. After deployment is successfull, run;
   ```
   heroku run rails db:migrate
   ```

## Authors

😎 **Helcio André**

- GitHub: [@helciodev](https://github.com/helciodev)
- Twitter: [@helcio_bruno](https://twitter.com/helcio_bruno)
- Linkedin: [Helcio Andre](https://www.linkedin.com/in/helcio-andre/)

👤 **Wandji Bertrand**

- GitHub: [@wandji20](https://github.com/wandji20)
- LinkedIn: [Wandji Bertrand](https://www.linkedin.com/in/wandji-bertrand/)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](issues/).

## Show your support

Give a ⭐️ if you like this project!

## 📝 License

[MIT License](./LICENSE)
