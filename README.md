# BOOKMARK MANAGER
```
As a User,
So that I can see what websites I have visited
I want to see a list of bookmarks.
```

Objects:
* Bookmark
	* Add
	* Display
	* Delete
	* Filter
	* Categories
	* Update
	* Comment

```
As a time-pressed user
So that I can save a website
I would like to add the site's address and title to bookmark manager.
```

## INSTRUCTIONS FOR THE USE OF SQL:

1. Connect to psql in the terminal

```
$ psql
```
2. Create the database using the psql command

```
CREATE DATABASE bookmark_manager
```
3. Connect to the database using the pqsl command

```
\c bookmark_manager
```

4. To set up the appropriate tables, connect to the database in `psql` and run the SQL scripts in the `db/migrations` folder in the given order.

```
CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, url VARCHAR(60));
```

5. To create the test database run

```
CREATE DATABASE "bookmark_manager_test";
```

6. To create the bookmarks table within this database run

```
CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, url VARCHAR(60));
```

### To run the Bookmark Manager app:

```
$ shotgun
```

### To view bookmarks, navigate to `localhost:9393/bookmarks`.

### To run tests:

```
$ rspec
```

### To run linting:

```
rubocop
```
