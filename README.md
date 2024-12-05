# README

This project is built in the latest ruby and rails. A simple `bundle install` and `rails s` should get you started!

This is a proof of concept implementation of import functionality, using the test csv provided. If I had more time, I would do the following:
- Allow an end user to upload a csv document, rather than hard coding
- Break up the file into chunks for scalability. I chose SmarterCSV, rather than ruby's built-in csv library with an eye toward its bulk uploading functionality
- Move the import to ActiveJob and parallelize using Sidekiq
- Add better error handling so that import can proceed even if one row is malformed. Store the failed rows so that they can be corrected by the end user.
- Configure more robust database such as postgres