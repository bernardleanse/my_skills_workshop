# Domain modelling

1. Understand why we would use multiple objects in our programs
2. Understand how diagramming could support our understanding of a problem
3. Use diagramming as a technique to inform how we might design our program before
writing code

Given these user stories:

```
As a coach,
So that I know who I am coaching,
I would like to record students names
```
```
As a coach,
So that I can track attendance,
I would like a student to be able to sign in and sign out
```
```
As a coach,
So that I can deliver the course,
I would like to add a student to the cohort
```
```
As a coach,
So that I can see who is in my cohort,
I would like to see a list of students in the cohort
```
```
As a coach,
So that I know how many students are in,
I would like a count of how many students are signed in
```

Let's talk about how we could go about deciding our domain model for these requirements.

### Exercise 1

Taking a look at these user stories:

What would a domain diagram for these user stories look like?

```
As a librarian
So that the public can know which books we have on offer
I would like a book to have a title and an author
```

```
As a librarian
So that I can properly represent the books we have
I would like to add a book to the library
```

```
As a librarian
So that the public knows all the books in the library
I would like to list all books in the library
```

```
As a librarian
So that I can know if a book needs to be replaced
I would like to be able to mark a book as damaged
```

```
As a librarian
So that I know how many books need to be replaced
I would like to count how many books are damaged in the library
```

```
As a librarian
So that the public know what books titles are written by their favourite author
I would like the library to list all book titles by a specific author
```

### Exercise 2

An example implementation of our domain diagram for our cohort/student problem could be.
Try running the code in irb.
Using irb, can you use to code to make sure each user story is implemented?
How closely does this code follow the domain model that was created?

```
class Student
   def initialize(name)
      @name = name
      @on_site=false
   end

   def sign_in
     @on_site = true
     return
   end

   def sign_out
     @on_site = false
     return
   end  

   def on_site?
     @on_site
   end
end
```

```
class Cohort
  def initialize
     @students = []
  end

  def add(student)
      @students.push(student)
  end

  def students
     @students
  end

  def count_of_signed_in_students
    @students.select { |student| student.on_site? }.count
  end
end    
```

### Follow on
Some activities that may help you practise this skill could be to:
- Have a go at writing the code and manually testing the library/book example (you may find the starter code below helpful)
- Have a go at writing tests in rspec. If you want to focus on TDD, you can delete the code and test drive the program
- Stretch - Have a go at isolating your tests between book and library

```
class Book
  def initialize(name, author)
    @title = name
    @author = author
  end  
end
```
```
class Library
   def initialize
      @books = []
   end

   def list_titles_by(author)
   end
end
```

<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=skills-workshops&prefill_File=object_oriented_programming/domain_modelling_alternative/README.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=skills-workshops&prefill_File=object_oriented_programming/domain_modelling_alternative/README.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=skills-workshops&prefill_File=object_oriented_programming/domain_modelling_alternative/README.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=skills-workshops&prefill_File=object_oriented_programming/domain_modelling_alternative/README.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=skills-workshops&prefill_File=object_oriented_programming/domain_modelling_alternative/README.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
