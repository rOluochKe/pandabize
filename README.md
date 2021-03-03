# Pandabize Web Shop API

- RUBY on RAILS
- PostgreSQL
- api
- RSpec
- Caching
- Pagination

## Usage

> Clone the repository to your local machine

```
$ git clone git@github.com:rOluochKe/pandabize.git
```

> cd into the directory

```
$ cd pandabize
```

> Then install the needed gems (while skipping any gems needed only in production):

```
$ bundle install
```

> Create database, run 

```
$ rails db:create
```

> Next, migrate the database:

```
$ rails db:migrate
```

> Seed the database with data, run

```
$ rails db:seed
```

> Test, run test with RSpec:

```
$ rspec
```

> Finally, you'll be ready to run the app api in a local server:

```
$ rails s -p 3001
```

## End Points
### Bicycles
- [GET] Getting all the records -> http://localhost:3001/api/v1/bicycles 
- [GET] Getting single record -> http://localhost:3001/api/v1/bicycles/1
- [POST] Create a new single record -> http://localhost:3001/api/v1/bicycles
- [PUT] Update an existing single record -> http://localhost:3001/api/v1/bicycles/id
- [DELETE] Delete an existing single record -> http://localhost:3001/api/v1/bicycles/id

### Orders
- [GET] Displaying total orders -> http://localhost:3001/api/v1/orders


## Designed and developed by

[Raymond Oluoch](https://github.com/rOluochKe)

## Contributing

1. Fork it (git clone git@github.com:rOluochKe/pandabize.git/fork)
2. Create your feature branch (git checkout -b feature/[choose-a-name])
3. Commit your changes (git commit -am 'What this commit will fix/add')
4. Push to the branch (git push origin feature/[chosen name])
5. Create a new Pull Request

## License

This project is licensed under the MIT License - see the [LICENSE](./LICENSE.md) file for details.